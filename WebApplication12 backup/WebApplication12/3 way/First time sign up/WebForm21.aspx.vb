Imports System.Data.SqlClient
Public Class WebForm21
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Asdf.Text = emailAddress
        End If
    End Sub

    Protected Sub Button13_Click(sender As Object, e As EventArgs) Handles Button13.Click
        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlstring, gameinmusic, whygames, firstgame, gamesys, childhoodgames, genreofgame, email, gameinmusic2, gameinmusic3, gameinmusic4, favgame As String

        gameinmusic = label5.Text
        gameinmusic2 = label6.Text
        gameinmusic3 = label7.Text
        gameinmusic4 = label8.Text
        whygames = textbox1.Text
        firstgame = textbox2.Text
        gamesys = textbox3.text
        childhoodgames = textbox4.Text
        genreofgame = textbox5.Text
        email = Asdf.Text
        favgame = textbox6.Text


        myConn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        myConn.Open()

        sqlstring = "INSERT INTO tablegc1 (gameinmusic, whygames, firstgame, gamesys, childhoodgames, genreofgame, email, gameinmusic2, gameinmusic3, gameinmusci4, favgame) VALUES(  '" + gameinmusic + "' , '" + whygames + "' , '" + firstgame + "' , '" + gamesys + "' , '" + childhoodgames + "' , '" + genreofgame + "' , '" + email + "' , '" + gameinmusic2 + "' , '" + gameinmusic3 + "' , '" + gameinmusic4 + "' , '" + favgame + "' )"
        cmd = New SqlCommand(sqlstring, myConn)

        cmd.ExecuteNonQuery()
        myConn.Close()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If label5.Text = "NA" Then
            label5.Text = textybox.Text
        ElseIf label6.Text = "NA" Then
            label6.Text = textybox.Text
        ElseIf label7.Text = "NA" Then
            label7.Text = textybox.Text
        ElseIf label8.Text = "NA" Then
            label8.Text = textybox.Text
        End If
    End Sub
End Class