' NOTE: If you change the class name "DHXRateservice" here, you must also update the reference to "DHXRateservice" in Web.config and in the associated .svc file.
Imports System.Collections.Generic
Imports System.Data
Imports System.Data.SqlClient
Namespace ML.DataModeling
    Public Class DHXRateservice
        Implements IDHXRateservice
        Public Function GetCurrencyList() As System.Collections.Generic.List(Of Currency) Implements IDHXRateservice.GetCurrencyList
            Try
                Dim CURLIST As New List(Of Currency)
                Dim objDS As DataSet
                Dim iCnt As Integer

                objDS = filldataset()
                If objDS.Tables("Table1").Rows.Count > 0 Then
                    For iCnt = 0 To objDS.Tables("Table1").Rows.Count - 1
                        Dim cur As New Currency
                        cur.CurrencyCode = objDS.Tables("Table1").Rows(iCnt).Item("CURRENCY_SYMBOL")
                        cur.CurrencyName = objDS.Tables("Table1").Rows(iCnt).Item("CURRENCY_NAME")
                        CURLIST.Add(cur)
                    Next
                End If
                If Not objDS Is Nothing Then
                    objDS.Dispose()
                    objDS = Nothing
                End If
                Return CURLIST
            Catch ex As Exception
                'HttpContext.Current.Response.Write(ex.Message)
                Throw ex
                'Return Nothing
            End Try

        End Function
        Public Function filldataset() As DataSet
            Dim strConnection As String = ConfigurationManager.ConnectionStrings("default").ConnectionString
            Dim conn As New SqlConnection(strConnection)
            Dim strSQL As String
            Dim ds As New DataSet
            Dim da As SqlDataAdapter
            strSQL = "select * from fmd_currency"
            Dim cmd As New SqlCommand(strSQL, conn)
            Try
                conn.Open()
                da = New SqlDataAdapter(cmd)
                da.Fill(ds, "table1")
                conn.Close()
                Return ds
            Catch ex As Exception
                Throw ex
            End Try

        End Function
    End Class
End Namespace