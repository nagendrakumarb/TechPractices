Partial Public Class feedbackui
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        hdnFeedbackType.Value = Request.QueryString("loadtype")
        Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "renderpage", "renderPage('" + Request.QueryString("loadtype") + "')", True)

    End Sub

End Class