Imports ML.DataModeling.Framework.BusinessObjects
Namespace ML.DataModeling.Framework.DataProvider
    Public Class CategoryProvider
        Public Sub New()

        End Sub
        Public Function GetCategories() As Categories
            Dim ObjCategories As New Categories()
            Dim ObjCategory1 As New Category
            ObjCategory1.Id = "1"
            ObjCategory1.Name = "Indicators"
            ObjCategory1.DisplayOrder = 1
            ObjCategories.Add(ObjCategory1)
            Dim ObjCategory2 As New Category
            ObjCategory1.Id = "2"
            ObjCategory1.Name = "Benchmark"
            ObjCategory1.DisplayOrder = 2
            ObjCategories.Add(ObjCategory2)
            Dim ObjCategory3 As New Category
            ObjCategory1.Id = "3"
            ObjCategory1.Name = "KPI's"
            ObjCategory1.DisplayOrder = 3
            ObjCategories.Add(ObjCategory3)
            Dim ObjCategory4 As New Category
            ObjCategory1.Id = "4"
            ObjCategory1.Name = "Metadata"
            ObjCategory1.DisplayOrder = 4
            ObjCategories.Add(ObjCategory4)
            Return ObjCategories
        End Function
    End Class
End Namespace

