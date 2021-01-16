// <auto-generated/>
#pragma warning disable 1591
#pragma warning disable 0414
#pragma warning disable 0649
#pragma warning disable 0169

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
#line 3 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ConfigurePizzaDialog.razor"
using Microsoft.AspNetCore.Components.Web;

#line default
#line hidden
    public partial class ConfigurePizzaDialog : Microsoft.AspNetCore.Components.ComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
        }
        #pragma warning restore 1998
#line 61 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza\Shared\ConfigurePizzaDialog.razor"
       
    List<Topping> toppings { get; set; }

    [Parameter] public Pizza Pizza { get; set; }
    [Parameter] public EventCallback OnCancel { get; set; }
    [Parameter] public EventCallback OnConfirm { get; set; }
    [Parameter] public EventCallback OnRemoveTopping { get; set; }

    protected async override Task OnInitializedAsync()
    {
        toppings = await Store.GetToppings();
    }

    void ToppingSelected(ChangeEventArgs e)
    {
        if (int.TryParse((string)e.Value, out var index) && index >= 0)
        {
            AddTopping(toppings[index]);
        }
    }

    void AddTopping(Topping topping)
    {
        if (Pizza.Toppings.Find(pt => pt.Topping == topping) == null)
        {
            Pizza.Toppings.Add(new PizzaTopping() { Topping = topping });
        }
    }

    void RemoveTopping(Topping topping)
    {
        Pizza.Toppings.RemoveAll(pt => pt.Topping == topping);
        StateHasChanged();
    }

#line default
#line hidden
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private IPizzaStore Store { get; set; }
    }
}
#pragma warning restore 1591
