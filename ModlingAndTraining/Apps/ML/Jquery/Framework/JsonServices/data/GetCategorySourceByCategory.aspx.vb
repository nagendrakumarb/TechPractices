Imports HostAnalytics.DecisionHub.Framework.Helper
Imports HostAnalytics.DecisionHub.Framework.BusinessObjects
Imports HostAnalytics.DecisionHub.Framework.DataProvider

Partial Public Class GetCategorySourceByCategory
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intCategoryId As Integer
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim DataItems As List(Of CategorySource)
        intCategoryId = Request.QueryString("categoryId")
        DataItems = ObjCategorySourceProvider.GetCategorySourceByCategoryId(intCategoryId)
        Response.Write(JSONHelper.GetJsonString(DataItems))
    End Sub
End Class