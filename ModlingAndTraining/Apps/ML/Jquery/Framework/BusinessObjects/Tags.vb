Namespace ML.DataModeling.Framework.BusinessObjects
    Public Class Tags
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
        Private _IsAssociated As Boolean
        Public Property IsAssociated() As Boolean
            Get
                Return _IsAssociated
            End Get
            Set(ByVal value As Boolean)
                _IsAssociated = value
            End Set
        End Property
        Private _CategorySources As List(Of CategorySource)
        Public Property CategorySources() As List(Of CategorySource)
            Get
                Return _CategorySources
            End Get
            Set(ByVal value As List(Of CategorySource))
                _CategorySources = value
            End Set
        End Property
    End Class
End Namespace
