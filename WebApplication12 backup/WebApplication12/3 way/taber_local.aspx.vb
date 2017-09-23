Imports System.Data.SqlClient
Imports System.Data
Public Class taber_local
    Inherits System.Web.UI.Page

    Public emailaddress_dot As String
    Public emailaddress_nodot As String
    Public fname As String
    Public lname As String
    Public tab As String
    Public fullname As String
    Public current_city As String
    Public imgs_profile_src As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            emailaddress_dot = user.Email
            emailaddress_nodot = user.Email.Replace(".", "")
        End If

        If Page.IsPostBack = False Then
            ''load tabs dedicated to this person 
            ''in the future for the friend
            ''show the thing
            Dim query_new_retrive As SqlCommand

            Dim connection As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = combination_window")
            connection.Open()
            Dim cmd As New SqlCommand
            cmd.CommandText = " SELECT * FORM tab_list_query WHERE email = '" & emailaddress_dot & "'"
            cmd.Connection = connection
            Dim reader As SqlDataReader
            reader = cmd.ExecuteReader

            If reader.HasRows Then
                reader.Read()
                query_new_retrive = reader.Item("query_test")
                reader.Close()
            End If
            connection.Close()

            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = tab_storage_public")
            Dim cmd1 As SqlDataAdapter = New SqlDataAdapter(query_new_retrive)
            Dim ds As DataSet = New DataSet()
            cmd1.Fill(ds)
            ''Repeater1.DataSource = ds
            ''Repeater1.DataBind()
        End If

        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = " SELECT [fname], [lname], [tabs] FROM [basicinfo] WHERE [email] = '" & emailaddress_dot & "'"
        cm.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cm.ExecuteReader
        If dr.HasRows Then

            dr.Read()
            fname = dr.Item("fname")
            lname = dr.Item("lname")
            fullname = dr.Item("fname") + " " + dr.Item("lname")
            dr.Close()

        End If
        cnn1.Close()

        Dim cnn2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn2.Open()
        Dim cm1 As New SqlCommand
        cm1.CommandText = " SELECT [currentcity] FROM [tablefs1] WHERE [email] = '" & emailaddress_dot & "'"
        cm1.Connection = cnn2
        Dim dr1 As SqlDataReader
        dr1 = cm1.ExecuteReader

        If dr1.HasRows Then

            dr1.Read()
            current_city = dr1.Item("currentcity")
            dr1.Close()

        End If
        cnn2.Close()

        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        cnn1qwer.Open()
        Dim cmqwer As New SqlCommand
        Dim asdf As String = emailaddress_nodot + "profileimg"
        cmqwer.CommandText = "SELECT [img] FROM " + asdf
        cmqwer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmqwer.ExecuteReader

        If drqwer.HasRows Then

            drqwer.Read()
            imgs_profile_src = "\imgs\" + drqwer.Item("img")
            drqwer.Close()

        End If
        cnn1qwer.Close()
    End Sub

    Private Sub upload_Click(sender As Object, e As System.EventArgs) Handles upload.Click
        Dim tab_text As String
        tab_text = tab_textbox.Value

        Dim date_today As String
        date_today = Date.Today

        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlsting As String

        myConn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = publicgrid_storage")
        myConn.Open()

        sqlsting = "INSERT INTO tabpub ([email_dot],[fname],[lname],[tab_next],[likes],[dislikes],[reposts],[refrences_embbeding],[root1],[image_url],[comments],[date_today],[topic_name_email],[admin_email],[image1_src],[topic_tab]) VALUES ('" + emailaddress_dot + "', '" + fname + "', '" + lname + "' , '" + tab_text + "' , '" + 0 + "' , '" + 0 + "' , '" + 0 + "' , '" + 0 + "' , '" + "none" + "' , '" + "none" + "', '" + 0 + "', '" + date_today + "', '" + "none" + "', '" + "none" + "', '" + "none" + "', '" + "none" + "' )"

        cmd = New SqlCommand(sqlsting, myConn)
        cmd.ExecuteNonQuery()

        myConn.Close()

    End Sub

    ''put code here for liking and dislike and embedding tabs using repeater_command sub method
End Class