Imports Microsoft.VisualBasic
Imports System.ServiceModel
Imports System.Runtime.Serialization
Imports System.Collections.Generic



    <DataContract()> _
    Public Class Currency

        Private _currencyCode As String
        Private _currencyName As String

        <DataMember()> _
        Public Property CurrencyCode() As String
            Get
                Return Me._currencyCode
            End Get
            Set(ByVal value As String)
                Me._currencyCode = value
            End Set
        End Property

        <DataMember()> _
        Public Property CurrencyName() As String
            Get
                Return Me._currencyName
            End Get
            Set(ByVal value As String)
                Me._currencyName = value
            End Set
        End Property
    End Class



