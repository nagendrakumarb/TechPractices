Imports ML.DataModeling.Framework.Utility
Namespace ML.DataModeling.Framework.BusinessObjects
    Public Class FeedbackResponse
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
        Private _Feedback As Feedback
        Public Property Feedback() As Feedback
            Get
                Return _Feedback
            End Get
            Set(ByVal value As Feedback)
                _Feedback = value
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

        Private _RespondedBy As User
        Public Property RespondedBy() As User
            Get
                Return _RespondedBy
            End Get
            Set(ByVal value As User)
                _RespondedBy = value
            End Set
        End Property



    End Class
End Namespace


