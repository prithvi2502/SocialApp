Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm16
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If User IsNot Nothing Then
            Dim emailAddress As String = User.Email
            Dim newemailway As String = emailAddress.Replace(".", "")
            email1.Text = newemailway
        End If
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [c1] FROM [newTable]", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Repeater1.DataSource = ds
        Repeater1.DataBind()
    End Sub

    Private Sub update_Click(sender As Object, e As System.EventArgs) Handles update.Click
        Dim myconn As New SqlConnection
        myconn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim cmd As New SqlCommand("nowcomment", myconn)
        cmd.CommandType = CommandType.StoredProcedure
        ''Dim comment As New SqlParameter("@ccc1", SqlDbType.VarChar)
        ''comment.Direction = ParameterDirection.Output
        ''cmd.Parameters.Add(comment)
        ''comment.Value = inputbox.InnerText
        ''Dim tablename As New SqlParameter("@a_tmptbl", SqlDbType.VarChar)
        ''tablename.Direction = ParameterDirection.Output
        '' cmd.Parameters.Add(tablename)
        ''tablename.Value = "newTable"
        ''cmd.Parameters("@a_tmptbl").Direction = ParameterDirection.Input
        ''cmd.Parameters("@a_tmptbl").Value = "newTable"
        ''cmd.Parameters("@ccc1").Direction = ParameterDirection.Input
        ''cmd.Parameters("@ccc1").Value = Trim(inputbox.Value)
        cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = "newTable"
        cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = inputbox.Value
        cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = inputbox.Value
        cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = inputbox.Value
        cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = inputbox.Value
        cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = "6"
        cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = "6"
        cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = "6"
        cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "6"
        cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "6"
        cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = "6"
        cmd.Parameters.Add("@ccshared", SqlDbType.Int).Value = "6"
        cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = inputbox.Value
        cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = "6"
        cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = inputbox.Value

        myconn.Open()
        cmd.ExecuteNonQuery()

        myconn.Close()
        System.Threading.Thread.Sleep(5000)
    End Sub
    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [c1] FROM [newTable]", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Repeater1.DataSource = ds
        Repeater1.DataBind()
        UpdatePanel2.Update()
    End Sub
End Class