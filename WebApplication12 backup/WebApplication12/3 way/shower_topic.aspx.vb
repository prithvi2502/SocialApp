Imports System.Data
Imports System.Data.SqlClient
Public Class shower_topic
    Inherits System.Web.UI.Page
    Public topic_name_email As String
    Public admin_name As String
    Public admin_email As String
    Public topic_tab As String
    Public commenter_fname As String
    Public commenter_lname As String
    Public commenter_email As String
    Public commenter_image_src As String
    Public topic_name_var As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        topic_name_var = Request("topicname").ToString()
        Dim user As MembershipUser
        user = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label1.Text = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            email1.Text = newemailway1
            commenter_email = Label1.Text
        End If
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = publicgrid_storage")
        Dim ids As String = email1.Text + "gamewin"
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM  public_storage_comments where topic_name_email = '" & topic_name_var & "' order by [id] desc", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        conversation_grid.DataSource = ds
        conversation_grid.DataBind()

        Dim cnn1a As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = publicgrid_storage")
        cnn1a.Open()
        Dim cma As New SqlCommand
        cma.CommandText = "SELECT * FROM [public_storage_topics] WHERE [topic_name] = '" & topic_name_var & "'"
        cma.Connection = cnn1a
        Dim dra As SqlDataReader
        dra = cma.ExecuteReader

        If dra.HasRows Then
            dra.Read()
            admin_name = dra.Item("admin_fname") + dra.Item("admin_lname")
            admin_email = dra.Item("admin_email")
            topic_name_email = topic_name_var + admin_name + admin_email
            Dim discription As String
            discription = dra.Item("discription")
            Dim image_src = dra.Item("image_src_topic")
            Dim topic_tab = dra.Item("topic_tab")
            Dim topic_type = dra.Item("type_topic")
            admin_name_storage.InnerText = admin_name
            topic_tab_storage.InnerText = topic_tab
            topic_name_shower.InnerText = topic_name_var
            discription_shower.InnerText = discription.ToString().Replace("\n", "<br />")
            If topic_type = 1 Then
                topic_type_shower.InnerHtml = "General Topic"
            ElseIf topic_type = 2 Then
                topic_type_shower.InnerHtml = "Gaming Topic"
            ElseIf topic_type = 3 Then
                topic_type_shower.InnerHtml = "Intelligent or Educational Discussion"
            ElseIf topic_type = 4 Then
                topic_type_shower.InnerHtml = "Meme"
            ElseIf topic_type = 5 Then
                topic_type_shower.InnerHtml = "Question"
            End If
            dra.Close()
        End If
        cnn1a.Close()

        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = "SELECT [fname], [lname], [tabs] FROM [basicinfo] WHERE [email] = '" & Label1.Text & "'"
        cm.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cm.ExecuteReader

        If dr.HasRows Then

            dr.Read()

            fname.InnerText = dr.Item("fname") + dr.Item("lname")
            tab_person.InnerText = dr.Item("tabs")
            commenter_fname = dr.Item("fname")
            commenter_lname = dr.Item("lname")
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
    Private Sub update_Click(sender As Object, e As System.EventArgs) Handles update.Click
        
        Dim day1 As Integer
        day1 = Date.Today.Day
        Dim month1 As Integer
        month1 = Date.Today.Month
        Dim year1 As Integer
        year1 = Date.Today.Year
        Dim comment1 As String
        comment1 = textboxcool.Value
        Dim comment1a As String
        comment1a = comment1.Replace("\n", "<br>")
        Dim firsta As String
        firsta = textboxcool.Value.Replace(System.Environment.NewLine, "<br/>")
        comment1a = firsta.ToString()
        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlstring As String
        myconn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = publicgrid_storage")
        myconn.Open()

        sqlstring = "INSERT INTO public_storage_comments ([topic_name_email],[admin_email],[commenter_fname],[commenter_lname],[commenter_email],[comment_itself],[date_day_post],[date_month_post],[date_year_post],[thumbsup],[thumbsdown],[image_src],[image1_src],[topic_tab]) VALUES ('" + topic_name_var + "', '" + admin_email + "', '" + commenter_fname + "' , '" + commenter_lname + "' , '" + commenter_email + "' , '" + comment1a + "' , '" + Date.Today.Day.ToString() + "' , '" + Date.Today.Month.ToString() + "' , '" + Date.Today.Year.ToString() + "' , '" + "0" + "', '" + "0" + "', '" + image1.Src + "', '" + "level" + "', '" + topic_tab_storage.InnerText + "')"

        cmd = New SqlCommand(sqlstring, myconn)

        cmd.ExecuteNonQuery()
        myconn.Close()
       
    End Sub
End Class