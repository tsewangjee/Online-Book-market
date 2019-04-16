Imports System.Data.SqlClient
Imports System.Configuration

Public Class WebForm9
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim ds As DataSet = getdata()
        Repeater1.DataSource = ds
        Repeater1.DataBind()
    End Sub
    Private Function getdata() As DataSet
        Dim con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString").ConnectionString)

        Dim Da As SqlDataAdapter = New SqlDataAdapter("select * from Books INNER JOIN Users ON Users.UserId = Books.UserID WHERE BookID=30", con)
        Dim ds As DataSet = New DataSet()
        Da.Fill(ds)
        Return ds

    End Function
End Class