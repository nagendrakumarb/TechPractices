Imports System.ServiceModel
Imports System.Runtime.Serialization
Imports ML.DataModeling.DataContract

Namespace ML.DataModeling.MessageContract
    <MessageContract()> _
    Public Class SpreadRequest

        Private _NoOfPeriodsPerYear As Integer
        <MessageBodyMember(order:=0)> _
        Public Property NoOfPeriodsPerYear() As Integer
            Get
                Return _NoOfPeriodsPerYear
            End Get
            Set(ByVal value As Integer)
                _NoOfPeriodsPerYear = value
            End Set
        End Property

        Private _Year As Integer
        <MessageBodyMember(order:=1)> _
        Public Property Year() As Integer
            Get
                Return _Year
            End Get
            Set(ByVal value As Integer)
                _Year = value
            End Set
        End Property

        Private _BudgetNoOfYears As Integer
        <MessageBodyMember(order:=2)> _
        Public Property BudgetNoOfYears() As Integer
            Get
                Return _BudgetNoOfYears
            End Get
            Set(ByVal value As Integer)
                _BudgetNoOfYears = value
            End Set
        End Property

        Private _startCalenderMonth As Integer
        <MessageBodyMember(order:=3)> _
        Public Property StartCalenderMonth() As Integer
            Get
                Return _startCalenderMonth
            End Get
            Set(ByVal value As Integer)
                _startCalenderMonth = value
            End Set
        End Property

        Private _FYMonthStart As Integer
        <MessageBodyMember(order:=4)> _
        Public Property FYMonthStart() As Integer
            Get
                Return _FYMonthStart
            End Get
            Set(ByVal value As Integer)
                _FYMonthStart = value
            End Set
        End Property
    End Class

    <MessageContract()> _
    Public Class SpreadResponse
        Private _SpreadList As List(Of Spread)
        <MessageBodyMember(order:=0)> _
        Public Property SpreadList() As List(Of Spread)
            Get
                Return _SpreadList
            End Get
            Set(ByVal value As List(Of Spread))
                _SpreadList = value
            End Set
        End Property
    End Class
End Namespace

