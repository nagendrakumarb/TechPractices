Imports System.ServiceModel
Imports System.Runtime.Serialization
Namespace ML.DataModeling.DataContract

    <DataContract()>
    Public Class Spread

        Private _SpreadId As Integer
        <DataMember()>
        Public Property SpreadId() As Integer
            Get
                Return _SpreadId
            End Get
            Set(ByVal value As Integer)
                _SpreadId = value
            End Set
        End Property

        Private _SpreadName As String
        <DataMember()>
        Public Property SpreadName() As String
            Get
                Return _SpreadName
            End Get
            Set(ByVal value As String)
                _SpreadName = value
            End Set
        End Property

        Private _SpreadPeriod As List(Of SpreadPeriod)
        <DataMember()>
        Public Property SpreadPeriodValue() As List(Of SpreadPeriod)
            Get
                Return _SpreadPeriod
            End Get
            Set(ByVal value As List(Of SpreadPeriod))
                _SpreadPeriod = value
            End Set
        End Property
    End Class

    <DataContract()>
    Public Class SpreadPeriod
        Private _SpreadPeriod As String
        <DataMember()>
        Public Property SpreadPeriod() As String
            Get
                Return _SpreadPeriod
            End Get
            Set(ByVal value As String)
                _SpreadPeriod = value
            End Set
        End Property
    End Class
    <DataContract()>
    Public Class APIfaultDetails
        Private _ModuleName As String
        Private _message As String
        <DataMember()>
        Public Property ModuleName() As String
            Get
                Return _ModuleName
            End Get
            Set(ByVal value As String)
                _ModuleName = value
            End Set
        End Property

        <DataMember()>
        Public Shadows Property Message() As String
            Get
                Return _message
            End Get
            Set(ByVal value As String)
                _message = value
            End Set
        End Property

        Sub New()

        End Sub

        Sub New(ByVal moduleName As String, ByVal message As String)
            Me.ModuleName = moduleName
            Me.Message = message
        End Sub

    End Class
End Namespace