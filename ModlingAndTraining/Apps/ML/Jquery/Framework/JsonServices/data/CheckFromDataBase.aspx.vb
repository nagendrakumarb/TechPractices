Imports HostAnalytics.DecisionHub.Framework.Helper
Imports HostAnalytics.DecisionHub.Framework.BusinessObjects
Imports HostAnalytics.DecisionHub.Framework.DataProvider
Partial Public Class CheckFromDataBase
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intOperationType As Int16
        intOperationType = Request("intOperationType")
        Select Case intOperationType
            Case 1 'Check User Exist By Email or Login
                Dim ObjUserProvider As New UserProvider()
                Dim strEmail As String = Request("email").Trim()
                Response.Write(ObjUserProvider.isUserExist(strEmail).ToString())

        End Select
    End Sub

End Class