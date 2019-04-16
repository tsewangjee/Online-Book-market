Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            SetImageUrl()
        End If

    End Sub

    Protected Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        SetImageUrl()
    End Sub

    Private Sub SetImageUrl()
        Dim rand As Random = New Random()
        Dim i As Integer = rand.Next(1, 5)
        Image1.ImageUrl = "~/image/" + i.ToString() + ".jpg"
    End Sub
End Class

