Imports System.IO
Imports ML.DataModeling.Framework.Helper
Imports ML.DataModeling.Framework.BusinessObjects
Imports ML.DataModeling.Framework.DataProvider
Imports ML.DataModeling.Framework.Utility
Partial Public Class SaveToDataBase
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim intOperationType As Int16
        intOperationType = Request("intOperationType")
        Select Case intOperationType
            Case 1 ' Add to User Category Source 
                AddUserCategorySource()
            Case 2 ' Delete From User Category Source 
                DeleteUserCategorySource()
            Case 3 'Update Category Source Rating  
                UpdateCategorySourceRating()
            Case 4 'Create New User
                AddUser()
            Case 5 'Check User Exist By Email or Login
                CheckUserExist()
            Case 6 'Add New Category Source
                AddCategorySource()
            Case 7 'Update Category Source
                UpdateCategorySource()
            Case 8 'Delete Category Source
                DeleteCategorySource()
            Case 9 'Update User Password
                UpdateUserPassword()
            Case 10 'Update User Admin Status
                UpdateAdminStatus()
            Case 11 'Update CatagoryStatus
                UpdateCategorySourceStatus()
            Case 12 'Add Feedback
                AddFeedback()
            Case 13 'Add Master Tag
                AddMasterTag()
            Case 14 'Update Master Tag
                UpdateMasterTag()
            Case 15 'Delete Master Tag
                DeleteMasterTag()
            Case 16 'Add Response
                AddFeedbackResponse()

        End Select
    End Sub
    Private Sub AddUserCategorySource()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim intUserIdx As Integer = Request("intUserIdx")
        Dim intCategorySourceIdx As Integer = Request("intCategorySourceIdx")
        ObjCategorySourceProvider.AddToUserCategorySource(intUserIdx, intCategorySourceIdx)
    End Sub
    Private Sub DeleteUserCategorySource()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim intUserIdx As Integer = Request("intUserIdx")
        Dim intCategorySourceIdx As Integer = Request("intCategorySourceIdx")
        ObjCategorySourceProvider.DeleteUserCategorySource(intUserIdx, intCategorySourceIdx)
    End Sub
    Private Sub UpdateCategorySourceRating()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim dblScore As Double = Request("dblScore")
        Dim objRating As RatingObject
        Dim intCategorySourceIdx As Integer = Request("intCategorySourceIdx")
        Dim intUserIdx As Integer = Request("intUserIdx")
        objRating = ObjCategorySourceProvider.UpdateCategorySourceRating(dblScore, intCategorySourceIdx, intUserIdx)
        Response.Write(JSONHelper.GetJsonString(objRating))
    End Sub
    Private Sub AddUser()
        Dim intUserId As Integer
        Dim ObjUserProvider As New UserProvider()
        Dim strFirstName As String = Request("firstName")
        Dim strLastName As String = Request("lastName")
        Dim strOrganization As String = Request("organization")
        Dim strTitle As String = Request("title")
        Dim strEmail As String = Request("email")
        Dim strPhone As String = Request("phone")
        Dim blnIsAdmin As Boolean = Request("IsAdmin")
        Dim blnIsActive As Boolean = Request("IsActive")
        Dim blnIsLocked As Boolean = Request("IsLocked")
        Dim ObjUser As User
        ObjUser = New User()
        ObjUser.FirstName = strFirstName
        ObjUser.LastName = strLastName
        ObjUser.Organization = strOrganization
        ObjUser.Title = strTitle
        ObjUser.Phone = strPhone
        ObjUser.Email = strEmail
        ObjUser.UserName = strEmail
        ObjUser.Password = RandomPassword.Generate()
        ObjUser.IsActive = blnIsActive
        ObjUser.IsAdmin = blnIsAdmin
        ObjUser.IsLocked = blnIsLocked
        ObjUser.IsPasswordChanged = False
        ObjUser.CreatedBy = strFirstName + " " + strLastName
        intUserId = ObjUserProvider.AddUser(ObjUser)
        ObjUser = ObjUserProvider.GetUserById(intUserId)
        Response.Write(JSONHelper.GetJsonString(ObjUser))
    End Sub
    Private Sub CheckUserExist()
        Dim ObjUserProvider As New UserProvider()
        Dim strEmail As String = Request("email")
        Response.Write(ObjUserProvider.isUserExist(strEmail).ToString())
    End Sub
    Private Sub UpdateUserPassword()
        Dim ObjUserProvider As New UserProvider()
        Dim intUserIdx As Integer
        Dim strPassword As String
        Dim ObjUser As New User
        intUserIdx = Request("intUserIdx")
        strPassword = Request("strPassword")
        ObjUser = ObjUserProvider.GetUserById(intUserIdx)
        ObjUser.Password = strPassword
        ObjUser.LastUpdatedBy = ObjUser.FirstName + " " + ObjUser.LastName
        ObjUserProvider.UpdateUserPassword(ObjUser)
        Response.Write(JSONHelper.GetJsonString(ObjUser))
    End Sub
    Private Sub UpdateAdminStatus()
        Dim ObjUserProvider As New UserProvider()
        Dim intUserIdx As Integer
        Dim intUpdatedBy As Integer
        Dim isAdmin As Boolean
        Dim blnCopyEmail As Boolean
        Dim ObjUpdatedByUser As New User
        Dim ObjUser As New User
        intUserIdx = Request("intUserIdx")
        intUpdatedBy = Request("intUpdatedBy")
        isAdmin = Request("isAdmin")
        blnCopyEmail = Request("blnCopyEmail")
        ObjUpdatedByUser = ObjUserProvider.GetUserById(intUpdatedBy)
        ObjUser.Id = intUserIdx
        ObjUser.IsAdmin = isAdmin
        ObjUser.CopyEmail = blnCopyEmail
        ObjUser.LastUpdatedBy = ObjUpdatedByUser.FirstName + " " + ObjUpdatedByUser.LastName
        ObjUserProvider.UpdateUserAdminStatus(ObjUser)
        'Response.Write(JSONHelper.GetJsonString(ObjUser))
    End Sub
    Private Sub DeleteCategorySource()
        Dim ObjUserProvider As New UserProvider()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim ObjCategorySource As New CategorySource()
        Dim intIdx As Integer
        Dim intUserIdx As Integer
        intIdx = Request("intIdx")
        intUserIdx = Request("intUserIdx")
        ObjCategorySource = ObjCategorySourceProvider.GetCategorySourceById(intIdx, intUserIdx)
        ObjCategorySourceProvider.DeleteCategorySource(ObjCategorySource)
        Dim objFileManage = New FileHelper()
        objFileManage.RemoveFile(ObjCategorySource.SmallLogoUrl)
        objFileManage.RemoveFile(ObjCategorySource.BigLogoUrl)
        Response.Write(JSONHelper.GetJsonString(ObjCategorySource))
    End Sub
    Private Sub AddCategorySource()
        Dim ObjUserProvider As New UserProvider()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim ObjUser As New User()
        Dim ObjCategorySource As New CategorySource()
        Dim intUserIdx As Integer
        Dim intIdx As Integer
        Dim intCategoryIdx As Integer
        Dim strTitle As String
        Dim strShortDesc As String
        Dim strLongDesc As String
        Dim strBusinessBenefits As String
        Dim strAuthor As String
        Dim strWebsite As String
        Dim blnActive As Boolean
        Dim blnConsumable As Boolean
        Dim blnOpenInNewWindow As Boolean
        intUserIdx = Request("intUserIdx")
        intCategoryIdx = Request("intCategoryIdx")
        strTitle = Request("strTitle")
        strShortDesc = Request("strShortDesc")
        strLongDesc = Request("strLongDesc")
        strBusinessBenefits = Request("strBusinessBenefits")
        strAuthor = Request("strAuthor")
        strWebsite = Request("strWebsite")
        blnActive = Request("blnActive")
        blnConsumable = Request("blnConsumable")
        blnOpenInNewWindow = Request("blnOpenInNewWindow")
        ObjUser = ObjUserProvider.GetUserById(intUserIdx)
        ObjCategorySource.CategoryIdx = intCategoryIdx
        ObjCategorySource.Name = strTitle
        ObjCategorySource.ShortDescription = strShortDesc
        ObjCategorySource.LongDescription = strLongDesc
        ObjCategorySource.BusinessBenefits = strBusinessBenefits
        ObjCategorySource.WebsiteUrl = strWebsite
        ObjCategorySource.OpenInNewWindow = blnOpenInNewWindow
        ObjCategorySource.Author = strAuthor
        ObjCategorySource.isActive = blnActive
        ObjCategorySource.isConsumable = blnConsumable
        ObjCategorySource.CreatedBy = ObjUser.FirstName + " " + ObjUser.LastName
        intIdx = ObjCategorySourceProvider.AddCategorySource(ObjCategorySource)
        ObjCategorySource = ObjCategorySourceProvider.GetCategorySourceById(intIdx, intUserIdx)
        If (Request("strTagIds") <> "") Then
            AddCategorySourceTags(Request("strTagIds"), ObjCategorySource)
        End If
        Response.Write(JSONHelper.GetJsonString(ObjCategorySource))
    End Sub
    Private Sub UpdateCategorySource()
        Dim ObjUserProvider As New UserProvider()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim ObjUser As New User()
        Dim ObjCategorySource As New CategorySource()
        Dim intUserIdx As Integer
        Dim intIdx As Integer
        Dim intCategoryIdx As Integer
        Dim strTitle As String
        Dim strShortDesc As String
        Dim strLongDesc As String
        Dim strBusinessBenefits As String
        Dim strAuthor As String
        Dim strWebsite As String
        Dim blnActive As Boolean
        Dim blnConsumable As Boolean
        Dim blnOpenInNewWindow As Boolean
        intIdx = Request("intIdx")
        intUserIdx = Request("intUserIdx")
        intCategoryIdx = Request("intCategoryIdx")
        strTitle = Request("strTitle")
        strShortDesc = Request("strShortDesc")
        strLongDesc = Request("strLongDesc")
        strBusinessBenefits = Request("strBusinessBenefits")
        strAuthor = Request("strAuthor")
        strWebsite = Request("strWebsite")
        blnActive = Request("blnActive")
        blnConsumable = Request("blnConsumable")
        blnOpenInNewWindow = Request("blnOpenInNewWindow")
        ObjUser = ObjUserProvider.GetUserById(intUserIdx)
        ObjCategorySource.Id = intIdx.ToString()
        ObjCategorySource.CategoryIdx = intCategoryIdx
        ObjCategorySource.Name = strTitle
        ObjCategorySource.ShortDescription = strShortDesc
        ObjCategorySource.LongDescription = strLongDesc
        ObjCategorySource.BusinessBenefits = strBusinessBenefits
        ObjCategorySource.WebsiteUrl = strWebsite
        ObjCategorySource.OpenInNewWindow = blnOpenInNewWindow
        ObjCategorySource.Author = strAuthor
        ObjCategorySource.isActive = blnActive
        ObjCategorySource.isConsumable = blnConsumable
        ObjCategorySource.LastUpdatedBy = ObjUser.FirstName + " " + ObjUser.LastName
        intIdx = ObjCategorySourceProvider.UpdateCategorySource(ObjCategorySource)
        ObjCategorySource = ObjCategorySourceProvider.GetCategorySourceById(intIdx, intUserIdx)
        ObjCategorySourceProvider.DeleteCategorySourceTags(ObjCategorySource)
        If (Request("strTagIds") <> "") Then
            AddCategorySourceTags(Request("strTagIds"), ObjCategorySource)
        End If
        Response.Write(JSONHelper.GetJsonString(ObjCategorySource))
    End Sub
    Private Sub UpdateCategorySourceStatus()
        Dim ObjUserProvider As New UserProvider()
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim ObjUser As New User()
        Dim ObjCategorySource As New CategorySource()
        Dim intUserIdx As Integer
        Dim intIdx As Integer
        Dim intCategoryIdx As Integer
        Dim blnActive As Boolean
        intIdx = Request("intIdx")
        intUserIdx = Request("intUserIdx")
        intCategoryIdx = Request("intCategoryIdx")
        blnActive = Request("blnActive")
        ObjUser = ObjUserProvider.GetUserById(intUserIdx)
        ObjCategorySource.Id = intIdx.ToString()
        ObjCategorySource.isActive = blnActive
        ObjCategorySource.LastUpdatedBy = ObjUser.FirstName + " " + ObjUser.LastName
        intIdx = ObjCategorySourceProvider.UpdateCategorySourceStatus(ObjCategorySource)
        ObjCategorySource = ObjCategorySourceProvider.GetCategorySourceById(intIdx, intUserIdx)
        Response.Write(JSONHelper.GetJsonString(ObjCategorySource))
    End Sub
    Private Sub AddFeedback()
        Dim ObjFeedbackProvider As New FeedbackProvider()
        Dim ObjFeedback As New Feedback()
        Dim intUserIdx As Integer
        Dim intIdx As Integer
        Dim strFirstName As String = Request("firstName")
        Dim strLastName As String = Request("lastName")
        Dim strEmail As String = Request("email")
        Dim intSubject As Integer = Request("subject")
        Dim strSubject As String = Request("subject")
        Dim strComments As String = Request("comments")
        Dim ObjUser As New User()
        If (Request("intUserIdx") <> "") Then
            Dim ObjUserProvider As New UserProvider()
            intUserIdx = Request("intUserIdx")
            ObjUser = ObjUserProvider.GetUserById(intUserIdx)
            ObjFeedback.FromUser = ObjUser
        Else
            ObjFeedback.FromUser = Nothing
            ObjUser.FirstName = strFirstName
            ObjUser.LastName = strLastName
        End If
        ObjFeedback.FromFirstName = ObjUser.FirstName
        ObjFeedback.FromLastName = ObjUser.LastName
        ObjFeedback.FromEmail = strEmail
        ObjFeedback.Subject = ObjFeedbackProvider.GetFeedbackCategory(intSubject)
        ObjFeedback.Status = FeedbackStatus.Open
        ObjFeedback.CreatedBy = ObjUser.FirstName + " " + ObjUser.LastName
        ObjFeedback.Comments = strComments
        intIdx = ObjFeedbackProvider.AddFeedback(ObjFeedback)
        ObjFeedback.Id = intIdx.ToString()
        Response.Write(JSONHelper.GetJsonString(ObjFeedback))
    End Sub
    Private Sub AddFeedbackResponse()
        Dim ObjFeedbackProvider As New FeedbackProvider()
        Dim ObjFeedbackResponse As New FeedbackResponse()
        Dim ObjUserProvider As New UserProvider()
        Dim intIdx As Integer
        Dim intFeedbackIdx As Integer = Request("intFeedbackIdx")
        Dim intUserIdx As Integer = Request("intUserIdx")
        Dim strComments As String = Request("comments")
        Dim ObjUser As New User()
        Dim ObjFeedback As New Feedback()
        ObjUser = ObjUserProvider.GetUserById(intUserIdx)
        ObjFeedback.Id = intFeedbackIdx
        ObjFeedbackResponse.Comments = strComments
        ObjFeedbackResponse.RespondedBy = ObjUser
        ObjFeedbackResponse.CreatedBy = ObjUser.FirstName + " " + ObjUser.LastName
        ObjFeedbackResponse.Feedback = ObjFeedback
        intIdx = ObjFeedbackProvider.AddFeedbackResponse(ObjFeedbackResponse)
        ObjFeedbackResponse.Id = intIdx.ToString()
        Response.Write(JSONHelper.GetJsonString(ObjFeedbackResponse))
    End Sub

    Private Sub AddMasterTag()
        Dim objTagsProvider As New TagsProvider()
        Dim ObjTag As New Tags()
        Dim intUserIdx As Integer
        Dim intIdx As Integer
        Dim strName As String = Request("strName")
        Dim ObjUser As New User()
        Dim ObjUserProvider As New UserProvider()
        intUserIdx = Request("intUserIdx")
        ObjUser = ObjUserProvider.GetUserById(intUserIdx)
        ObjTag.Name = strName
        ObjTag.CreatedBy = ObjUser.FirstName + " " + ObjUser.LastName
        intIdx = objTagsProvider.AddTag(ObjTag)
        ObjTag.Id = intIdx.ToString()
        Response.Write(JSONHelper.GetJsonString(ObjTag))
    End Sub
    Private Sub UpdateMasterTag()
        Dim objTagsProvider As New TagsProvider()
        Dim ObjTag As New Tags()
        Dim intUserIdx As Integer = Request("intUserIdx")
        Dim intIdx As Integer = Request("intIdx")
        Dim strName As String = Request("strName")
        Dim ObjUser As New User()
        Dim ObjUserProvider As New UserProvider()
        ObjUser = ObjUserProvider.GetUserById(intUserIdx)
        ObjTag.Id = intIdx.ToString()
        ObjTag.Name = strName
        ObjTag.LastUpdatedBy = ObjUser.FirstName + " " + ObjUser.LastName
        intIdx = objTagsProvider.UpdateTag(ObjTag)
        Response.Write(JSONHelper.GetJsonString(ObjTag))
    End Sub
    Private Sub DeleteMasterTag()
        Dim objTagsProvider As New TagsProvider()
        Dim ObjTag As New Tags()
        Dim intIdx As Integer = Request("intIdx")
        ObjTag.Id = intIdx.ToString()
        intIdx = objTagsProvider.DeleteTag(ObjTag)
        Response.Write(JSONHelper.GetJsonString(ObjTag))
    End Sub
    Private Sub AddCategorySourceTags(ByVal strTagIds As String, ByVal ObjCategorySource As CategorySource)
        Dim ObjCategorySourceProvider As New CategorySourceProvider()
        Dim arrTagIds() As String
        Dim Idx As Integer
        Dim objTag As Tags
        strTagIds = strTagIds
        arrTagIds = strTagIds.Split(",")
        For Idx = 0 To arrTagIds.Length - 1
            objTag = New Tags()
            objTag.Id = arrTagIds(Idx)
            ObjCategorySourceProvider.AddCategorySourceTags(ObjCategorySource, objTag)
        Next
    End Sub





End Class