Namespace ML.DataModeling.Framework.BusinessObjects
    Public Class FeedbackCategory
        Public Sub New()
        End Sub
        Private _Id As String
        Public Property Id() As String
            Get
                Return _Id
            End Get
            Set(ByVal value As String)
                _Id = value
            End Set
        End Property
        Private _Name As String
        Public Property Name() As String
            Get
                Return _Name
            End Get
            Set(ByVal value As String)
                _Name = value
            End Set
        End Property
        Private _DisplayOrder As Integer
        Public Property DisplayOrder() As Integer
            Get
                Return _DisplayOrder
            End Get
            Set(ByVal value As Integer)
                _DisplayOrder = value
            End Set
        End Property
    End Class
End Namespace
