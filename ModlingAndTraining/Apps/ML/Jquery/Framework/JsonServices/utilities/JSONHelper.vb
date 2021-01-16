Imports System.Collections.Generic
Imports System.Text
Imports System.Web.Script.Serialization
Imports System.Data
Imports Newtonsoft.Json

Namespace ML.DataModeling.Framework.Helper

    Public NotInheritable Class JSONHelper

        Private Sub New()

        End Sub

        Public Shared Function GetJsonString(ByVal ObjectoSerialize As [Object]) As String
            Return JsonConvert.SerializeObject(ObjectoSerialize)
        End Function

        Public Shared Function GetJsonString(ByVal Dt As DataTable) As String

            Dim StrDc As String() = New String(Dt.Columns.Count - 1) {}
            Dim HeadStr As String = String.Empty

            For i As Integer = 0 To Dt.Columns.Count - 1

                StrDc(i) = Dt.Columns(i).Caption

                HeadStr += """" & StrDc(i) & """ : """ & StrDc(i) & i.ToString() & "¾" & ""","
            Next

            HeadStr = HeadStr.Substring(0, HeadStr.Length - 1)

            Dim Sb As New StringBuilder()
            Sb.Append("{""" & Dt.TableName & """ : [")

            For i As Integer = 0 To Dt.Rows.Count - 1

                Dim TempStr As String = HeadStr
                Sb.Append("{")

                For j As Integer = 0 To Dt.Columns.Count - 1

                    TempStr = TempStr.Replace(Convert.ToString(Dt.Columns(j)) & j.ToString() & "¾", Dt.Rows(i)(j).ToString())
                Next

                Sb.Append(TempStr & "},")
            Next

            Sb = New StringBuilder(Sb.ToString().Substring(0, Sb.ToString().Length - 1))
            Sb.Append("]};")
            Return Sb.ToString()

        End Function

        Public Shared Function GetJsonString(ByVal Ds As DataSet) As String
            Dim d As New Dictionary(Of String, Object)()
            For Each table As DataTable In Ds.Tables
                d.Add(table.TableName, RowsToDictionary(table))
            Next
            Return GetJsonString(d)

        End Function

        Private Shared Function RowsToDictionary(ByVal table As DataTable) As List(Of Dictionary(Of String, Object))
            Dim objs As New List(Of Dictionary(Of String, Object))()
            For Each dr As DataRow In table.Rows
                Dim drow As New Dictionary(Of String, Object)()
                For i As Integer = 0 To table.Columns.Count - 1
                    drow.Add(table.Columns(i).ColumnName, dr(i))
                Next
                objs.Add(drow)
            Next

            Return objs
        End Function

    End Class

End Namespace