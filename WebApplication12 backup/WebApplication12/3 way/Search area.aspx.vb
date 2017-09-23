Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm25
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Request("value").ToString()
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        Dim ids As String = Label1.Text
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [fname], [email], [lname] FROM [basicinfo] WHERE [fname] = '" & ids & "'", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Repeater1.DataSource = ds
        Repeater1.DataBind()
    End Sub


    Protected Sub Repeater1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs)
        Dim item As RepeaterItem = e.Item
        Dim image1 As HtmlImage = DirectCast(item.FindControl("cool_image"), HtmlImage)
        Dim label_email As Label = DirectCast(item.FindControl("email_lab"), Label)
        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        cnn1qwer.Open()
        Dim cmqwer As New SqlCommand
        Dim asdf1 As String = label_email.Text.Replace(".", "")
        Dim asdf As String = asdf1 + "profileimg"
        cmqwer.CommandText = "SELECT [img] FROM  " + asdf.Replace(" ", "")
        cmqwer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmqwer.ExecuteReader

        If drqwer.HasRows Then

            drqwer.Read()
            image1.Src = "\imgs\" + drqwer.Item("img").ToString()


        End If
        cnn1qwer.Close()
    End Sub
End Class