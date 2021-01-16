#pragma checksum "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza.ComponentsLibrary\Map\Map.razor" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "d0e7041a18d522985f317edf71ecd5c848fbba77"
// <auto-generated/>
#pragma warning disable 1591
namespace BlazingPizza.ComponentsLibrary.Map
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Components;
#line 1 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza.ComponentsLibrary\Map\Map.razor"
using Microsoft.JSInterop;

#line default
#line hidden
    public partial class Map : Microsoft.AspNetCore.Components.ComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
            __builder.OpenElement(0, "div");
            __builder.AddAttribute(1, "id", 
#line 4 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza.ComponentsLibrary\Map\Map.razor"
          elementId

#line default
#line hidden
            );
            __builder.AddAttribute(2, "style", "height: 100%; width: 100%;");
            __builder.CloseElement();
        }
        #pragma warning restore 1998
#line 6 "D:\WorkingFolder\POCs\zips\BlazingPizza\BlazingPizza.ComponentsLibrary\Map\Map.razor"
       
    string elementId = $"map-{Guid.NewGuid().ToString("D")}";
    
    [Parameter]  public double Zoom { get; set; }
    [Parameter]  public List<Marker> Markers { get; set; }

    protected async  Task OnAfterRenderAsync()
    {
        await JSRuntime.InvokeAsync<object>(
            "deliveryMap.showOrUpdate",
            elementId,
            Markers);
    }

#line default
#line hidden
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private IJSRuntime JSRuntime { get; set; }
    }
}
#pragma warning restore 1591
