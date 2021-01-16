Imports ML.DataModeling.Framework.BusinessObjects
Imports System.Collections.Generic
Imports ML.Core
Imports MachineLearning.Data ' ADO.net connectivity
Namespace ML.DataModeling.Framework.DataProvider


    Public Class FeedbackProvider
        Inherits BaseModel
        Public Sub New()
        End Sub
        'Get Functions
        Public Function GetFeedbackCategories() As List(Of FeedbackCategory)
            Dim DataItems As New List(Of FeedbackCategory)
            Dim Item As FeedbackCategory
            Dim ds As New DataSet()
            Dim dr As DataRow
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetFeedbackCategories")
            For Each dr In ds.Tables(0).Rows
                Item = New FeedbackCategory()
                Item.Id = dr.Item("Idx")
                If Not IsDBNull(dr.Item("Name")) Then
                    Item.Name = dr.Item("Name")
                End If
                If Not IsDBNull(dr.Item("Sort")) Then
                    Item.DisplayOrder = dr.Item("Sort")
                End If
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing
            Return DataItems
        End Function
        Public Function GetFeedbackCategory(ByVal intIdx As Integer) As FeedbackCategory
            Dim Item As New FeedbackCategory()
            Dim ds As New DataSet()
            Dim dr As DataRow
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetFeedbackCategories")
            For Each dr In ds.Tables(0).Rows
                If (dr.Item("Idx").ToString() = intIdx.ToString()) Then
                    Item.Id = dr.Item("Idx")
                    If Not IsDBNull(dr.Item("Name")) Then
                        Item.Name = dr.Item("Name")
                    End If
                    If Not IsDBNull(dr.Item("Sort")) Then
                        Item.DisplayOrder = dr.Item("Sort")
                    End If
                    Exit For
                End If
            Next
            dr = Nothing
            ds = Nothing
            Return Item
        End Function
        Public Function GetAllFeedbacks() As List(Of Feedback)
            Dim DataItems As New List(Of Feedback)
            Dim Item As Feedback
            Dim objFeedbackCategory As FeedbackCategory
            Dim objUserProvider As UserProvider
            Dim objUser As User
            Dim dr As DataRow
            Dim ds As New DataSet()
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("User_Idx", Nothing, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetAllFeedbacks", param)
            For Each dr In ds.Tables(0).Rows
                Item = New Feedback()
                Item.Id = dr.Item("Idx")
                If Not IsDBNull(dr.Item("FeedbackCategoryIdx")) Then
                    objFeedbackCategory = New FeedbackCategory()
                    objFeedbackCategory.Id = dr.Item("FeedbackCategoryIdx")
                    objFeedbackCategory.Name = dr.Item("CategoryName")
                    Item.Subject = objFeedbackCategory
                End If
                If Not IsDBNull(dr.Item("Comments")) Then
                    Item.Comments = dr.Item("Comments")
                End If
                If Not IsDBNull(dr.Item("Status")) Then
                    If (dr.Item("Status").ToString() = "0") Then
                        Item.Status = Utility.FeedbackStatus.Open
                    End If
                    If (dr.Item("Status").ToString() = "1") Then
                        Item.Status = Utility.FeedbackStatus.Responded
                    End If
                    If (dr.Item("Status").ToString() = "2") Then
                        Item.Status = Utility.FeedbackStatus.Close
                    End If
                End If
                If Not IsDBNull(dr.Item("User_FirstName")) Then
                    Item.FromFirstName = dr.Item("User_FirstName")
                End If
                If Not IsDBNull(dr.Item("User_LastName")) Then
                    Item.FromLastName = dr.Item("User_LastName")
                End If
                If Not IsDBNull(dr.Item("User_Email")) Then
                    Item.FromEmail = dr.Item("User_Email")
                End If
                If Not IsDBNull(dr.Item("User_Idx")) Then
                    objUser = New User()
                    objUserProvider = New UserProvider()
                    objUser = objUserProvider.GetUserById(dr.Item("User_Idx"))
                    Item.FromUser = objUser
                Else
                    objUser = New User()
                    objUser.FirstName = Item.FromFirstName
                    objUser.LastName = Item.FromFirstName
                    Item.FromUser = objUser
                End If
                If Not IsDBNull(dr.Item("CreatedBy")) Then
                    Item.CreatedBy = dr.Item("CreatedBy")
                End If
                If Not IsDBNull(dr.Item("CreatedOn")) Then
                    Item.CreatedOn = dr.Item("CreatedOn")
                End If
                If Not IsDBNull(dr.Item("LastUpdatedBy")) Then
                    Item.LastUpdatedBy = dr.Item("LastUpdatedBy")
                End If
                If Not IsDBNull(dr.Item("LastUpdatedOn")) Then
                    Item.LastUpdatedOn = dr.Item("LastUpdatedOn")
                End If
                Item.RowChanged = False
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing
            Return DataItems
        End Function
        Public Function GetFeedbacksByUser(ByVal objUser As User) As List(Of Feedback)
            Dim DataItems As New List(Of Feedback)
            Dim Item As Feedback
            Dim objFeedbackCategory As FeedbackCategory
            Dim dr As DataRow
            Dim ds As New DataSet()
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("User_Idx", objUser.Id, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetAllFeedbacks", param)
            For Each dr In ds.Tables(0).Rows
                Item = New Feedback()
                Item.Id = dr.Item("Idx")
                If Not IsDBNull(dr.Item("FeedbackCategoryIdx")) Then
                    objFeedbackCategory = New FeedbackCategory()
                    objFeedbackCategory.Id = dr.Item("FeedbackCategoryIdx")
                    objFeedbackCategory.Name = dr.Item("CategoryName")
                    Item.Subject = objFeedbackCategory
                End If
                If Not IsDBNull(dr.Item("Comments")) Then
                    Item.Comments = dr.Item("Comments")
                End If
                If Not IsDBNull(dr.Item("Status")) Then
                    If (dr.Item("Status").ToString() = "0") Then
                        Item.Status = Utility.FeedbackStatus.Open
                    End If
                    If (dr.Item("Status").ToString() = "1") Then
                        Item.Status = Utility.FeedbackStatus.Responded
                    End If
                    If (dr.Item("Status").ToString() = "2") Then
                        Item.Status = Utility.FeedbackStatus.Close
                    End If
                End If
                If Not IsDBNull(dr.Item("User_FirstName")) Then
                    Item.FromFirstName = dr.Item("User_FirstName")
                End If
                If Not IsDBNull(dr.Item("User_LastName")) Then
                    Item.FromLastName = dr.Item("User_LastName")
                End If
                If Not IsDBNull(dr.Item("User_Email")) Then
                    Item.FromEmail = dr.Item("User_Email")
                End If
                Item.FromUser = objUser

                If Not IsDBNull(dr.Item("CreatedBy")) Then
                    Item.CreatedBy = dr.Item("CreatedBy")
                End If
                If Not IsDBNull(dr.Item("CreatedOn")) Then
                    Item.CreatedOn = dr.Item("CreatedOn")
                End If
                If Not IsDBNull(dr.Item("LastUpdatedBy")) Then
                    Item.LastUpdatedBy = dr.Item("LastUpdatedBy")
                End If
                If Not IsDBNull(dr.Item("LastUpdatedOn")) Then
                    Item.LastUpdatedOn = dr.Item("LastUpdatedOn")
                End If
                Item.RowChanged = False
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing
            Return DataItems
        End Function
        Public Function GetFeedbackResponses(ByVal objFeedback As Feedback) As List(Of FeedbackResponse)
            Dim objUserProvider As New UserProvider()
            Dim Item As FeedbackResponse
            Dim ObjUser As User
            Dim DataItems As New List(Of FeedbackResponse)
            Dim dr As DataRow
            Dim ds As New DataSet()
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("Feedback_Idx", objFeedback.Id, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetFeedbackResponses", param)
            For Each dr In ds.Tables(0).Rows
                Item = New FeedbackResponse()
                Item.Id = dr.Item("Idx")
                If Not IsDBNull(dr.Item("Comments")) Then
                    Item.Comments = dr.Item("Comments")
                End If
                If Not IsDBNull(dr.Item("User_Idx")) Then
                    ObjUser = objUserProvider.GetUserById(dr.Item("User_Idx"))
                    Item.RespondedBy = ObjUser
                End If

                If Not IsDBNull(dr.Item("CreatedBy")) Then
                    Item.CreatedBy = dr.Item("CreatedBy")
                End If
                If Not IsDBNull(dr.Item("CreatedOn")) Then
                    Item.CreatedOn = dr.Item("CreatedOn")
                End If
                If Not IsDBNull(dr.Item("LastUpdatedBy")) Then
                    Item.LastUpdatedBy = dr.Item("LastUpdatedBy")
                End If
                If Not IsDBNull(dr.Item("LastUpdatedOn")) Then
                    Item.LastUpdatedOn = dr.Item("LastUpdatedOn")
                End If
                Item.RowChanged = False
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing
            Return DataItems
        End Function
        '********************************Data Update Functions ********************************
        'Add To Feedback
        Public Function AddFeedback(ByVal objFeedback As Feedback) As Integer
            Dim param(8) As QueryParameter
            param(0) = New QueryParameter("Idx", Nothing, QueryParameterDirection.Output)
            param(1) = New QueryParameter("FeedbackCategoryIdx", objFeedback.Subject.Id, QueryParameterDirection.Input)
            param(2) = New QueryParameter("Comments", objFeedback.Comments.Trim(), QueryParameterDirection.Input)
            param(3) = New QueryParameter("Status", objFeedback.Status, QueryParameterDirection.Input)
            param(4) = New QueryParameter("User_FirstName", objFeedback.FromFirstName.Trim(), QueryParameterDirection.Input)
            param(5) = New QueryParameter("User_LastName", objFeedback.FromLastName.Trim(), QueryParameterDirection.Input)
            param(6) = New QueryParameter("User_Email", objFeedback.FromEmail.Trim(), QueryParameterDirection.Input)
            If (objFeedback.FromUser Is Nothing) Then
                param(7) = New QueryParameter("User_Idx", Nothing, QueryParameterDirection.Input)
            Else
                param(7) = New QueryParameter("User_Idx", objFeedback.FromUser.Id, QueryParameterDirection.Input)
            End If
            param(8) = New QueryParameter("CreatedBy", objFeedback.CreatedBy.Trim(), QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_CreateFeedback", param)
            Return param(0).Value
        End Function
        'Add To FeedbackResponse
        Public Function AddFeedbackResponse(ByVal objFeedbackResponse As FeedbackResponse) As Integer
            Dim param(4) As QueryParameter
            param(0) = New QueryParameter("Idx", Nothing, QueryParameterDirection.Output)
            param(1) = New QueryParameter("User_Idx", objFeedbackResponse.RespondedBy.Id, QueryParameterDirection.Input)
            param(2) = New QueryParameter("Feedback_Idx", objFeedbackResponse.Feedback.Id, QueryParameterDirection.Input)
            param(3) = New QueryParameter("Comments", objFeedbackResponse.Comments.Trim(), QueryParameterDirection.Input)
            param(4) = New QueryParameter("CreatedBy", objFeedbackResponse.CreatedBy.Trim(), QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_CreateFeedbackResponses", param)
            Return param(0).Value
        End Function
    End Class

End Namespace

