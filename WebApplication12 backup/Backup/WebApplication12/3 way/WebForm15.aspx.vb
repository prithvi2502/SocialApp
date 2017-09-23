Imports System.Data.SqlClient
Public Class WebForm15
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label59.Text = emailAddress
        End If
    End Sub

    Protected Sub btn_save_Click(sender As Object, e As EventArgs) Handles btn_save.Click
        'If Label53.Text = String.Empty Or Label54.Text = String.Empty Or Label55.Text = String.Empty Or Label56.Text = String.Empty Or Label57.Text = String.Empty Or Label58.Text = String.Empty Or Label59.Text = String.Empty Then
        'ModalPopupExtender2.Show()

        'Else

        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlstring, Email, fname, lname, location, gender, born, game As String

        Email = Label59.Text
        fname = Label53.Text
        lname = Label54.Text
        location = Label57.Text
        gender = Label56.Text
        born = Label55.Text
        game = Label58.Text

        myConn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        myConn.Open()

        sqlstring = "INSERT INTO Emaildata (Email, fname, lname, favgame) VALUES ('" + Email + "', '" + fname + "', '" + lname + "','" + game + "')"

        cmd = New SqlCommand(sqlstring, myConn)

        cmd.ExecuteNonQuery()
        myConn.Close()
        Button13.Visible = True

    End Sub
End Class