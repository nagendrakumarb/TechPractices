Namespace ML.DataModeling.Framework.BusinessObjects
    Public Class Audit
        Public Sub New()
        End Sub
        Private _createdBy As String
        Public Property CreatedBy() As String
            Get
                Return _createdBy
            End Get
            Set(ByVal value As String)
                _createdBy = value
            End Set
        End Property
        Private _createdOn As DateTime
        Public Property CreatedOn() As DateTime
            Get
                Return _createdOn
            End Get
            Set(ByVal value As DateTime)
                _createdOn = value
            End Set
        End Property
        Private _createdOnDisplay As String
        Public Property CreatedOnDisplay() As String
            Get
                Return _createdOnDisplay
            End Get
            Set(ByVal value As String)
                _createdOnDisplay = value
            End Set
        End Property
        Private _lastUpdatedBy As String
        Public Property LastUpdatedBy() As String
            Get
                Return _lastUpdatedBy
            End Get
            Set(ByVal value As String)
                _lastUpdatedBy = value
            End Set
        End Property
        Private _lastUpdatedOn As DateTime
        Public Property LastUpdatedOn() As DateTime
            Get
                Return _lastUpdatedOn
            End Get
            Set(ByVal value As DateTime)
                _lastUpdatedOn = value
            End Set
        End Property
        Private _rowChanged As Boolean
        Public Property RowChanged() As Boolean
            Get
                Return _rowChanged
            End Get
            Set(ByVal value As Boolean)
                _rowChanged = value
            End Set
        End Property
    End Class

End Namespace

