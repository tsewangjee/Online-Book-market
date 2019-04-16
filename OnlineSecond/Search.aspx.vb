Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub SearchButton1_Click(sender As Object, e As EventArgs) Handles SearchButton1.Click
        If SearchTextBox.Text <> "" Then
            DataList1.DataSourceID = Nothing
            DataList1.DataSource = SqlDataSource2
            DataList1.DataBind()
        End If
    End Sub


    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        DataList1.DataSourceID = Nothing
        DataList1.DataSource = SqlDataSource1
        DataList1.DataBind()
    End Sub
End Class