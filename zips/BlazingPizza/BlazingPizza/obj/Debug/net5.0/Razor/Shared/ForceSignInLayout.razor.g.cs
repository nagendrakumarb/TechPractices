#pragma checksum "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ForceSignInLayout.razor" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "c26a55f87bf532b8dbe4037799d940370a37cde9"
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
    [Microsoft.AspNetCore.Components.LayoutAttribute(typeof(MainLayout))]
    public partial class ForceSignInLayout : LayoutComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
#line 4 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ForceSignInLayout.razor"
 if (UserState.CurrentUser == null) // Retrieving the login state
{
    

#line default
#line hidden
            __builder.AddContent(0, "Loading...");
#line 6 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ForceSignInLayout.razor"
                           
}
else if (UserState.IsLoggedIn)
{
    

#line default
#line hidden
            __builder.AddContent(1, 
#line 10 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ForceSignInLayout.razor"
     Body

#line default
#line hidden
            );
#line 10 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ForceSignInLayout.razor"
         
}
else
{

#line default
#line hidden
            __builder.OpenElement(2, "div");
            __builder.AddAttribute(3, "class", "main");
            __builder.AddMarkupContent(4, "<h2>You\'re signed out</h2>\n        ");
            __builder.AddMarkupContent(5, "<p>To continue, please sign in.</p>\n        ");
            __builder.OpenElement(6, "button");
            __builder.AddAttribute(7, "class", "btn btn-danger");
            __builder.AddAttribute(8, "onclick", Microsoft.AspNetCore.Components.EventCallback.Factory.Create<Microsoft.AspNetCore.Components.Web.MouseEventArgs>(this, 
#line 17 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ForceSignInLayout.razor"
                                                   async () => { await UserState.SignIn(); }

#line default
#line hidden
            ));
            __builder.AddContent(9, "Sign in");
            __builder.CloseElement();
            __builder.CloseElement();
#line 19 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ForceSignInLayout.razor"
}

#line default
#line hidden
        }
        #pragma warning restore 1998
#line 21 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ForceSignInLayout.razor"
       
    [CascadingParameter] UserStateProvider UserState { get; set; }

#line default
#line hidden
    }
}
#pragma warning restore 1591
