Namespace ML.DataModeling.Framework.BusinessObjects
    Public Class User
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
        Private _FirstName As String
        Public Property FirstName() As String
            Get
                Return _FirstName
            End Get
            Set(ByVal value As String)
                _FirstName = value
            End Set
        End Property
        Private _LastName As String
        Public Property LastName() As String
            Get
                Return _LastName
            End Get
            Set(ByVal value As String)
                _LastName = value
            End Set
        End Property

        Public ReadOnly Property DisplayName() As String
            Get
                Return Me.FirstName + " " + Me.LastName
            End Get

        End Property
        Private _UserName As String
        Public Property UserName() As String
            Get
                Return _UserName
            End Get
            Set(ByVal value As String)
                _UserName = value
            End Set
        End Property
        Private _Password As String
        Public Property Password() As String
            Get
                Return _Password
            End Get
            Set(ByVal value As String)
                _Password = value
            End Set
        End Property
        Private _Email As String
        Public Property Email() As String
            Get
                Return _Email
            End Get
            Set(ByVal value As String)
                _Email = value
            End Set
        End Property
        Private _Organization As String
        Public Property Organization() As String
            Get
                Return _Organization
            End Get
            Set(ByVal value As String)
                _Organization = value
            End Set
        End Property
        Private _Title As String
        Public Property Title() As String
            Get
                Return _Title
            End Get
            Set(ByVal value As String)
                _Title = value
            End Set
        End Property
        Private _Phone As String
        Public Property Phone() As String
            Get
                Return _Phone
            End Get
            Set(ByVal value As String)
                _Phone = value
            End Set
        End Property
        Private _isPasswordChanged As Boolean = False
        Public Property IsPasswordChanged() As Boolean
            Get
                Return _isPasswordChanged
            End Get
            Set(ByVal value As Boolean)
                _isPasswordChanged = value
            End Set
        End Property
        Private _PasswordLastUpdatedOn As DateTime
        Public Property PasswordLastUpdatedOn() As DateTime
            Get
                Return _PasswordLastUpdatedOn
            End Get
            Set(ByVal value As DateTime)
                _PasswordLastUpdatedOn = value
            End Set
        End Property
        Private _isActive As Boolean = False
        Public Property IsActive() As Boolean
            Get
                Return _isActive
            End Get
            Set(ByVal value As Boolean)
                _isActive = value
            End Set
        End Property
        Private _isLocked As Boolean = False
        Public Property IsLocked() As Boolean
            Get
                Return _isLocked
            End Get
            Set(ByVal value As Boolean)
                _isLocked = value
            End Set
        End Property
        Private _isAdmin As Boolean = False
        Public Property IsAdmin() As Boolean
            Get
                Return _isAdmin
            End Get
            Set(ByVal value As Boolean)
                _isAdmin = value
            End Set
        End Property
        Private _isCopyEmail As Boolean = False
        Public Property CopyEmail() As Boolean
            Get
                Return _isCopyEmail
            End Get
            Set(ByVal value As Boolean)
                _isCopyEmail = value
            End Set
        End Property


        
    End Class
End Namespace

