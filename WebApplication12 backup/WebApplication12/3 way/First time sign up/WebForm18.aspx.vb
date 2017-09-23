Imports System.Data.SqlClient
Public Class WebForm18
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label2.Text = emailAddress
        End If
    End Sub

    Protected Sub Unnamed6_Click(sender As Object, e As EventArgs)
        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlstring, Email, fname, lname As String

        Email = Label2.Text
        fname = textbox1.Text
        lname = textbox2.Text
        myConn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        myConn.Open()

        sqlstring = "INSERT INTO basicinfo (Email, fname, lname) VALUES ('" + Email + "', '" + fname + "', '" + lname + "')"

        cmd = New SqlCommand(sqlstring, myConn)

        cmd.ExecuteNonQuery()
        myConn.Close()

        Dim clean As String
        clean = Label2.Text
        Dim clean1 As String
        clean1 = clean.Replace(".", "")
        Dim clean3 As String = "Req"
        Dim clean2 As String
        clean2 = clean1 + clean3


       
        Dim myconn1 As New SqlConnection
        myconn1 = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim cmd1 As New SqlCommand("newtablefornewuser", myconn1)
        cmd1.CommandType = CommandType.StoredProcedure
        cmd1.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = clean1
        myconn1.Open()
        cmd1.ExecuteNonQuery()
        myconn1.Close()

        Dim myconn2 As New SqlConnection
        myconn2 = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessages")
        Dim cmd2 As New SqlCommand("Friends", myconn2)
        cmd2.CommandType = CommandType.StoredProcedure
        cmd2.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = clean1
        myconn2.Open()
        cmd2.ExecuteNonQuery()
        myconn2.Close()

        Dim myconn3 As New SqlConnection
        myconn3 = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessages")
        Dim cmd3 As New SqlCommand("Messages", myconn3)
        cmd3.CommandType = CommandType.StoredProcedure
        cmd3.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = clean1
        myconn3.Open()
        cmd3.ExecuteNonQuery()
        myconn3.Close()

        Dim myconn4 As New SqlConnection
        myconn4 = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = FriendsandMessages")
        Dim cmd4 As New SqlCommand("frindsrequest", myconn4)
        cmd4.CommandType = CommandType.StoredProcedure
        cmd4.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = clean1
        myconn4.Open()
        cmd4.ExecuteNonQuery()
        myconn4.Close()

        Dim myconn4asdf As New SqlConnection
        myconn4asdf = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        Dim cmd4asdf As New SqlCommand("createimageprofile", myconn4asdf)
        cmd4asdf.CommandType = CommandType.StoredProcedure
        cmd4asdf.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = clean1
        myconn4asdf.Open()
        cmd4asdf.ExecuteNonQuery()
        myconn4asdf.Close()

        Dim myconn4asdf1 As New SqlConnection
        myconn4asdf1 = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        Dim cmd4asdf1 As New SqlCommand("profileimage", myconn4asdf1)
        cmd4asdf1.CommandType = CommandType.StoredProcedure
        cmd4asdf1.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = clean1
        myconn4asdf1.Open()
        cmd4asdf1.ExecuteNonQuery()
        myconn4asdf1.Close()

        Dim myconn4asdf1a As New SqlConnection
        myconn4asdf1a = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        Dim cmd4asdf1a As New SqlCommand("NEW_COMMENT_TABLE", myconn4asdf1a)
        cmd4asdf1a.CommandType = CommandType.StoredProcedure
        cmd4asdf1a.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = clean1
        myconn4asdf1a.Open()
        cmd4asdf1a.ExecuteNonQuery()
        myconn4asdf1a.Close()

        Dim myconn4asdf1a1 As New SqlConnection
        myconn4asdf1a1 = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = games")
        Dim cmd4asdf1a1 As New SqlCommand("newgamerupdate", myconn4asdf1a1)
        cmd4asdf1a1.CommandType = CommandType.StoredProcedure
        cmd4asdf1a1.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = clean1
        myconn4asdf1a1.Open()
        cmd4asdf1a1.ExecuteNonQuery()
        myconn4asdf1a1.Close()
    End Sub
End Class