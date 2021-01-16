Imports System.ServiceModel

Namespace ML.DataModeling
    <ServiceContract(namespace:="http://MachineLearning.com/API/SOAP/Common/2011/03/09/DataModeling")> _
    Public Interface IDHXRateservice
        <OperationContract()> _
        Function GetCurrencyList() As List(Of Currency)
    End Interface
End Namespace