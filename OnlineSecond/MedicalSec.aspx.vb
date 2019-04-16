Imports System.Data.SqlClient
Imports System.IO

Public Class WebForm6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As DataSet = GetData()

        GridView1.DataSource = ds
        GridView1.DataBind()
    End Sub
    Private Function GetData() As DataSet
        Dim con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString").ConnectionString)
        Dim da As SqlDataAdapter = New SqlDataAdapter("select * from Books where CategoryType='Medical'", con)
        Dim ds As DataSet = New DataSet()
        da.Fill(ds)
        Return ds
    End Function

End Class