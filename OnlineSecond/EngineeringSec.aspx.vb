Imports System.Data.SqlClient
Imports System.IO

Public Class WebForm5
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As DataSet = GetData()

        Repeater1.DataSource = ds
        Repeater1.DataBind()


    End Sub
    Private Function GetData() As DataSet
        Dim con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString").ConnectionString)
        Dim da As SqlDataAdapter = New SqlDataAdapter("select * from Books where CategoryType='Engineering'", con)
        Dim ds As DataSet = New DataSet()
        da.Fill(ds)
        Return ds
    End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim btn As Button = (TryCast(sender, Button))
        Dim id As String = btn.CommandArgument
        Response.Redirect("BuyPage.aspx")

    End Sub
End Class