#pragma checksum "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "19fc417949ebe6b5874429bfa5cbe3749ce76438"
// <auto-generated/>
#pragma warning disable 1591
namespace BlazingPizza.Shared
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Components;
#line 1 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using System.Net.Http;

#line default
#line hidden
#line 2 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using Microsoft.AspNetCore.Components.Routing;

#line default
#line hidden
#line 3 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using Microsoft.JSInterop;

#line default
#line hidden
#line 4 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using BlazingPizza;

#line default
#line hidden
#line 5 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using BlazingPizza.Shared;

#line default
#line hidden
#line 6 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using BlazingPizza.ComponentsLibrary;

#line default
#line hidden
#line 7 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using BlazingPizza.ComponentsLibrary.Authentication;

#line default
#line hidden
#line 8 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using BlazingPizza.ComponentsLibrary.Map;

#line default
#line hidden
#line 9 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using Microsoft.EntityFrameworkCore;

#line default
#line hidden
#line 10 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\_Imports.razor"
using Microsoft.AspNetCore.Components.Web;

#line default
#line hidden
    public partial class UserInfo : Microsoft.AspNetCore.Components.ComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
            __builder.OpenElement(0, "div");
            __builder.AddAttribute(1, "class", "user-info");
#line 2 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor"
     if (UserState.CurrentUser == null)
    {
        

#line default
#line hidden
            __builder.AddContent(2, "...");
#line 4 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor"
                        
    }
    else if (UserState.CurrentUser.IsLoggedIn)
    {

#line default
#line hidden
            __builder.AddMarkupContent(3, "<img src=\"img/user.svg\">\n        ");
            __builder.OpenElement(4, "div");
            __builder.OpenElement(5, "span");
            __builder.AddAttribute(6, "class", "username");
            __builder.AddContent(7, 
#line 10 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor"
                                    UserState.CurrentUser.DisplayName

#line default
#line hidden
            );
            __builder.CloseElement();
            __builder.AddMarkupContent(8, "\n            ");
            __builder.OpenElement(9, "span");
            __builder.AddAttribute(10, "class", "sign-out");
            __builder.AddAttribute(11, "onclick", Microsoft.AspNetCore.Components.EventCallback.Factory.Create<Microsoft.AspNetCore.Components.Web.MouseEventArgs>(this, 
#line 12 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor"
                         ( ( )=> UserState.SignOut() )

#line default
#line hidden
            ));
            __builder.AddContent(12, "Sign out");
            __builder.CloseElement();
            __builder.CloseElement();
#line 14 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor"
    }
    else
    {

#line default
#line hidden
            __builder.OpenElement(13, "button");
            __builder.AddAttribute(14, "onclick", Microsoft.AspNetCore.Components.EventCallback.Factory.Create<Microsoft.AspNetCore.Components.Web.MouseEventArgs>(this, 
#line 18 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor"
                          ( ( )=> UserState.SignIn() )

#line default
#line hidden
            ));
            __builder.AddAttribute(15, "class", "sign-in");
            __builder.AddContent(16, "Sign in");
            __builder.CloseElement();
#line 19 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor"
    }

#line default
#line hidden
            __builder.CloseElement();
        }
        #pragma warning restore 1998
#line 22 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\UserInfo.razor"
       
    [CascadingParameter] UserStateProvider UserState { get; set; }

#line default
#line hidden
    }
}
#pragma warning restore 1591
