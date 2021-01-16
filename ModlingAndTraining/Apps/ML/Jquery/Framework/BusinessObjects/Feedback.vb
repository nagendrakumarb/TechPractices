Imports ML.DataModeling.Framework.Utility
Namespace ML.DataModeling.Framework.BusinessObjects
    Public Class Feedback
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
        Private _FromFirstName As String
        Public Property FromFirstName() As String
            Get
                Return _FromFirstName
            End Get
            Set(ByVal value As String)
                _FromFirstName = value
            End Set
        End Property
        Private _FromLastName As String
        Public Property FromLastName() As String
            Get
                Return _FromLastName
            End Get
            Set(ByVal value As String)
                _FromLastName = value
            End Set
        End Property

        Public ReadOnly Property DisplayName() As String
            Get
                Return Me.FromFirstName + " " + Me.FromLastName
            End Get

        End Property

        Private _FromEmail As String
        Public Property FromEmail() As String
            Get
                Return _FromEmail
            End Get
            Set(ByVal value As String)
                _FromEmail = value
            End Set
        End Property

        Private _FeedbackCategory As FeedbackCategory
        Public Property Subject() As FeedbackCategory
            Get
                Return _FeedbackCategory
            End Get
            Set(ByVal value As FeedbackCategory)
                _FeedbackCategory = value
            End Set
        End Property
        Private _FromUser As User
        Public Property FromUser() As User
            Get
                Return _FromUser
            End Get
            Set(ByVal value As User)
                _FromUser = value
            End Set
        End Property
        Private _Status As FeedbackStatus
        Public Property Status() As FeedbackStatus
            Get
                Return _Status
            End Get
            Set(ByVal value As FeedbackStatus)
                _Status = value
            End Set
        End Property
        Private _Comments As String
        Public Property Comments() As String
            Get
                Return _Comments
            End Get
            Set(ByVal value As String)
                _Comments = value
            End Set
        End Property



    End Class
End Namespace


