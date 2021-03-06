﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Threading.Tasks;
using AutoMapper;
using BlazorTasks.Server.Data;
using BlazorTasks.Server.Filters;
using BlazorTasks.Server.Models;
using BlazorTasks.Server.Repositories;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;

namespace BlazorTasks.Server
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        public void ConfigureServices(IServiceCollection services)
        {
            #region Options
            services.AddOptions();
            services.Configure<DatabaseOptions>(Configuration.GetSection("DatabaseOptions"));
            services.Configure<PagingOptions>(Configuration.GetSection("DefaultPagingOptions"));
            var settings = Configuration.GetSection("DatabaseOptions").Get<DatabaseOptions>();
            #endregion

            services.AddDbContextPool<DatabaseContext>(opt => 
                {
                    opt.UseInMemoryDatabase("blazor_tasks");
                });

            services.AddAutoMapper();

            services.AddCors(options =>
            {
                options.AddPolicy("AllowAll",
                    builder => builder.AllowAnyOrigin()
                    .AllowAnyMethod()
                    .AllowAnyHeader()
                    .AllowCredentials());
            });

            services.AddMvc(opt =>
            {
                opt.Filters.Add(typeof(JsonExceptionFilter));
                opt.Filters.Add(typeof(LinkRewritingFilter));
                
            }).SetCompatibilityVersion(CompatibilityVersion.Version_2_1);

            services.AddScoped<ITaskRepository, TaskRepository>();
            services.AddScoped<ICategoryRepository, CategoryRepository>();
            services.AddScoped<ICommentRepository, CommentRepository>();
        }

        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
            }

            app.UseCors("AllowAll");

            //app.UseHttpsRedirection();
            app.UseMvc();
        }
    }
}
