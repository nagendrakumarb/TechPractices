Imports ML.DataModeling.Framework.Helper
Partial Public Class ManageSession
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intOperationType As Int16
        intOperationType = Request("intOperationType")
        Select Case intOperationType
            Case 1 'Create Session

                Dim strSessionName As String = Request("SessionName")
                Dim strSessionValue As String = Request("SessionValue")
                If (Session.Item(strSessionName) Is Nothing) Then
                    Session.Add(strSessionName, strSessionValue)
                Else
                    Session.Item(strSessionName) = strSessionValue
                End If
                Dim objSession As New DHSession()
                objSession.Key = strSessionName
                objSession.Value = strSessionValue
                Response.Write(JSONHelper.GetJsonString(objSession))
            Case 2 'Destroy Session
                Dim strSessionName As String = Request("SessionName")
                Session.Remove(strSessionName)
            Case 3 'Check Session Exist in Session Collection
                Dim strSessionName As String = Request("SessionName")
                Dim objSession As New DHSession()
                objSession.Key = strSessionName
                If (Not Session.Item(strSessionName) Is Nothing) Then
                    objSession.Value = Session.Item(strSessionName)
                Else
                    objSession.Value = ""
                End If
                Response.Write(JSONHelper.GetJsonString(objSession))
        End Select

    End Sub
    Private Class DHSession
        Protected Friend Sub New()
        End Sub
        Private _Key As String
        Public Property Key() As String
            Get
                Return _Key
            End Get
            Set(ByVal value As String)
                _Key = value
            End Set
        End Property
        Private _Value As String = ""
        Public Property Value() As String
            Get
                Return _Value
            End Get
            Set(ByVal value As String)
                _Value = value
            End Set
        End Property
    End Class
End Class