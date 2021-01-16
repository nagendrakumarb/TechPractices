Namespace ML.DataModeling.Framework.BusinessObjects
    Public Class CategorySource
        Inherits Audit
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
        Private _CategoryIdx As Integer
        Public Property CategoryIdx() As Integer
            Get
                Return _CategoryIdx
            End Get
            Set(ByVal value As Integer)
                _CategoryIdx = value
            End Set
        End Property
        Private _SmallLogoUrl As String
        Public Property SmallLogoUrl() As String
            Get
                Return _SmallLogoUrl
            End Get
            Set(ByVal value As String)
                _SmallLogoUrl = value
            End Set
        End Property
        Private _BigLogoUrl As String
        Public Property BigLogoUrl() As String
            Get
                Return _BigLogoUrl
            End Get
            Set(ByVal value As String)
                _BigLogoUrl = value
            End Set
        End Property
        Private _ShortDescription As String
        Public Property ShortDescription() As String
            Get
                Return _ShortDescription
            End Get
            Set(ByVal value As String)
                _ShortDescription = value
            End Set
        End Property
        Private _LongDescription As String
        Public Property LongDescription() As String
            Get
                Return _LongDescription
            End Get
            Set(ByVal value As String)
                _LongDescription = value
            End Set
        End Property
        Private _BusinessBenefits As String
        Public Property BusinessBenefits() As String
            Get
                Return _BusinessBenefits
            End Get
            Set(ByVal value As String)
                _BusinessBenefits = value
            End Set
        End Property
        Private _WebsiteUrl As String
        Public Property WebsiteUrl() As String
            Get
                Return _WebsiteUrl
            End Get
            Set(ByVal value As String)
                _WebsiteUrl = value
            End Set
        End Property
        Private _OpenInNewWindow As Boolean
        Public Property OpenInNewWindow() As Boolean
            Get
                Return _OpenInNewWindow
            End Get
            Set(ByVal value As Boolean)
                _OpenInNewWindow = value
            End Set
        End Property
        Private _Author As String
        Public Property Author() As String
            Get
                Return _Author
            End Get
            Set(ByVal value As String)
                _Author = value
            End Set
        End Property
        Private _AverageRating As Decimal
        Public Property AverageRating() As Decimal
            Get
                Return _AverageRating
            End Get
            Set(ByVal value As Decimal)
                _AverageRating = value
            End Set
        End Property
        Private _RatingCount As Integer
        Public Property RatingCount() As Integer
            Get
                Return _RatingCount
            End Get
            Set(ByVal value As Integer)
                _RatingCount = value
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
        Private _isUserFavourite As Boolean = False
        Public Property isUserFavourite() As Boolean
            Get
                Return _isUserFavourite
            End Get
            Set(ByVal value As Boolean)
                _isUserFavourite = value
            End Set
        End Property
        Private _isActive As Boolean = True
        Public Property isActive() As Boolean
            Get
                Return _isActive
            End Get
            Set(ByVal value As Boolean)
                _isActive = value
            End Set
        End Property
        Private _isConsumable As Boolean = False
        Public Property isConsumable() As Boolean
            Get
                Return _isConsumable
            End Get
            Set(ByVal value As Boolean)
                _isConsumable = value
            End Set
        End Property
        Private _Tags As List(Of Tags)
        Public Property Tags() As List(Of Tags)
            Get
                Return _Tags
            End Get
            Set(ByVal value As List(Of Tags))
                _Tags = value
            End Set
        End Property
    End Class
End Namespace


