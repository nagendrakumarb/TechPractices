#pragma checksum "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "d17ade0f5cffd0865b24d4011fa0fdf043cc699b"
// <auto-generated/>
#pragma warning disable 1591
namespace BlazorWebComponents.Shared
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Components;
#nullable restore
#line 1 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using System.Net.Http;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using System.Linq;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using Microsoft.AspNetCore.Components.Forms;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using Microsoft.AspNetCore.Components.Routing;

#line default
#line hidden
#nullable disable
#nullable restore
#line 5 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using Microsoft.AspNetCore.Components.Web;

#line default
#line hidden
#nullable disable
#nullable restore
#line 6 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using Microsoft.JSInterop;

#line default
#line hidden
#nullable disable
#nullable restore
#line 7 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using BlazorWebComponents;

#line default
#line hidden
#nullable disable
#nullable restore
#line 8 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using BlazorWebComponents.Shared;

#line default
#line hidden
#nullable disable
#nullable restore
#line 9 "D:\POCs\blazorangular\blazor-webcomponents-demo\_Imports.razor"
using MatBlazor;

#line default
#line hidden
#nullable disable
    public partial class MainLayout : LayoutComponentBase
    {
        #pragma warning disable 1998
        protected override void BuildRenderTree(Microsoft.AspNetCore.Components.Rendering.RenderTreeBuilder __builder)
        {
            __builder.OpenComponent<MatBlazor.MatAppBar>(0);
            __builder.AddAttribute(1, "Style", "z-index: 100;");
            __builder.AddAttribute(2, "Class", "mat");
            __builder.AddAttribute(3, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder2) => {
                __builder2.OpenComponent<MatBlazor.MatAppBarRow>(4);
                __builder2.AddAttribute(5, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder3) => {
                    __builder3.OpenComponent<MatBlazor.MatAppBarSection>(6);
                    __builder3.AddAttribute(7, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder4) => {
                        __builder4.OpenComponent<MatBlazor.MatIconButton>(8);
                        __builder4.AddAttribute(9, "Icon", "menu");
                        __builder4.AddAttribute(10, "OnClick", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<Microsoft.AspNetCore.Components.EventCallback<Microsoft.AspNetCore.Components.Web.MouseEventArgs>>(Microsoft.AspNetCore.Components.EventCallback.Factory.Create<Microsoft.AspNetCore.Components.Web.MouseEventArgs>(this, 
#nullable restore
#line 8 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                                  (e) => MenuButtonClicked()

#line default
#line hidden
#nullable disable
                        )));
                        __builder4.CloseComponent();
                        __builder4.AddMarkupContent(11, "\r\n            ");
                        __builder4.OpenComponent<MatBlazor.MatAppBarTitle>(12);
                        __builder4.AddAttribute(13, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder5) => {
                            __builder5.AddContent(14, "Bleb Components");
                        }
                        ));
                        __builder4.CloseComponent();
                    }
                    ));
                    __builder3.CloseComponent();
                    __builder3.AddMarkupContent(15, "\r\n        ");
                    __builder3.OpenComponent<MatBlazor.MatAppBarSection>(16);
                    __builder3.AddAttribute(17, "Align", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<MatBlazor.MatAppBarSectionAlign>(
#nullable restore
#line 11 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                  MatAppBarSectionAlign.End

#line default
#line hidden
#nullable disable
                    ));
                    __builder3.AddAttribute(18, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder4) => {
                        __builder4.OpenComponent<MatBlazor.MatIconButton>(19);
                        __builder4.AddAttribute(20, "Icon", "favorite");
                        __builder4.AddAttribute(21, "Link", "https://www.thinktecture.com");
                        __builder4.CloseComponent();
                    }
                    ));
                    __builder3.CloseComponent();
                }
                ));
                __builder2.CloseComponent();
            }
            ));
            __builder.CloseComponent();
            __builder.AddMarkupContent(22, "\r\n\r\n");
            __builder.OpenComponent<MatBlazor.MatDrawerContainer>(23);
            __builder.AddAttribute(24, "Style", "width: 100vw; height: 100vh;");
            __builder.AddAttribute(25, "Class", "mat");
            __builder.AddAttribute(26, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder2) => {
                __builder2.OpenComponent<MatBlazor.MatHidden>(27);
                __builder2.AddAttribute(28, "Breakpoint", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<MatBlazor.MatBreakpoint>(
#nullable restore
#line 18 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                            MatBreakpoint.SM

#line default
#line hidden
#nullable disable
                ));
                __builder2.AddAttribute(29, "Direction", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<MatBlazor.MatHiddenDirection>(
#nullable restore
#line 18 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                                          MatHiddenDirection.Up

#line default
#line hidden
#nullable disable
                ));
                __builder2.AddAttribute(30, "HiddenChanged", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<Microsoft.AspNetCore.Components.EventCallback<System.Boolean>>(Microsoft.AspNetCore.Components.EventCallback.Factory.Create<System.Boolean>(this, 
#nullable restore
#line 18 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                                                                                 ModelDrawerHiddenChanged

#line default
#line hidden
#nullable disable
                )));
                __builder2.AddAttribute(31, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder3) => {
                    __builder3.OpenComponent<MatBlazor.MatDrawer>(32);
                    __builder3.AddAttribute(33, "Mode", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<MatBlazor.MatDrawerMode>(
#nullable restore
#line 20 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                                             MatDrawerMode.Modal

#line default
#line hidden
#nullable disable
                    ));
                    __builder3.AddAttribute(34, "Opened", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<System.Boolean>(
#nullable restore
#line 20 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                      _navMenuOpened

#line default
#line hidden
#nullable disable
                    ));
                    __builder3.AddAttribute(35, "OpenedChanged", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<Microsoft.AspNetCore.Components.EventCallback<System.Boolean>>(Microsoft.AspNetCore.Components.EventCallback.Factory.Create<System.Boolean>(this, Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.CreateInferredEventCallback(this, __value => _navMenuOpened = __value, _navMenuOpened))));
                    __builder3.AddAttribute(36, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder4) => {
                        __builder4.OpenComponent<MatBlazor.MatAppBarAdjust>(37);
                        __builder4.CloseComponent();
                        __builder4.AddMarkupContent(38, "\r\n                ");
                        __builder4.OpenComponent<MatBlazor.MatNavMenu>(39);
                        __builder4.AddAttribute(40, "Multi", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<System.Boolean>(
#nullable restore
#line 22 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                   true

#line default
#line hidden
#nullable disable
                        ));
                        __builder4.AddAttribute(41, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder5) => {
                            __builder5.OpenComponent<MatBlazor.MatNavItem>(42);
                            __builder5.AddAttribute(43, "Href", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<System.String>(
#nullable restore
#line 23 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                       navigationManager.ToAbsoluteUri("").AbsoluteUri

#line default
#line hidden
#nullable disable
                            ));
                            __builder5.AddAttribute(44, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder6) => {
                                __builder6.OpenComponent<MatBlazor.MatIcon>(45);
                                __builder6.AddAttribute(46, "Icon", "map");
                                __builder6.CloseComponent();
                                __builder6.AddContent(47, "Maps");
                            }
                            ));
                            __builder5.CloseComponent();
                            __builder5.AddMarkupContent(48, "\r\n                    ");
                            __builder5.OpenComponent<MatBlazor.MatNavItem>(49);
                            __builder5.AddAttribute(50, "Href", "/charts");
                            __builder5.AddAttribute(51, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder6) => {
                                __builder6.OpenComponent<MatBlazor.MatIcon>(52);
                                __builder6.AddAttribute(53, "Icon", "map");
                                __builder6.CloseComponent();
                                __builder6.AddContent(54, "Charts");
                            }
                            ));
                            __builder5.CloseComponent();
                        }
                        ));
                        __builder4.CloseComponent();
                    }
                    ));
                    __builder3.CloseComponent();
                }
                ));
                __builder2.AddAttribute(55, "ElseContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder3) => {
                    __builder3.OpenComponent<MatBlazor.MatDrawer>(56);
                    __builder3.AddAttribute(57, "Mode", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<MatBlazor.MatDrawerMode>(
#nullable restore
#line 29 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                                             MatDrawerMode.Dismissible

#line default
#line hidden
#nullable disable
                    ));
                    __builder3.AddAttribute(58, "Opened", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<System.Boolean>(
#nullable restore
#line 29 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                      _navMenuOpened

#line default
#line hidden
#nullable disable
                    ));
                    __builder3.AddAttribute(59, "OpenedChanged", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<Microsoft.AspNetCore.Components.EventCallback<System.Boolean>>(Microsoft.AspNetCore.Components.EventCallback.Factory.Create<System.Boolean>(this, Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.CreateInferredEventCallback(this, __value => _navMenuOpened = __value, _navMenuOpened))));
                    __builder3.AddAttribute(60, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder4) => {
                        __builder4.OpenComponent<MatBlazor.MatAppBarAdjust>(61);
                        __builder4.CloseComponent();
                        __builder4.AddMarkupContent(62, "\r\n                ");
                        __builder4.OpenComponent<MatBlazor.MatNavMenu>(63);
                        __builder4.AddAttribute(64, "Multi", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<System.Boolean>(
#nullable restore
#line 31 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                   true

#line default
#line hidden
#nullable disable
                        ));
                        __builder4.AddAttribute(65, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder5) => {
                            __builder5.OpenComponent<MatBlazor.MatNavItem>(66);
                            __builder5.AddAttribute(67, "Href", Microsoft.AspNetCore.Components.CompilerServices.RuntimeHelpers.TypeCheck<System.String>(
#nullable restore
#line 32 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
                                       navigationManager.ToAbsoluteUri("").AbsoluteUri

#line default
#line hidden
#nullable disable
                            ));
                            __builder5.AddAttribute(68, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder6) => {
                                __builder6.OpenComponent<MatBlazor.MatIcon>(69);
                                __builder6.AddAttribute(70, "Icon", "map");
                                __builder6.CloseComponent();
                                __builder6.AddContent(71, "Maps");
                            }
                            ));
                            __builder5.CloseComponent();
                            __builder5.AddMarkupContent(72, "\r\n                    ");
                            __builder5.OpenComponent<MatBlazor.MatNavItem>(73);
                            __builder5.AddAttribute(74, "Href", "/charts");
                            __builder5.AddAttribute(75, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder6) => {
                                __builder6.OpenComponent<MatBlazor.MatIcon>(76);
                                __builder6.AddAttribute(77, "Icon", "map");
                                __builder6.CloseComponent();
                                __builder6.AddContent(78, "Charts");
                            }
                            ));
                            __builder5.CloseComponent();
                        }
                        ));
                        __builder4.CloseComponent();
                    }
                    ));
                    __builder3.CloseComponent();
                }
                ));
                __builder2.CloseComponent();
                __builder2.AddMarkupContent(79, "\r\n\r\n    ");
                __builder2.OpenComponent<MatBlazor.MatDrawerContent>(80);
                __builder2.AddAttribute(81, "Style", "padding-left: 25px; padding-right: 25px; padding-top: 20px");
                __builder2.AddAttribute(82, "ChildContent", (Microsoft.AspNetCore.Components.RenderFragment)((__builder3) => {
                    __builder3.OpenComponent<MatBlazor.MatAppBarAdjust>(83);
                    __builder3.CloseComponent();
                    __builder3.AddMarkupContent(84, "\r\n        ");
                    __builder3.AddContent(85, 
#nullable restore
#line 41 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
         Body

#line default
#line hidden
#nullable disable
                    );
                }
                ));
                __builder2.CloseComponent();
            }
            ));
            __builder.CloseComponent();
        }
        #pragma warning restore 1998
#nullable restore
#line 46 "D:\POCs\blazorangular\blazor-webcomponents-demo\Shared\MainLayout.razor"
       
    private bool _navMenuOpened = false;

    protected void ModelDrawerHiddenChanged(bool hidden)
    {
        if (!hidden)
        {
            _navMenuOpened = false;
        }
    }

    protected void MenuButtonClicked()
    {
        _navMenuOpened = !_navMenuOpened;
        this.StateHasChanged();
    }

#line default
#line hidden
#nullable disable
        [global::Microsoft.AspNetCore.Components.InjectAttribute] private NavigationManager navigationManager { get; set; }
    }
}
#pragma warning restore 1591
