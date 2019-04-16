Imports System.Data.SqlClient
Imports System.Configuration


Public Class SignUp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If IsPostBack Then
            Dim con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString").ConnectionString)
            con.Open()

            Dim checkUserQuery As String = "SELECT count(*) from [Users] where UserName= '" & TextBox1.Text & "'"
            Dim com As SqlCommand = New SqlCommand(checkUserQuery, con)
            Dim temp As Integer = Convert.ToInt32(com.ExecuteScalar().ToString())
            con.Close()
            If temp = 1 Then
                Response.Write("User already exists")

            Else
                Try

                    con.Open()

                    Dim insertQuery As String = "insert into users (UserName, FullName, Email, Phone, Address, Password) values (@UserName,@FullName,@Email, @Phone, @Address, @Password)"
                    Dim comm As SqlCommand = New SqlCommand(insertQuery, con)
                    comm.Parameters.AddWithValue("@UserName", TextBox1.Text)
                    comm.Parameters.AddWithValue("@FullName", TextBox2.Text)
                    comm.Parameters.AddWithValue("@Email", TextBox3.Text)
                    comm.Parameters.AddWithValue("@Phone", TextBox4.Text)
                    comm.Parameters.AddWithValue("@Address", TextBox5.Text)
                    comm.Parameters.AddWithValue("@Password", TextBox6.Text)

                    comm.ExecuteNonQuery()
                    Response.Write("Registration successful !")
                    Response.Redirect("SignIn.aspx")
                    con.Close()

                Catch ex As Exception
                    Response.Write("error:" + ex.ToString())

                End Try

            End If

        End If


    End Sub


End Class