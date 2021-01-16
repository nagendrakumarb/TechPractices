Imports ML.DataModeling.DataContract
Imports ML.DataModeling.MessageContract
Imports System.Data.SqlClient
Namespace ML.DataModeling
    Public Class SpreadsData
        Public Function GetSpreadData(ByVal NoOfPeriodsPerYear As Integer, ByVal Year As Integer, ByVal BudgetNoOfYears As Integer, ByVal startCalMonth As Integer, ByVal FYStartMonth As Integer) As SpreadResponse
            Try
                Dim oConnection As New SqlConnection
                oConnection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings("default").ToString
                Dim objDA As New SqlDataAdapter
                Dim objCmd As New SqlCommand
                Dim objDS As New DataSet
                Dim oSQLParams(4) As SqlParameter
                oSQLParams(0) = New SqlParameter()
                oSQLParams(0).ParameterName = "@BudgetNoOfPeriods"
                oSQLParams(0).DbType = DbType.Int32
                oSQLParams(0).Direction = ParameterDirection.Input
                oSQLParams(0).Value = NoOfPeriodsPerYear

                oSQLParams(1) = New SqlParameter()
                oSQLParams(1).ParameterName = "@intYear"
                oSQLParams(1).DbType = DbType.Int32
                oSQLParams(1).Direction = ParameterDirection.Input
                oSQLParams(1).Value = Year

                oSQLParams(2) = New SqlParameter()
                oSQLParams(2).ParameterName = "@intBgtNoOfYears"
                oSQLParams(2).DbType = DbType.Int32
                oSQLParams(2).Direction = ParameterDirection.Input
                oSQLParams(2).Value = BudgetNoOfYears

                oSQLParams(3) = New SqlParameter()
                oSQLParams(3).ParameterName = "@fyStartCalanderMonth"
                oSQLParams(3).DbType = DbType.Int32
                oSQLParams(3).Direction = ParameterDirection.Input
                oSQLParams(3).Value = startCalMonth

                oSQLParams(4) = New SqlParameter()
                oSQLParams(4).ParameterName = "@cyFyMonthStart"
                oSQLParams(4).DbType = DbType.Int32
                oSQLParams(4).Direction = ParameterDirection.Input
                oSQLParams(4).Value = FYStartMonth

                objCmd.Connection = oConnection
                objCmd.Parameters.AddRange(oSQLParams)
                objCmd.CommandType = CommandType.StoredProcedure
                objCmd.CommandText = "DH_GetSpreadsByPeriod"
                objDA.SelectCommand = objCmd
                objDA.Fill(objDS, "Table1")

                Dim oSpreadResponse As New SpreadResponse
                Dim oSpreadList As New List(Of Spread)
                Dim oSpread As Spread
                Dim oSpreadPeriod As SpreadPeriod
                Dim oSpreadPeriodList As List(Of SpreadPeriod)
                If objDS.Tables(0).Rows.Count > 0 Then
                    For iCnt As Integer = 0 To objDS.Tables(0).Rows.Count - 1
                        oSpread = New Spread
                        oSpreadPeriodList = New List(Of SpreadPeriod)
                        oSpread.SpreadId = objDS.Tables(0).Rows(iCnt).Item(0) ''Spread Id
                        oSpread.SpreadName = objDS.Tables(0).Rows(iCnt).Item(1) '' Spread name
                        For jCnt As Integer = 2 To objDS.Tables(0).Columns.Count - 1
                            oSpreadPeriod = New SpreadPeriod
                            oSpreadPeriod.SpreadPeriod = objDS.Tables(0).Rows(iCnt).Item(jCnt)
                            oSpreadPeriodList.Add(oSpreadPeriod)
                        Next
                        oSpread.SpreadPeriodValue = oSpreadPeriodList
                        oSpreadList.Add(oSpread)
                        oSpread = Nothing
                    Next
                End If
                oSpreadResponse.SpreadList = oSpreadList
                Return oSpreadResponse
            Catch ex As Exception
                Throw ex
            End Try
        End Function
    End Class
End Namespace