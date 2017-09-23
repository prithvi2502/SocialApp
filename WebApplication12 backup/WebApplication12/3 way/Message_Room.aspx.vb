Imports System.Data.SqlClient
Imports System.Data
Public Class Message_Room
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
            Dim emailAddress As String = user.Email
            emailaddress_dot = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            emailaddress_nodot = newemailway1
        End If
        ''remember to make a friends you are looking for if statement eg
        '' If friendyourlookingfor = someting then
        ''      show messages from that friend from the database
        '' End If
        If Page.IsPostBack = False Then
            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessage")
            Dim ids As String = emailaddress_nodot
            Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM  " + ids + "MSG" + " ", cnn)
			Dim ds As DataSet = New DataSet()
			cmd.Fill(ds)
            repeater_message.DataSource = ds
            repeater_message.DataBind()

            Dim cnnnow As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessage")
            Dim idsnow As String = emailaddress_nodot
            Dim cmdnow As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM " + idsnow + "frd" + " ", cnn)
            Dim dsnow As DataSet = New DataSet()
            cmdnow.Fill(dsnow)
            friends_message_box_repeater.DataSource = ds
            friends_message_box_repeater.DataBind()

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
        ''If Page.IsPostBack = False Then
        '' Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        ''Dim ids As String = email1.Text
        ''Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT  [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where bornon = 0  order by [id] desc", cnn)
        ''Dim ds As DataSet = New DataSet()
        ''cmd.Fill(ds)
        ''Repeater1.DataSource = ds
        ''Repeater1.DataBind()
        ''End If

    End Sub
    Private Sub upload_Click(sender As Object, e As System.EventArgs) Handles upload.Click
        If person_name.InnerText = "Inbox" Then
            ''show a message saying pick a person

        Else
            Dim person_selected As String
            person_selected = person_name.InnerText

            Dim image_urle As String
            image_urle = "remember to put in the imamge sending feature"

            Dim commen1 As String
            commen1 = input_link.InnerText
            ''this will send them our message by putting it in thier table
            Dim myconn4asdf As New SqlConnection
            myconn4asdf = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessage")
            Dim cmd As New SqlCommand("AddMessage", myconn4asdf)
            cmd.CommandType = CommandType.StoredProcedure

            cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email_person.InnerText
            cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = fname
            ''we are sending our message to thier database, so they know who sent the message our sent message has to have our name on it so that is why we are putting our name on it 
            cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = lname
            cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = emailaddress_dot
            cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = commen1
            cmd.Parameters.Add("@date", SqlDbType.Date).Value = Date.Today
            cmd.Parameters.Add("image_url", SqlDbType.VarChar).Value = image_urle

            myconn4asdf.Open()
            cmd.ExecuteReader()

            myconn4asdf.Close()
            System.Threading.Thread.Sleep(2000)

            

            ''this will store the sent messages in our table also
            Dim connmy As New SqlConnection
            connmy = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessage")
            Dim command As New SqlCommand("AddMessage", connmy)
            command.CommandType = CommandType.StoredProcedure
            command.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = emailaddress_nodot
            command.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = fname
            command.Parameters.Add("@cclname", SqlDbType.VarChar).Value = lname
            command.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = emailaddress_dot
            command.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = commen1
            command.Parameters.Add("@date", SqlDbType.VarChar).Value = Date.Today
            command.Parameters.Add("image_url", SqlDbType.VarChar).Value = image_urle

            connmy.Open()
            command.ExecuteReader()

            connmy.Close()
            System.Threading.Thread.Sleep(2000)


            'finally we will refresh our own message table which will include the message we just sent
            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessage")
            Dim ids As String = emailaddress_nodot
            Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM  " + ids + "MSG" + "", cnn)
            Dim ds As DataSet = New DataSet()
            cmd1.Fill(ds)
            repeater_message.DataSource = ds
            repeater_message.DataBind()
            update_panel_of_stuffs.Update()
        End If
    End Sub
    Protected Sub Repeater1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs)
        Dim item As RepeaterItem = e.Item

        Dim image1 As Image = DirectCast(item.FindControl("profile_img_center"), Image)

        Dim label_email As Label = DirectCast(item.FindControl("Label3"), Label)
        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        cnn1qwer.Open()
        Dim cmqwer As New SqlCommand
        Dim asdf1 As String = label_email.Text.Replace(".", "")
        Dim asdf As String = asdf1 + "profileimg"
        cmqwer.CommandText = "SELECT top 1 [img] FROM  " + asdf.Replace(" ", "")
        cmqwer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmqwer.ExecuteReader

        If drqwer.HasRows Then

            drqwer.Read()
            image1.ImageUrl = "\imgs\" + drqwer.Item("img").ToString()


        End If
        cnn1qwer.Close()
    End Sub
End Class