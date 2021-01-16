Imports HostAnalytics.DecisionHub.Framework.Helper
Imports HostAnalytics.DecisionHub.Framework.BusinessObjects
Imports HostAnalytics.DecisionHub.Framework.DataProvider
Partial Public Class GetAllCategorySource
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim DataItems As List(Of CategorySource)
        If (Request.QueryString("intUserId") Is Nothing) Then
            DataItems = ObjCategorySourceProvider.GetAllCategorySource(Nothing)
        Else
            DataItems = ObjCategorySourceProvider.GetAllCategorySource(Request.QueryString("intUserId"))
        End If

        Response.Write(JSONHelper.GetJsonString(DataItems))
    End Sub

End Class