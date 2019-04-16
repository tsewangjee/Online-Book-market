Imports System.Data.SqlClient
Imports System.Configuration

Public Class SignIn
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString").ConnectionString)
        con.Open()

        Dim checkUserQuery As String = "SELECT count(*) from Users where UserName= '" + TextBoxUserName.Text + "'"
        Dim com As SqlCommand = New SqlCommand(checkUserQuery, con)
        Dim temp As Integer = Convert.ToInt32(com.ExecuteScalar().ToString())
        con.Close()
        If temp = 1 Then

            con.Open()
            Dim checkPasswordQuery As String = "Select password from users where UserName ='" + TextBoxUserName.Text + "'"
            Dim passwordCom As SqlCommand = New SqlCommand(checkPasswordQuery, con)
            Dim password As String = passwordCom.ExecuteScalar().ToString()
            If password = TextBoxPassword.Text Then
                Session("New") = TextBoxUserName.Text
                Response.Write("password is correct")
                Response.Redirect("Mybooks.aspx")
            Else
                Response.Write("incorrect password")
            End If
        Else
            Response.Write("Username incorrect")
        End If


    End Sub


End Class