Imports System.Collections.Generic
Imports ML.DataModeling.Framework.BusinessObjects
Imports ML.DataModeling.Framework.Utility
Imports ML.Core
Imports MachineLearning.Data ' ADO.net connectivity
'Imports ML.Core.Utilities 'app level general extension methods
'Imports ML.Core.Security ' Extension methods for cryptography
Namespace ML.DataModeling.Framework.DataProvider

    Public Class CategorySourceProvider
        Inherits BaseModel
        Dim strFileExtension = "jpg"
        Public Sub New()

        End Sub
        Public Function GetCategories() As List(Of Category)
            Dim DataItems As New List(Of Category)
            Dim ds As New DataSet()
            Dim dr As DataRow
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetAllCategories")
            Dim Item As Category
            For Each dr In ds.Tables(0).Rows
                Item = New Category()
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
        Public Function GetCategorySourceByCategoryId(ByVal categoryId As Integer) As List(Of CategorySource)
            Dim DataItems As New List(Of CategorySource)
            Dim Item As CategorySource
            Dim ds As New DataSet()
            Dim dr As DataRow
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("CategoryIdx", categoryId, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetCategorySourceByCategory", param)

            For Each dr In ds.Tables(0).Rows
                Item = New CategorySource()
                Item.Id = dr.Item("Idx")
                If Not IsDBNull(dr.Item("Name")) Then
                    Item.Name = dr.Item("Name")
                End If
                Item.CategoryIdx = categoryId

                Item.SmallLogoUrl = Item.Id + "_min." + strFileExtension
                Item.BigLogoUrl = Item.Id + "_max." + strFileExtension
                If Not IsDBNull(dr.Item("ShortDesc")) Then
                    Item.ShortDescription = dr.Item("ShortDesc")
                End If
                If Not IsDBNull(dr.Item("LongDesc")) Then
                    Item.LongDescription = dr.Item("LongDesc")
                End If
                If Not IsDBNull(dr.Item("BusinessBenefits")) Then
                    Item.BusinessBenefits = dr.Item("BusinessBenefits")
                End If
                If Not IsDBNull(dr.Item("WebsiteUrl")) Then
                    Item.WebsiteUrl = dr.Item("WebsiteUrl")
                End If

                If Not IsDBNull(dr.Item("OpenInNewWindow")) Then
                    Item.OpenInNewWindow = dr.Item("OpenInNewWindow")
                End If

                If Not IsDBNull(dr.Item("Author")) Then
                    Item.Author = dr.Item("Author")
                End If

                If Not IsDBNull(dr.Item("AvgRating")) Then
                    Item.AverageRating = dr.Item("AvgRating")
                End If

                If Not IsDBNull(dr.Item("RatingCount")) Then
                    Item.RatingCount = dr.Item("RatingCount")
                End If

                If Not IsDBNull(dr.Item("Sort")) Then
                    Item.DisplayOrder = dr.Item("Sort")
                End If

                If Not IsDBNull(dr.Item("isUserFavourite")) Then
                    Item.isUserFavourite = dr.Item("isUserFavourite")
                End If
                If Not IsDBNull(dr.Item("Active")) Then
                    Item.isActive = dr.Item("Active")
                End If
                If Not IsDBNull(dr.Item("Consumable")) Then
                    Item.isConsumable = dr.Item("Consumable")
                End If
                Item.Tags = GetCategorySourceTags(Item.Id)
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing
            'For Each dtItem As CategorySource In DataItems
            '    dtItem.Tags = GetCategorySourceTags(dtItem.Id)
            'Next
            Return DataItems
        End Function
        Public Function GetAllCategorySource(ByVal intUserId As Object) As List(Of CategorySource)
            Dim DataItems As New List(Of CategorySource)
            Dim Item As CategorySource
            Dim ds As New DataSet()
            Dim dr As DataRow
            Dim param(0) As QueryParameter
            If (intUserId Is Nothing) Then
                param(0) = New QueryParameter("User_Idx", Nothing, QueryParameterDirection.Input)
            Else
                param(0) = New QueryParameter("User_Idx", Convert.ToInt64(intUserId), QueryParameterDirection.Input)
            End If
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetAllCategorySource", param)

            For Each dr In ds.Tables(0).Rows
                Item = New CategorySource()
                Item.Id = dr.Item("Idx")
                If Not IsDBNull(dr.Item("Name")) Then
                    Item.Name = dr.Item("Name")
                End If
                If Not IsDBNull(dr.Item("CategoryIdx")) Then
                    Item.CategoryIdx = dr.Item("CategoryIdx")
                End If

                Item.SmallLogoUrl = Item.Id + "_min." + strFileExtension
                Item.BigLogoUrl = Item.Id + "_max." + strFileExtension
                If Not IsDBNull(dr.Item("ShortDesc")) Then
                    Item.ShortDescription = dr.Item("ShortDesc")
                End If
                If Not IsDBNull(dr.Item("LongDesc")) Then
                    Item.LongDescription = dr.Item("LongDesc")
                End If
                If Not IsDBNull(dr.Item("BusinessBenefits")) Then
                    Item.BusinessBenefits = dr.Item("BusinessBenefits")
                End If
                If Not IsDBNull(dr.Item("WebsiteUrl")) Then
                    Item.WebsiteUrl = dr.Item("WebsiteUrl")
                End If

                If Not IsDBNull(dr.Item("OpenInNewWindow")) Then
                    Item.OpenInNewWindow = dr.Item("OpenInNewWindow")
                End If

                If Not IsDBNull(dr.Item("AvgRating")) Then
                    Item.AverageRating = dr.Item("AvgRating")
                End If

                If Not IsDBNull(dr.Item("RatingCount")) Then
                    Item.RatingCount = dr.Item("RatingCount")
                End If

                If Not IsDBNull(dr.Item("Sort")) Then
                    Item.DisplayOrder = dr.Item("Sort")
                End If

                If Not IsDBNull(dr.Item("isUserFavourite")) Then
                    Item.isUserFavourite = dr.Item("isUserFavourite")
                End If
                If Not IsDBNull(dr.Item("Active")) Then
                    Item.isActive = dr.Item("Active")
                End If
                If Not IsDBNull(dr.Item("Consumable")) Then
                    Item.isConsumable = dr.Item("Consumable")
                End If

                Item.Tags = GetCategorySourceTags(Item.Id)
                DataItems.Add(Item)
            Next
         
            dr = Nothing
            ds = Nothing
            'For Each dtItem As CategorySource In DataItems
            '    dtItem.Tags = GetCategorySourceTags(dtItem.Id)
            'Next
            Return DataItems
        End Function
        Public Function GetCategorySourceById(ByVal Idx As Integer, ByVal intUserId As Object) As CategorySource
            Dim ds As New DataSet()
            Dim dr As DataRow
            Dim Item As New CategorySource()
            Dim param(1) As QueryParameter
            param(0) = New QueryParameter("Idx", Idx, QueryParameterDirection.Input)
            If (intUserId Is Nothing) Then
                param(1) = New QueryParameter("User_Idx", Nothing, QueryParameterDirection.Input)
            Else
                param(1) = New QueryParameter("User_Idx", Convert.ToInt64(intUserId), QueryParameterDirection.Input)
            End If
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetCategorySourceByIdx", param)
            For Each dr In ds.Tables(0).Rows
                Item.Id = dr.Item("Idx")
                If Not IsDBNull(dr.Item("Name")) Then
                    Item.Name = dr.Item("Name")
                End If
                If Not IsDBNull(dr.Item("CategoryIdx")) Then
                    Item.CategoryIdx = dr.Item("CategoryIdx")
                End If

                Item.SmallLogoUrl = Item.Id + "_min." + strFileExtension
                Item.BigLogoUrl = Item.Id + "_max." + strFileExtension
                If Not IsDBNull(dr.Item("ShortDesc")) Then
                    Item.ShortDescription = dr.Item("ShortDesc")
                End If
                If Not IsDBNull(dr.Item("LongDesc")) Then
                    Item.LongDescription = dr.Item("LongDesc")
                End If
                If Not IsDBNull(dr.Item("BusinessBenefits")) Then
                    Item.BusinessBenefits = dr.Item("BusinessBenefits")
                End If
                If Not IsDBNull(dr.Item("WebsiteUrl")) Then
                    Item.WebsiteUrl = dr.Item("WebsiteUrl")
                End If

                If Not IsDBNull(dr.Item("OpenInNewWindow")) Then
                    Item.OpenInNewWindow = dr.Item("OpenInNewWindow")
                End If

                If Not IsDBNull(dr.Item("Author")) Then
                    Item.Author = dr.Item("Author")
                End If

                If Not IsDBNull(dr.Item("AvgRating")) Then
                    Item.AverageRating = dr.Item("AvgRating")
                End If

                If Not IsDBNull(dr.Item("RatingCount")) Then
                    Item.RatingCount = dr.Item("RatingCount")
                End If

                If Not IsDBNull(dr.Item("Sort")) Then
                    Item.DisplayOrder = dr.Item("Sort")
                End If

                If Not IsDBNull(dr.Item("isUserFavourite")) Then
                    Item.isUserFavourite = dr.Item("isUserFavourite")
                End If
                If Not IsDBNull(dr.Item("Active")) Then
                    Item.isActive = dr.Item("Active")
                End If
                If Not IsDBNull(dr.Item("Consumable")) Then
                    Item.isConsumable = dr.Item("Consumable")
                End If
                Item.Tags = GetCategorySourceTags(Idx)
            Next
            dr = Nothing
            ds = Nothing

            Return Item
        End Function
        Public Function GetCategorySourceTags(ByVal CategorySourceIdx As Integer) As List(Of Tags)
            Dim DataItems As New List(Of Tags)
            Dim Item As Tags
            Dim dr As DataRow
            Dim ds As New DataSet()
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("CategorySource_Idx", CategorySourceIdx, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetCategorySourceTags", param)
            For Each dr In ds.Tables(0).Rows
                Item = New Tags()
                Item.Id = dr.Item("Idx")
                If Not IsDBNull(dr.Item("Name")) Then
                    Item.Name = dr.Item("Name")
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
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing

            Return DataItems
        End Function
        '********************************Data Update Functions ********************************
        'Add To Category Source
        Public Function AddCategorySource(ByVal objCategorySource As CategorySource) As Integer
            Dim param(11) As QueryParameter
            param(0) = New QueryParameter("Idx", Nothing, QueryParameterDirection.Output)
            param(1) = New QueryParameter("CategorySource_Idx", objCategorySource.CategoryIdx, QueryParameterDirection.Input)
            param(2) = New QueryParameter("Name", objCategorySource.Name.Trim(), QueryParameterDirection.Input)
            param(3) = New QueryParameter("ShortDesc", objCategorySource.ShortDescription.Trim(), QueryParameterDirection.Input)
            param(4) = New QueryParameter("LongDesc", objCategorySource.LongDescription.Trim(), QueryParameterDirection.Input)
            param(5) = New QueryParameter("BusinessBenefits", objCategorySource.BusinessBenefits.Trim(), QueryParameterDirection.Input)
            param(6) = New QueryParameter("WebsiteUrl", objCategorySource.WebsiteUrl.Trim(), QueryParameterDirection.Input)
            param(7) = New QueryParameter("OpenInNewWindow", objCategorySource.OpenInNewWindow, QueryParameterDirection.Input)
            param(8) = New QueryParameter("Author", objCategorySource.Author.Trim(), QueryParameterDirection.Input)
            param(9) = New QueryParameter("Active", objCategorySource.isActive, QueryParameterDirection.Input)
            param(10) = New QueryParameter("Consumable", objCategorySource.isConsumable, QueryParameterDirection.Input)
            param(11) = New QueryParameter("CreatedBy", objCategorySource.CreatedBy.Trim(), QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_CreateCategorySource", param)
            Return param(0).Value
        End Function
        'Update Category Source
        Public Function UpdateCategorySource(ByVal objCategorySource As CategorySource) As Integer
            Dim param(11) As QueryParameter
            param(0) = New QueryParameter("Idx", objCategorySource.Id, QueryParameterDirection.Input)
            param(1) = New QueryParameter("CategorySource_Idx", objCategorySource.CategoryIdx, QueryParameterDirection.Input)
            param(2) = New QueryParameter("Name", objCategorySource.Name.Trim(), QueryParameterDirection.Input)
            param(3) = New QueryParameter("ShortDesc", objCategorySource.ShortDescription.Trim(), QueryParameterDirection.Input)
            param(4) = New QueryParameter("LongDesc", objCategorySource.LongDescription.Trim(), QueryParameterDirection.Input)
            param(5) = New QueryParameter("BusinessBenefits", objCategorySource.BusinessBenefits.Trim(), QueryParameterDirection.Input)
            param(6) = New QueryParameter("WebsiteUrl", objCategorySource.WebsiteUrl.Trim(), QueryParameterDirection.Input)
            param(7) = New QueryParameter("OpenInNewWindow", objCategorySource.OpenInNewWindow, QueryParameterDirection.Input)
            param(8) = New QueryParameter("Author", objCategorySource.Author.Trim(), QueryParameterDirection.Input)
            param(9) = New QueryParameter("Active", objCategorySource.isActive, QueryParameterDirection.Input)
            param(10) = New QueryParameter("Consumable", objCategorySource.isConsumable, QueryParameterDirection.Input)
            param(11) = New QueryParameter("LastUpdatedBy", objCategorySource.LastUpdatedBy.Trim(), QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_UpdateCategorySource", param)
            Return param(0).Value
        End Function
        'Delete Category Source
        Public Function DeleteCategorySource(ByVal objCategorySource As CategorySource) As Integer
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("Idx", objCategorySource.Id, QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_DeleteCategorySource", param)
            Return param(0).Value
        End Function
        'Update Category Source Statys
        Public Function UpdateCategorySourceStatus(ByVal objCategorySource As CategorySource) As Integer
            Dim param(2) As QueryParameter
            param(0) = New QueryParameter("Idx", objCategorySource.Id, QueryParameterDirection.Input)
            param(1) = New QueryParameter("Active", objCategorySource.isActive, QueryParameterDirection.Input)
            param(2) = New QueryParameter("LastUpdatedBy", objCategorySource.LastUpdatedBy, QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_UpdateCategorySourceStatus", param)
            Return param(0).Value
        End Function
        'Add To User Category Source
        Public Function AddToUserCategorySource(ByVal intUserIdx As Integer, ByVal intCategorySourceIdx As Integer) As Integer

            Dim param(1) As QueryParameter
            param(0) = New QueryParameter("User_Idx", intUserIdx, QueryParameterDirection.Input)
            param(1) = New QueryParameter("CategorySource_Idx", intCategorySourceIdx, QueryParameterDirection.Input)
            Return dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_CreateUserCategorySource", param)

        End Function
        'Delete From User Category Source
        Public Function DeleteUserCategorySource(ByVal intUserIdx As Integer, ByVal intCategorySourceIdx As Integer) As Integer

            Dim param(1) As QueryParameter
            param(0) = New QueryParameter("User_Idx", intUserIdx, QueryParameterDirection.Input)
            param(1) = New QueryParameter("CategorySource_Idx", intCategorySourceIdx, QueryParameterDirection.Input)
            Return dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_DeleteUserCategorySource", param)

        End Function
        'Update Category Source Rating
        Public Function UpdateCategorySourceRating(ByVal dblScore As Double, ByVal intCategorySourceIdx As Integer, ByVal intUserIdx As Integer) As RatingObject
            Dim param(4) As QueryParameter
            param(0) = New QueryParameter("Score", dblScore, QueryParameterDirection.Input)
            param(1) = New QueryParameter("User_Idx", intUserIdx, QueryParameterDirection.Input)
            param(2) = New QueryParameter("CategorySource_Idx", intCategorySourceIdx, QueryParameterDirection.Input)
            param(3) = New QueryParameter("OutScore", Nothing, QueryParameterDirection.Output)
            param(4) = New QueryParameter("OutRatingCount", Nothing, QueryParameterDirection.Output)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_CreateUserRating", param)
            Dim objRating = New RatingObject()
            objRating.AverageRating = param(3).Value
            objRating.RatingCount = param(4).Value
            objRating.CategorySourceIdx = intCategorySourceIdx
            Return objRating
        End Function
        'Add To Category Source Tags
        Public Function AddCategorySourceTags(ByVal objCategorySource As CategorySource, ByVal objTag As Tags) As Integer
            Dim param(1) As QueryParameter
            param(0) = New QueryParameter("Tag_Idx", objTag.Id, QueryParameterDirection.Input)
            param(1) = New QueryParameter("CategorySource_Idx", objCategorySource.Id, QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_CreateCategorySourceTags", param)
            Return param(0).Value
        End Function
        'Delete To Category Source Tags
        Public Function DeleteCategorySourceTags(ByVal objCategorySource As CategorySource) As Integer
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("CategorySource_Idx", objCategorySource.Id, QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_DeleteCategorySourceTags", param)
            Return param(0).Value
        End Function
    End Class

End Namespace

