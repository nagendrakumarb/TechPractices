Public Partial Class FileUpload
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim hfc As HttpFileCollection = HttpContext.Current.Request.Files
        Dim strFileName As String = Request("strFileName")
        For i As Integer = 0 To hfc.Count - 1
            Dim hpf As HttpPostedFile = hfc(i)
            If hpf.ContentLength > 0 Then
                hpf.SaveAs(HttpContext.Current.Server.MapPath("~/appImgs" & "\" & strFileName))
                ' Response.Write("File: " & hpf.FileName & " Size: " & hpf.ContentLength & " Type: " & hpf.ContentType & " Uploaded Successfully ")
            End If
        Next i


    End Sub
   
End Class