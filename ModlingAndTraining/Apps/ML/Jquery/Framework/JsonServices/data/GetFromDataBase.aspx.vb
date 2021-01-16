Imports ML.DataModeling.Framework.Helper
Imports ML.DataModeling.Framework.BusinessObjects
Imports ML.DataModeling.Framework.DataProvider
Partial Public Class GetFromDataBase
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intOperationType As Int16
        intOperationType = Request("intOperationType")
        Select Case intOperationType
            Case 1 'Get All Category Source
                GetAllDataSources()
            Case 2 'Get Category Source By Id
                GetDataSourceById()
            Case 3 'Get Category Source By Category
                GetDataSourceByCategory()
            Case 4 'Get User By Id
                GetUserById()
            Case 5 'Get User By login
                GetUserByLogin()
            Case 6 'Get User By email
                GetUserByEmail()
            Case 7 'Get All Categories
                GetDataSourceCategories()
            Case 8 'Get All Users
                GetAllUsers()
            Case 9 'Get Feedback Categories
                GetFeedbackCategories()
            Case 10 'Get Feedbacks 
                GetFeedbacks()
            Case 11 'Get Tags
                GetAllTags()
            Case 12 'Get Tags For  Given Category Source
                GetTagsByCategorySource()
            Case 13 'Get Feedback Responses
                GetFeedbackResponse()
            Case 14 'Check User Exist
                CheckUserExist()
        End Select
    End Sub
    '1:Get All Category Source
    Private Sub GetAllDataSources()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim DataItems As List(Of CategorySource)
        If (Request("intUserIdx") Is Nothing) Then
            DataItems = ObjCategorySourceProvider.GetAllCategorySource(Nothing)
        Else
            DataItems = ObjCategorySourceProvider.GetAllCategorySource(Request("intUserIdx"))
        End If
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjCategorySourceProvider = Nothing
        DataItems = Nothing
    End Sub
    '2:Get Category Source By Id
    Private Sub GetDataSourceById()
        Dim intIdx As Integer
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim DataItem As CategorySource
        intIdx = Request("Idx")
        If (Request("intUserIdx") Is Nothing) Then
            DataItem = ObjCategorySourceProvider.GetCategorySourceById(intIdx, Nothing)
        Else
            DataItem = ObjCategorySourceProvider.GetCategorySourceById(intIdx, Request("intUserIdx"))
        End If
        Response.Write(JSONHelper.GetJsonString(DataItem))
        ObjCategorySourceProvider = Nothing
        DataItem = Nothing
    End Sub
    '3:Get Category Source By Category
    Private Sub GetDataSourceByCategory()
        Dim intCategoryId As Integer
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim DataItems As List(Of CategorySource)
        intCategoryId = Request("categoryId")
        DataItems = ObjCategorySourceProvider.GetCategorySourceByCategoryId(intCategoryId)
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjCategorySourceProvider = Nothing
        DataItems = Nothing
    End Sub

    '4:Get User By Id
    Private Sub GetUserById()
        Dim intUserId As Integer
        Dim ObjUserProvider As New UserProvider()
        Dim DataItem As User
        intUserId = Request("intUserId")
        DataItem = ObjUserProvider.GetUserById(intUserId)
        Response.Write(JSONHelper.GetJsonString(DataItem))
        ObjUserProvider = Nothing
        DataItem = Nothing
    End Sub
    '5:Get User By login
    Private Sub GetUserByLogin()
        Dim strEmail As String
        Dim strPassword As String
        Dim ObjUserProvider As New UserProvider()
        Dim DataItem As User
        strEmail = Request("strEmail")
        strPassword = Request("strPassword")
        DataItem = ObjUserProvider.GetUserByLogin(strEmail, strPassword)
        Response.Write(JSONHelper.GetJsonString(DataItem))
        ObjUserProvider = Nothing
        DataItem = Nothing
    End Sub
    '6:Get User By email
    Private Sub GetUserByEmail()
        Dim strEmail As String
        Dim ObjUserProvider As New UserProvider()
        Dim DataItem As User
        strEmail = Request("strEmail")
        DataItem = ObjUserProvider.GetUserByLogin(strEmail)
        Response.Write(JSONHelper.GetJsonString(DataItem))
        ObjUserProvider = Nothing
        DataItem = Nothing
    End Sub
    '7:Get All Categories
    Private Sub GetDataSourceCategories()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim DataItems As List(Of Category)
        DataItems = ObjCategorySourceProvider.GetCategories()
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjCategorySourceProvider = Nothing
        DataItems = Nothing
    End Sub
    '8:Get All Users
    Private Sub GetAllUsers()
        Dim ObjUserProvider As New UserProvider()
        Dim DataItems As List(Of User)
        DataItems = ObjUserProvider.GetUsers()
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjUserProvider = Nothing
        DataItems = Nothing
    End Sub
    '9:Get Feedback Categories
    Private Sub GetFeedbackCategories()
        Dim ObjFeedbackProvider As New FeedbackProvider()
        Dim DataItems As List(Of FeedbackCategory)
        DataItems = ObjFeedbackProvider.GetFeedbackCategories()
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjFeedbackProvider = Nothing
        DataItems = Nothing
    End Sub
    '10:Get Feedbacks 
    Private Sub GetFeedbacks()
        Dim ObjUserProvider As New UserProvider()
        Dim intUserIdx As Integer
        Dim objUser As User
        Dim ObjFeedbackProvider As New FeedbackProvider()
        Dim DataItems As List(Of Feedback)
        intUserIdx = Request("IntUserIdx")
        objUser = ObjUserProvider.GetUserById(intUserIdx)
        If (objUser.IsAdmin) Then
            DataItems = ObjFeedbackProvider.GetAllFeedbacks()
        Else
            DataItems = ObjFeedbackProvider.GetFeedbacksByUser(objUser)
        End If
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjUserProvider = Nothing
        objUser = Nothing
        ObjFeedbackProvider = Nothing
        DataItems = Nothing
    End Sub
    '11:Get Tags
    Private Sub GetAllTags()
        Dim ObjTagsProvider As New TagsProvider()
        Dim DataItems As List(Of Tags)
        DataItems = ObjTagsProvider.GetTags()
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjTagsProvider = Nothing
        DataItems = Nothing
    End Sub

    '12:Get Tags For  Given Category Source
    Private Sub GetTagsByCategorySource()
        Dim intIdx As Integer
        intIdx = Request("intIdx")
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim DataItems As List(Of Tags)
        DataItems = ObjCategorySourceProvider.GetCategorySourceTags(intIdx)
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjCategorySourceProvider = Nothing
        DataItems = Nothing
    End Sub
    '13:Get Feedback Responses
    Private Sub GetFeedbackResponse()
        Dim intFeedbackIdx As Integer
        intFeedbackIdx = Request("intFeedbackIdx")
        Dim ObjFeedbackProvider As New FeedbackProvider()
        Dim DataItems As List(Of FeedbackResponse)
        Dim ObjFeedback As New Feedback()
        ObjFeedback.Id = intFeedbackIdx
        DataItems = ObjFeedbackProvider.GetFeedbackResponses(ObjFeedback)
        Response.Write(JSONHelper.GetJsonString(DataItems))
        ObjFeedbackProvider = Nothing
        DataItems = Nothing
        ObjFeedback = Nothing
    End Sub
    '14:Check User Exist with given email
    Private Sub CheckUserExist()
        Dim ObjUserProvider As New UserProvider()
        Dim strEmail As String = Request("email").Trim()
        Response.Write(ObjUserProvider.isUserExist(strEmail).ToString())
        ObjUserProvider = Nothing
    End Sub

End Class