Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm24
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label16.Text = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            email12.Text = newemailway1
        End If
        eamil1.Text = Request("id").ToString()
        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = "SELECT [fname], [lname], [oneword], [whything] FROM [basicinfo] WHERE [email] = '" & eamil1.Text & "'"
        cm.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cm.ExecuteReader

        If dr.HasRows Then

            dr.Read()
            Label14.Text = dr.Item("fname").ToString
            Label15.Text = dr.Item("lname").ToString
            f_name.InnerText = dr.Item("fname").ToString
            f_name_2.InnerText = dr.Item("fname").ToString
            L_name_1.InnerText = dr.Item("lname").ToString
            somename.InnerText = dr.Item("oneword").ToString
            likewhy.InnerHtml = dr.Item("whything").ToString
            dr.Close()

        End If
        cnn1.Close()

        ''Not Working for validation pleace check the code
        ''Dim cnn1a As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessages")
        ''cnn1a.Open()

        ''Dim cma As New SqlCommand
        ''cma.CommandText = "SELECT [email] FROM ['" & email12.Text & "']   WHERE [email] = '" & eamil1.Text & "'"
        ''cma.Connection = cnn1a
        ''Dim dra As SqlDataReader
        ''dra = cma.ExecuteReader

        ''If dra.HasRows Then

        ''dra.Read()
        ''Response.Redirect("~/3 way/Search area.aspx?value=" + eamil1.Text)

        ''dra.Close()

        ''End If
        ''cnn1a.Close()

        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        cnn1qwer.Open()
        Dim cmqwer As New SqlCommand
        Dim asdf1 As String = eamil1.Text.Replace(".", "")
        Dim asdf As String = asdf1 + "profileimg"
        cmqwer.CommandText = "SELECT [img] FROM  " + asdf
        cmqwer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmqwer.ExecuteReader

        If drqwer.HasRows Then

            drqwer.Read()
            Image1.ImageUrl = "\imgs\" + drqwer.Item("img")


        End If
        cnn1qwer.Close()


        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        Dim ids As String = eamil1.Text
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [fname], [lname] FROM [basicinfo] WHERE [email] = '" & ids & "'", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Repeater4.DataSource = ds
        Repeater4.DataBind()
        Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [email], [works], [highschool], [college], [About], [hometown], [sex], [politicalviews], [mom], [Dad] FROM [tablefs1] WHERE [email] = '" & ids & "'", cnn)
        Dim ds1 As DataSet = New DataSet()
        cmd1.Fill(ds1)
        Repeater1.DataSource = ds1
        Repeater1.DataBind()
        Dim cmd2 As SqlDataAdapter = New SqlDataAdapter("SELECT [email], [gameinmusic2], [gameinmusic3], [gameinmusci4], [clan], [clanposition], [favgame], [gameinmusic], [whygames], [firstgame], [gamesys], [childhoodgames], [genreofgame] FROM [tablegc1] WHERE [email] = '" & ids & "'", cnn)
        Dim ds2 As DataSet = New DataSet()
        cmd2.Fill(ds2)
        Repeater2.DataSource = ds2
        Repeater2.DataBind()
    End Sub

    Protected Sub Unnamed1_Click(sender As Object, e As EventArgs)
        Dim ids As String = eamil1.Text.Replace(".", "")
        Dim myconn2 As New SqlConnection
        myconn2 = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessages")
        Dim cmd2 As New SqlCommand("sendrequest", myconn2)
        cmd2.CommandType = CommandType.StoredProcedure
        cmd2.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = ids
        cmd2.Parameters.Add("@fname", SqlDbType.VarChar).Value = Label14.Text
        cmd2.Parameters.Add("@lname", SqlDbType.VarChar).Value = Label15.Text
        cmd2.Parameters.Add("@email", SqlDbType.VarChar).Value = Label16.Text
        cmd2.Parameters.Add("@mesges", SqlDbType.VarChar).Value = Image1.ImageUrl
        myconn2.Open()
        cmd2.ExecuteNonQuery()
        myconn2.Close()
        buttonof.Text = "Request Sent"
    End Sub
End Class