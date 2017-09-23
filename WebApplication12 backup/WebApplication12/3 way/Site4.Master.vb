Imports System.Data
Imports System.Data.SqlClient
Public Class Site4
    Inherits System.Web.UI.MasterPage
    Protected Sub btnsearch_Click(sender As Object, e As EventArgs) Handles btnsearch.Click
        Response.Redirect("~/3 way/Search area.aspx?value=" + TextBox1.Text)
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label4.Text = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            Label3.Text = newemailway1
            Textbox2.Text = newemailway1
        End If

        Dim cnn12 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn12.Open()
        Dim cm2 As New SqlCommand
        cm2.CommandText = "SELECT [fname], [lname] FROM [basicinfo] WHERE [email] = '" & Label4.Text & "'"
        cm2.Connection = cnn12
        Dim dr2 As SqlDataReader
        dr2 = cm2.ExecuteReader

        If dr2.HasRows Then

            dr2.Read()
            name.InnerText = dr2.Item("fname")
            brosifs.Text = dr2.Item("fname")
            Label5.Text = dr2.Item("lname")
            name_full.Text = dr2.Item("fname") + dr2.Item("lname")
            Page.Header.Title = dr2.Item("fname") + " " + dr2.Item("lname")
            dr2.Close()

        End If
        cnn12.Close()
        Dim cnn123 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn123.Open()
        Dim cm23 As New SqlCommand
        cm23.CommandText = "SELECT [favgame] FROM [tablegc1] WHERE [email] = '" & Label4.Text & "'"
        cm23.Connection = cnn123
        Dim dr23 As SqlDataReader
        dr23 = cm23.ExecuteReader

        If dr23.HasRows Then

            dr23.Read()
            brosifs1.Text = dr23.Item("favgame")
            dr23.Close()

        End If
        cnn123.Close()

        Dim cnn13 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn13.Open()
        Dim cm3 As New SqlCommand
        cm3.CommandText = "SELECT [highschool], [currentcity] FROM [tablefs1] WHERE [email] = '" & Label4.Text & "'"
        cm3.Connection = cnn13
        Dim dr3 As SqlDataReader
        dr3 = cm3.ExecuteReader

        If dr3.HasRows Then

            dr3.Read()
            brosifs2.Text = dr3.Item("highschool")
            brosifs3.Text = dr3.Item("currentcity")

            dr3.Close()

        End If
        cnn13.Close()
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessages")
        Dim ids As String = Label3.Text + "MSG"
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [fname], [Lname], [message], [email] FROM " + ids + "  order by [id] desc", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Repeater2.DataSource = ds
        Repeater2.DataBind()

        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessages")
        Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname], [Lname], [email], [message] FROM " + Label3.Text + " order by [id] desc", cnn)
        Dim ds1 As DataSet = New DataSet()
        cmd1.Fill(ds1)
        Repeater123.DataSource = ds1
        Repeater123.DataBind()

        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessages")
        Dim asdfljk As String = Label3.Text + "frd"
        Dim cmd1qwer As SqlDataAdapter = New SqlDataAdapter("SELECT [fname], [Lname], [email] FROM " + asdfljk + " order by [id] desc", cnn)
        Dim ds1qwer As DataSet = New DataSet()
        cmd1qwer.Fill(ds1qwer)
        Repeater1asdf.DataSource = ds1qwer
        Repeater1asdf.DataBind()
    End Sub
    Protected Sub Timer2_Tick(sender As Object, e As EventArgs)
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog =  FriendsandMessages")
        Dim ids As String = Label3.Text + "MSG"
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [fname], [Lname], [message], [email] FROM " + ids + " order by [id] desc", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Repeater2.DataSource = ds
        Repeater2.DataBind()
        UpdatePanel.Update()
    End Sub

    Protected Sub Repeater1asdf_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs)
        Dim item As RepeaterItem = e.Item
        Dim label1 As Label = DirectCast(item.FindControl("email_for_tabs"), Label)
        Dim label2 As Label = DirectCast(item.FindControl("tabs_to_put"), Label)
        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = "SELECT [fname], [lname], [email], [tabs] FROM [basicinfo] WHERE [email] = '" & label1.Text & "'"
        cm.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cm.ExecuteReader

        If dr.HasRows Then

            dr.Read()
            label2.Text = dr.Item("tabs")
            dr.Close()

        End If
        cnn1.Close()
    End Sub
    Private Sub update_Click(sender As Object, e As System.EventArgs) Handles upload_tab.ServerClick
        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlstring As String

        

        myConn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        myConn.Open()

        sqlstring = "UPDATE basicinfo SET tabs = '" + textbox_cool_textbox.Text + "' where email = '" + Label4.Text + "'"

        cmd = New SqlCommand(sqlstring, myConn)

        cmd.ExecuteNonQuery()
        myConn.Close()
    End Sub
    Public Sub close_ServerClick(sender As Object, e As System.EventArgs) Handles close.ServerClick
        friends.Visible = False
        bottomPart.Visible = True
    End Sub
    Public Sub open_ServerClick(sender As Object, e As System.EventArgs) Handles open.ServerClick
        If friends.Visible = True Then
            friends.Visible = False
            bottomPart.Visible = True
        Else
            friends.Visible = True
            bottomPart.Visible = False

        End If
    End Sub
End Class