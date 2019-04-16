Public Class AfterLogin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("New") IsNot Nothing Then
            If IsPostBack Then

            Else

                Label1.Text += Session("New").ToString()
            End If

        Else
            Response.Redirect("SignIn.aspx")
        End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Session.Remove("New")
        Response.Redirect("Home.aspx")
    End Sub
End Class