Imports System.ServiceModel
Imports ML.DataModeling.MessageContract
Imports ML.DataModeling.DataContract
Namespace ML.DataModeling
    <ServiceContract(namespace:="http://MachineLearning.com/API/SOAP/Common/2011/03/09/DataModeling")> _
    Public Interface IDHService
        <OperationContract()> _
        <FaultContract(GetType(APIfaultDetails))> _
        Function GetSpreads(ByVal oSpreadRequest As SpreadRequest) As SpreadResponse

    End Interface
End Namespace

