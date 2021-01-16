Imports ML.DataModeling.Framework.Utility

Partial Public Class FileManagement
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intOperationType As Int16
        intOperationType = Request("intOperationType")
        Select Case intOperationType
            Case 1 ' Upload files
                Dim objFileManage = New FileHelper()
                Dim strFileName As String = Request("strFileName")
                objFileManage.UploadFiles(Request, strFileName)
                
        End Select

    End Sub

End Class