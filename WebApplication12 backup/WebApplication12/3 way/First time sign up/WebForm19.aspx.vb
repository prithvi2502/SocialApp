Imports System.Data.SqlClient
Public Class WebForm19
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            textbox13.Text = emailAddress
        End If
    End Sub

    Protected Sub Unnamed6_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlstring, Email, works, whereborn, highschool, college, mom, dad, sibiling, about, phone, currentcity, hometown, whenborn, sex, politicalviews, quotes As String

        works = textbox1.Text
        highschool = textbox2.Text
        college = Textbox3.text
        mom = textbox6.Text
        dad = textbox7.Text
        sibiling = textbox8.Text
        About = textarea1.text
        phone = textbox14.Text
        currentcity = textbox4.Text
        hometown = textbox5.Text
        whenborn = textbox9.Text
        whereborn = textbox10.Text
        sex = textbox11.text
        politicalviews = textbox12.text
        quotes = textbox15.Text
        Email = textbox13.Text

        myConn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        myConn.Open()

        sqlstring = "INSERT INTO tablefs1 (Email, works, highschool, college, mom, dad, sibiling, about, phone, currentcity, hometown, whenborn, sex, politicalviews, quotes) VALUES ('" + Email + "', '" + works + "', '" + highschool + "','" + college + "', '" + mom + "', '" + dad + "', '" + sibiling + "', '" + about + "', '" + phone + "', '" + currentcity + "', '" + hometown + "', '" + whenborn + "', '" + sex + "', '" + politicalviews + "', '" + quotes + "')"

        cmd = New SqlCommand(sqlstring, myConn)

        cmd.ExecuteNonQuery()
        myConn.Close()
    End Sub
End Class