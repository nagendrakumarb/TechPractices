Partial Public Class tagsui
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "renderTagsPage", "renderTagsPage('" + Request.QueryString("loadtype") + "','" + Request.QueryString("id") + "')", True)
    End Sub

End Class