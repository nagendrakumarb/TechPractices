Imports ML.DataModeling.Framework.BusinessObjects
Imports System.Collections.Generic
Imports ML.Core
Imports MachineLearning.Data ' ADO.net connectivity
Namespace ML.DataModeling.Framework.DataProvider

    Public Class UserProvider
        Inherits BaseModel
        Public Sub New()
        End Sub
        'Get Functions
        Public Function GetUsers() As List(Of User)
            Dim DataItems As New List(Of User)
            Dim Item As User
            Dim dr As DataRow
            Dim ds As New DataSet()
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetAllUsers")
            For Each dr In ds.Tables(0).Rows
                Item = New User()
                Item = FillUserObject(Item, dr)
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing

            Return DataItems
        End Function
        Public Function GetUserById(ByVal intUserId As Integer) As User
            Dim Item As New User()
            Dim dr As DataRow
            Dim ds As New DataSet()
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("User_Idx", intUserId, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetUserByUserId", param)
            For Each dr In ds.Tables(0).Rows
                Item = FillUserObject(Item, dr)
            Next
            dr = Nothing
            ds = Nothing
            Return Item
        End Function
        Public Function GetUserByIds(ByVal strUserIds As String) As List(Of User)
            Dim DataItems As New List(Of User)
            Dim Item As User
            Dim dr As DataRow
            Dim ds As New DataSet()
            Dim param(0) As QueryParameter
            param(0) = New QueryParameter("User_Idxs", strUserIds, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetUserByUserIds", param)
            For Each dr In ds.Tables(0).Rows
                Item = New User()
                Item = FillUserObject(Item, dr)
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing

            Return DataItems
        End Function
        Public Function GetUserByLogin(ByVal strEmail As String, ByVal strPassword As String) As User
            Dim Item As New User()
            Dim dr As DataRow
            Dim ds As New DataSet()
            Dim param(1) As QueryParameter
            param(0) = New QueryParameter("User_Login", strEmail, QueryParameterDirection.Input)
            param(1) = New QueryParameter("User_Pwd", strPassword, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetUserByLogin", param)
            Item.Id = "0" ' this is added if no user is return
            For Each dr In ds.Tables(0).Rows
                Item = FillUserObject(Item, dr)
            Next
           
            dr = Nothing
            ds = Nothing
            Return Item
        End Function
        Public Function GetUserByLogin(ByVal strEmail As String) As User
            Dim Item As New User()
            Dim dr As DataRow
            Dim ds As New DataSet()
            Dim param(1) As QueryParameter
            param(0) = New QueryParameter("User_Login", strEmail, QueryParameterDirection.Input)
            param(1) = New QueryParameter("User_Pwd", Nothing, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetUserByLogin", param)
            Item.Id = "0" ' this is added if no user is return
            For Each dr In ds.Tables(0).Rows
                Item = FillUserObject(Item, dr)
            Next
            dr = Nothing
            ds = Nothing

            Return Item
        End Function
        Public Function GetAdminUsers() As List(Of User)
            Dim DataItems As New List(Of User)
            Dim Item As User
            Dim dr As DataRow
            Dim ds As New DataSet()
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetAdminUsers")
            For Each dr In ds.Tables(0).Rows
                Item = New User()
                Item = FillUserObject(Item, dr)
                DataItems.Add(Item)
            Next
            dr = Nothing
            ds = Nothing

            Return DataItems
        End Function
        Public Function GetEmailCcUsers() As List(Of User)
            Dim DataItems As New List(Of User)
            Dim Item As User
            Dim dr As DataRow
            Dim ds As New DataSet()
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetAdminUsers")
            For Each dr In ds.Tables(0).Rows
                Item = New User()
                Item = FillUserObject(Item, dr)
                If (Item.CopyEmail) Then
                    DataItems.Add(Item)
                End If
            Next
            dr = Nothing
            ds = Nothing

            Return DataItems
        End Function

        Private Function FillUserObject(ByVal Item As User, ByVal dr As DataRow) As User
            Item.Id = dr.Item("User_Idx")
            If Not IsDBNull(dr.Item("User_FirstName")) Then
                Item.FirstName = dr.Item("User_FirstName")
            End If
            If Not IsDBNull(dr.Item("User_LastName")) Then
                Item.LastName = dr.Item("User_LastName")
            End If
            If Not IsDBNull(dr.Item("User_Login")) Then
                Item.UserName = dr.Item("User_Login")
            End If
            If Not IsDBNull(dr.Item("User_Pwd")) Then
                Item.Password = dr.Item("User_Pwd")
            End If
            If Not IsDBNull(dr.Item("User_Email")) Then
                Item.Email = dr.Item("User_Email")
            End If
            If Not IsDBNull(dr.Item("User_Organization")) Then
                Item.Organization = dr.Item("User_Organization")
            End If
            If Not IsDBNull(dr.Item("User_Title")) Then
                Item.Title = dr.Item("User_Title")
            End If
            If Not IsDBNull(dr.Item("User_Phone")) Then
                Item.Phone = dr.Item("User_Phone")
            End If
            If Not IsDBNull(dr.Item("User_PwdChange")) Then
                Item.IsPasswordChanged = dr.Item("User_PwdChange")
            End If
            If Not IsDBNull(dr.Item("User_PwdLastUpdatedOn")) Then
                Item.PasswordLastUpdatedOn = dr.Item("User_PwdLastUpdatedOn")
            End If
            If Not IsDBNull(dr.Item("User_Active")) Then
                Item.IsActive = dr.Item("User_Active")
            End If
            If Not IsDBNull(dr.Item("User_Locked")) Then
                Item.IsLocked = dr.Item("User_Locked")
            End If
            If Not IsDBNull(dr.Item("User_IsAdmin")) Then
                Item.IsAdmin = dr.Item("User_IsAdmin")
            End If
            If Not IsDBNull(dr.Item("User_CopyEmail")) Then
                Item.CopyEmail = dr.Item("User_CopyEmail")
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
            Return Item
        End Function
        'Data Update Functions 
        Public Function AddUser(ByRef ObjUser As User) As Integer
            Dim param(13) As QueryParameter
            param(0) = New QueryParameter("User_Idx", Nothing, QueryParameterDirection.Output)
            param(1) = New QueryParameter("User_FirstName", ObjUser.FirstName.Trim(), QueryParameterDirection.Input)
            param(2) = New QueryParameter("User_LastName", ObjUser.LastName.Trim(), QueryParameterDirection.Input)
            param(3) = New QueryParameter("User_Login", ObjUser.UserName.Trim(), QueryParameterDirection.Input)
            param(4) = New QueryParameter("User_Pwd", ObjUser.Password.Trim(), QueryParameterDirection.Input)
            param(5) = New QueryParameter("User_Email", ObjUser.Email.Trim(), QueryParameterDirection.Input)
            param(6) = New QueryParameter("User_Organization", ObjUser.Organization.Trim(), QueryParameterDirection.Input)
            param(7) = New QueryParameter("User_Title", ObjUser.Title.Trim(), QueryParameterDirection.Input)
            param(8) = New QueryParameter("User_Phone", ObjUser.Phone.Trim(), QueryParameterDirection.Input)
            param(9) = New QueryParameter("User_PwdChange", ObjUser.IsPasswordChanged, QueryParameterDirection.Input)
            param(10) = New QueryParameter("User_Active", ObjUser.IsActive, QueryParameterDirection.Input)
            param(11) = New QueryParameter("User_Locked", ObjUser.IsLocked, QueryParameterDirection.Input)
            param(12) = New QueryParameter("User_IsAdmin", ObjUser.IsAdmin, QueryParameterDirection.Input)
            param(13) = New QueryParameter("CreatedBy", ObjUser.CreatedBy.Trim(), QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_CreateUser_Master", param)
            Return param(0).Value

        End Function
        Public Function UpdateUserPassword(ByRef ObjUser As User) As Integer
            Dim param(2) As QueryParameter
            param(0) = New QueryParameter("User_Idx", ObjUser.Id, QueryParameterDirection.Input)
            param(1) = New QueryParameter("User_Pwd", ObjUser.Password.Trim(), QueryParameterDirection.Input)
            param(2) = New QueryParameter("LastUpdatedBy", ObjUser.LastUpdatedBy.Trim(), QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_UpdatePassword_User_Master", param)
            Return param(0).Value
        End Function
        Public Function UpdateUserAdminStatus(ByRef ObjUser As User) As Integer
            Dim param(3) As QueryParameter
            param(0) = New QueryParameter("User_Idx", ObjUser.Id, QueryParameterDirection.Input)
            param(1) = New QueryParameter("User_IsAdmin", ObjUser.IsAdmin, QueryParameterDirection.Input)
            param(2) = New QueryParameter("User_CopyEmail", ObjUser.CopyEmail, QueryParameterDirection.Input)
            param(3) = New QueryParameter("LastUpdatedBy", ObjUser.LastUpdatedBy, QueryParameterDirection.Input)
            dbHelper.ExecuteNonQuery(QueryType.StoredProcedure, "API_UpdateAdminStatus_User_Master", param)
            Return param(0).Value
        End Function
        Public Function isUserExist(ByVal strEmail As String) As Boolean
            Dim blnUserExist = False
            Dim ds As New DataSet()
            Dim param(1) As QueryParameter
            param(0) = New QueryParameter("User_Login", strEmail, QueryParameterDirection.Input)
            param(1) = New QueryParameter("User_Pwd", Nothing, QueryParameterDirection.Input)
            ds = dbHelper.ExecuteQuery(QueryType.StoredProcedure, "API_GetUserByLogin", param)
            If (ds.Tables(0).Rows.Count > 0) Then
                blnUserExist = True
            End If
            ds = Nothing
            Return blnUserExist
        End Function

    End Class

End Namespace