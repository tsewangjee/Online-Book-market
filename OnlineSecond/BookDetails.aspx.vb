Imports System.Data.SqlClient
Imports System.Configuration
Imports System.IO




Public Class WebForm11
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim postedFile As HttpPostedFile = FileUpload1.PostedFile
        Dim fileName As String = Path.GetFileName(postedFile.FileName)
        Dim fileExtension As String = Path.GetExtension(fileName)
        Dim fileSize = postedFile.ContentLength()
        If fileExtension.ToLower() = ".jpg" OrElse fileExtension.ToLower() = ".bmp" OrElse fileExtension.ToLower() = ".png" Then
            Dim stream As Stream = postedFile.InputStream
            Dim binaryReader As BinaryReader = New BinaryReader(stream)
            Dim bytes As Byte() = binaryReader.ReadBytes(CType(stream.Length, Integer))

            Dim con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString").ConnectionString)

            Dim insertQuery As String = "AddBooks"
            Dim comm As SqlCommand = New SqlCommand(insertQuery, con)
            comm.CommandType = CommandType.StoredProcedure

            con.Open()


            comm.Parameters.AddWithValue("@UserName", Session("New").ToString())
            comm.Parameters.AddWithValue("@BookTitle", TextBox1.Text)
            comm.Parameters.AddWithValue("@CategoryType", DropDownList1.SelectedItem.ToString())
            comm.Parameters.AddWithValue("@Description", TextBox5.Text)
            comm.Parameters.AddWithValue("@Price", TextBox4.Text)
            comm.Parameters.AddWithValue("@AuthorName", TextBox2.Text)
            comm.Parameters.AddWithValue("@Status", DropDownList2.SelectedItem.ToString())
            comm.Parameters.AddWithValue("@Image", bytes)

            comm.ExecuteNonQuery()
            comm.Parameters.Clear()
            Label2.Text = "Record saved successfully"
            TextBox1.Text = ""
            TextBox5.Text = ""
            TextBox4.Text = ""
            TextBox2.Text = ""
            con.Close()

        Else
            Label3.Text = "Only images with (.jpg, .png, .bmp) extensions accepted"
        End If



    End Sub
End Class