Imports System.ServiceModel
Imports System.Xml
Imports System.Xml.Serialization
Imports ML.DataModeling.MessageContract
Imports ML.DataModeling.DataContract
Namespace ML.DataModeling
    <ServiceBehavior(Namespace:="http://MachineLearning.com/API/SOAP/Common/2011/03/09/DataModeling")>
    Public Class DHService
        Implements IDHService

        Public Function GetSpreads(ByVal oSpreadRequest As ML.DataModeling.MessageContract.SpreadRequest) As ML.DataModeling.MessageContract.SpreadResponse Implements IDHService.GetSpreads
            Try
                Dim oSpreadData As New SpreadsData
                Return oSpreadData.GetSpreadData(oSpreadRequest.NoOfPeriodsPerYear, oSpreadRequest.Year, oSpreadRequest.BudgetNoOfYears, oSpreadRequest.StartCalenderMonth, oSpreadRequest.FYMonthStart)
            Catch ex As Exception
                Throw ex
            End Try
        End Function
    End Class
End Namespace

