using Microsoft.EntityFrameworkCore;

namespace BlazingPizza.Shared
{
    public class PizzaStoreContext : DbContext
    {
        public PizzaStoreContext()
        {
        }

        public PizzaStoreContext(DbContextOptions options)
            : base(options)
        {
        }

        public DbSet<Order> Orders { get; set; }

        public DbSet<Pizza> Pizzas { get; set; }

        public DbSet<PizzaSpecial> Specials { get; set; }

        public DbSet<Topping> Toppings { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Configuring a many-to-many special -> topping relationship that is friendly for serialisation
            modelBuilder.Entity<PizzaTopping>().HasKey(pst => new { pst.PizzaId, pst.ToppingId });
            modelBuilder.Entity<PizzaTopping>().HasOne<Pizza>().WithMany(ps => ps.Toppings);
            modelBuilder.Entity<PizzaTopping>().HasOne(pst => pst.Topping).WithMany();

            modelBuilder.Entity<Pizza>().Property(ats => ats.OrderId).HasColumnName("OrderId");
            //modelBuilder.Entity<Pizza>().HasOne(p => p.Order).WithMany(p => p.Pizzas);
            //modelBuilder.Entity<Pizza>().ToTable("Pizzas").HasKey(p => p.Id);
            // Inline the Lat-Long pairs in Order rather than having a FK to another table
            //
          //  modelBuilder.HasDefaultSchema("dbo");
            modelBuilder.Entity<Order>().Property(ats => ats.RequestId).HasColumnName("OrderId");
         //   modelBuilder.Entity<Order>().HasMany(p => p.Pizzas).WithOne(p => p.Order);
            modelBuilder.Entity<Order>().ToTable("Orders").HasKey(p=>p.RequestId);

            
            modelBuilder.Entity<Order>().OwnsOne(o => o.DeliveryLocation);
            modelBuilder.Entity<Order>().OwnsOne(o => o.CurrentLocation);
            
            modelBuilder.Entity<Topping>().HasData(SeedData.PizzaToppings);
            modelBuilder.Entity<PizzaSpecial>().HasData(SeedData.PizzaSpecials);
        }
    }
}
