Imports ML.DataModeling.Framework.Helper
Imports ML.DataModeling.Framework.BusinessObjects
Imports ML.DataModeling.Framework.DataProvider
Imports ML.DataModeling.Framework.Utility
Imports System.IO
Imports System.Globalization
Partial Public Class Export
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim strColumnHeader As String = Request("strColumnHeader")
        Dim strColumnIds As String = Request("strColumnIds")
        Dim strRowIds As String = Request("strRowIds")
        If (strRowIds <> "") Then
            exportUsers(strColumnHeader, strColumnIds, "Users", strRowIds)
        Else
            exportUsers(strColumnHeader, strColumnIds, "Users")
        End If



    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)
        'Return
    End Sub

    Private Sub exportUsers(ByVal columnHeaders As String, ByVal columnIds As String, ByVal strFileName As String)
        Dim objUserProvider As New UserProvider()
        Dim exportItems As List(Of User)
        exportItems = objUserProvider.GetUsers()
        For Each custUser As User In exportItems
            custUser.CreatedOnDisplay = custUser.CreatedOn.ToString("MM/dd/yy", CultureInfo.InvariantCulture)
        Next
        BuildGrid(columnHeaders, columnIds, exportItems)
        RenderToExcel(strFileName)
    End Sub
    Private Sub exportUsers(ByVal columnHeaders As String, ByVal columnIds As String, ByVal strFileName As String, ByVal strUserIdxs As String)
        Dim objUserProvider As New UserProvider()
        Dim exportItems As List(Of User)
        exportItems = objUserProvider.GetUserByIds(strUserIdxs)
        For Each custUser As User In exportItems
            custUser.CreatedOnDisplay = custUser.CreatedOn.ToString("MM/dd/yy", CultureInfo.InvariantCulture)
        Next
        BuildGrid(columnHeaders, columnIds, exportItems)
        RenderToExcel(strFileName)
    End Sub
    Private Sub BuildGrid(ByVal columnHeaders As String, ByVal columnIds As String, ByVal objSource As Object)
        Dim columnHeaderList As New ArrayList
        Dim columnIdsList As New ArrayList
        columnHeaderList.AddRange(columnHeaders.Split(","c))
        columnIdsList.AddRange(columnIds.Split(","c))

        For idx As Integer = 0 To columnHeaderList.Count - 1
            Dim grdColumn As New BoundField
            grdColumn.HeaderText = columnHeaderList(idx).ToString()
            grdColumn.DataField = columnIdsList(idx).ToString()
            grdExport.Columns.Add(grdColumn)
        Next
        grdExport.AutoGenerateColumns = False
        grdExport.DataSource = objSource
        grdExport.DataBind()

        'Dim blnColumnFound As Boolean
        'Dim coIdx As Integer = 0
        'Dim headerText As String=""
        'For Each fld As BoundField In grdExport.Columns
        '    blnColumnFound = False
        '    For idx As Integer = 0 To columnIdsList.Count - 1
        '        If (columnIdsList(idx).ToString() = fld.DataField.ToString()) Then
        '            headerText = columnHeaderList(idx).ToString()
        '            blnColumnFound = True
        '            Exit For
        '        End If
        '    Next
        '    If (blnColumnFound = False) Then
        '        grdExport.Columns(coIdx).Visible = False
        '    Else
        '        grdExport.Columns(coIdx).HeaderText = headerText
        '    End If
        '    coIdx = coIdx + 1
        'Next
    End Sub
    Sub grdExport_RowDataBound(ByVal sender As Object, ByVal e As GridViewRowEventArgs)
        If e.Row.RowType = DataControlRowType.DataRow Then
            For idx As Integer = 0 To e.Row.Cells.Count - 1
                If (e.Row.Cells(idx).Text = "True") Then
                    e.Row.Cells(idx).Text = "Yes"
                End If

                If (e.Row.Cells(idx).Text = "False") Then
                    e.Row.Cells(idx).Text = "No"
                End If
                ' e.Row.Cells(idx).Text = "Yes"
            Next


        End If

    End Sub


    Private Sub RenderToExcel(ByVal strFileName As String)
        If strFileName.ToString() = "" Then
            strFileName = "export"
        End If
        Response.Clear()
        Response.ClearHeaders()
        Response.AddHeader("content-disposition", "attachment;filename=" + strFileName + "_" + DateTime.Now().ToLongDateString() + ".xls")
        Response.Charset = ""
        ' Response.CacheControl = "no-cache"
        Response.AddHeader("Cache-Control", "max-age=0")
        Response.ContentType = "application/vnd.ms-excel"
        Dim stringWrite As StringWriter = New StringWriter()
        Dim htmlWrite As System.Web.UI.HtmlTextWriter = New HtmlTextWriter(stringWrite)
        grdExport.RenderControl(htmlWrite)
        Response.Write(stringWrite.ToString())
        Response.Flush()
        Response.End()
    End Sub

End Class