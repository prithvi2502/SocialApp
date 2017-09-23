Imports System.Data.SqlClient
Public Class WebForm30
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If User IsNot Nothing Then
            Dim emailAddress As String = User.Email
            Label1.Text = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            Label2.Text = newemailway1
        End If

        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        Dim ids As String = Label2.Text + "img"
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [img] FROM " + ids, cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Repeater1img.DataSource = ds
        Repeater1img.DataBind()



    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If FileUpload1.HasFile Then
            FileUpload1.SaveAs("C:\Users\bhuppi\Desktop\New folder (13)\New folder (12)\New folder (7)\New folder (3)\WebApplication12 backup\WebApplication12\imgs\" & FileUpload1.FileName)
        End If
        Dim myconn4asdf As New SqlConnection
        myconn4asdf = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        Dim cmd4asdf As New SqlCommand("addimage", myconn4asdf)
        cmd4asdf.CommandType = CommandType.StoredProcedure
        cmd4asdf.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = Label2.Text
        cmd4asdf.Parameters.Add("@description", SqlDbType.VarChar).Value = TextBox1.Text
        cmd4asdf.Parameters.Add("IMG", SqlDbType.VarChar).Value = FileUpload1.FileName
        cmd4asdf.Parameters.Add("like", SqlDbType.Int).Value = "0"
        cmd4asdf.Parameters.Add("dislike", SqlDbType.Int).Value = "0"

        myconn4asdf.Open()
        cmd4asdf.ExecuteNonQuery()
        myconn4asdf.Close()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

    End Sub
End Class