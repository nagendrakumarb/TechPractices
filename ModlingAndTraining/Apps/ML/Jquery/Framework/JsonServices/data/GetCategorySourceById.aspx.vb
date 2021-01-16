Imports HostAnalytics.DecisionHub.Framework.Helper
Imports HostAnalytics.DecisionHub.Framework.BusinessObjects
Imports HostAnalytics.DecisionHub.Framework.DataProvider
Partial Public Class GetCategorySourceById
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intIdx As Integer
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim DataItem As CategorySource
        intIdx = Request.QueryString("Idx")
        If (Request.QueryString("intUserId") Is Nothing) Then
            DataItem = ObjCategorySourceProvider.GetCategorySourceById(intIdx, Nothing)
        Else
            DataItem = ObjCategorySourceProvider.GetCategorySourceById(intIdx, Request.QueryString("intUserId"))
        End If

        Response.Write(JSONHelper.GetJsonString(DataItem))
    End Sub

End Class