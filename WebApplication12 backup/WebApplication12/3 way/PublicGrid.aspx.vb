Imports System.Data
Imports System.Data.SqlClient
Public Class PublicGrid
    Inherits System.Web.UI.Page
    Public fname_admin As String
    Public lname_admin As String
    Public email_admin As String
    Public int_version As Int32
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label1.Text = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            email1.Text = newemailway1
            email_admin = emailAddress
        End If

        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = publicgrid_storage")
        Dim ids As String = email1.Text + "gamewin"
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM  public_storage_topics  order by [id] desc", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Public_grid_Repeater.DataSource = ds
        Public_grid_Repeater.DataBind()

        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = "SELECT [fname], [lname], [tabs] FROM [basicinfo] WHERE [email] = '" & Label1.Text & "'"
        cm.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cm.ExecuteReader

        If dr.HasRows Then

            dr.Read()
            fname_admin = dr.Item("fname")
            lname_admin = dr.Item("lname")
            fname.InnerText = dr.Item("fname") + dr.Item("lname")
            tab_person.InnerText = dr.Item("tabs")
            dr.Close()

        End If
        cnn1.Close()



        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        cnn1qwer.Open()
        Dim cmqwer As New SqlCommand
        Dim asdf As String = email1.Text + "profileimg"
        cmqwer.CommandText = "SELECT [img] FROM  " + asdf
        cmqwer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmqwer.ExecuteReader

        If drqwer.HasRows Then

            drqwer.Read()
            image1.Src = "\imgs\" + drqwer.Item("img")

        End If
        cnn1qwer.Close()
    End Sub
    Private Sub search_button_Click(sender As Object, e As System.EventArgs) Handles search_button.Click
        Dim textboxvalue As String = search_Box.Value
        If textboxvalue IsNot Nothing Then
            Response.Redirect("~/3 way/shower_topic.aspx?topicname=" + textboxvalue)
        End If
    End Sub
    Private Sub create_button_Click(sender As Object, e As System.EventArgs) Handles create_button.Click
        Dim file_type_var As String
        file_type_var = file_type.Value
        Dim topic_name_var As String
        topic_name_var = topic_name.Value
        Dim topic_type_Var As String
        topic_type_Var = type_topic.Value
        Dim discription_var As String
        discription_var = discription_var_input.Value
        Dim topic_tabs_var As String
        topic_tabs_var = tab_topic.Value
        If topic_type_Var = "General Topic" Then
            int_version = "1"
        ElseIf topic_type_Var = "Gaming Topic" Then
            int_version = "2"
        ElseIf topic_type_Var = "Meme" Then
            int_version = "4"
        ElseIf topic_type_Var = "Question" Then
            int_version = "5"
        ElseIf topic_type_Var = "Intelligent or Educational Discussion" Then
            int_version = "3"
        Else
            int_version = "1"
        End If

        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlstring As String
        myconn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = publicgrid_storage")
        myconn.Open()

        sqlstring = "INSERT INTO public_storage_topics ([topic_name],[num_comments],[discription],[date_day],[date_month],[date_year],[admin_fname],[admin_lname],[admin_email],[topic_tab],[type_topic],[image_src_topic]) VALUES ('" + topic_name_var + "', 0 , '" + discription_var + "' , '" + Date.Today.Day.ToString() + "' , '" + Date.Today.Month.ToString() + "' , '" + Date.Today.Year.ToString() + "' , '" + fname_admin + "' , '" + lname_admin + "' , '" + email_admin + "' , '" + topic_tabs_var + "' , '" + int_version.ToString() + "' , '" + file_type_var + "')"

        cmd = New SqlCommand(sqlstring, myconn)

        cmd.ExecuteNonQuery()
        myconn.Close()
        
        System.Threading.Thread.Sleep(2000)
    End Sub
End Class