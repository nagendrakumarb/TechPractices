Imports System.Collections.Generic
Imports ML.DataModeling.Framework.BusinessObjects
Imports ML.DataModeling.Framework.Utility
Imports ML.Core
Imports MachineLearning.Data 
Namespace ML.DataModeling.Framework.DataProvider

    Public Class TagsProvider
        Inherits BaseModel

        Public Sub New()

        End Sub
        Public Function GetTags() As List(Of Tags)
            Dim DataItems As New List(Of Tags)
            Dim Item As Tags
            Dim dr As DataRow
            Dim ds As New DataSet()
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetAllTags")
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
                If Not IsDBNull(dr.Item("isAssociated")) Then
                    Item.IsAssociated = dr.Item("isAssociated")
                End If
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing
            Return DataItems
        End Function
        '********************************Data Update Functions ********************************
        'Add To Tags
        Public Function AddTag(ByVal objTag As Tags) As Integer
            Dim param(2) As QueryParameter
            param(0) = New QueryParameter("Idx", Nothing, QueryParameterDirection.Output)
            param(1) = New QueryParameter("Name", objTag.Name.Trim(), QueryParameterDirection.Input)
            param(2) = New QueryParameter("CreatedBy", objTag.CreatedBy.Trim(), QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_CreateTag", param)
            Return param(0).Value
        End Function
        'Update Tags
        Public Function UpdateTag(ByVal objTag As Tags) As Integer
            Dim param(2) As QueryParameter
            param(0) = New QueryParameter("Idx", objTag.Id, QueryParameterDirection.Input)
            param(1) = New QueryParameter("Name", objTag.Name.Trim(), QueryParameterDirection.Input)
            param(2) = New QueryParameter("LastUpdatedBy", objTag.LastUpdatedBy.Trim(), QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_UpdateTag", param)
            Return param(0).Value
        End Function
        'Delete Tags
        Public Function DeleteTag(ByVal objTag As Tags) As Integer
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("Idx", objTag.Id, QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_DeleteTag", param)
            Return param(0).Value
        End Function
    End Class

End Namespace