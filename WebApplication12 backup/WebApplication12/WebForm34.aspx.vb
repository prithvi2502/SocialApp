Imports System.Net.Mail

Public Class WebForm34
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim SmtpServer As New SmtpClient("smtp.gmail.com")
        Dim mail As New MailMessage()
        SmtpServer.EnableSsl = True
        SmtpServer.Credentials = New System.Net.NetworkCredential("prithvi2502@gmail.com", "bhuppi2502")
        SmtpServer.Port = 587


        mail.From = New MailAddress("prithvi2502@gmail.com")
        mail.[To].Add("prithvi2502@gmail.com")
        mail.Subject = "test mail"
        mail.IsBodyHtml = True
        mail.Body = "this is test mail <a href='http://localhost:49159/Registration.aspx?userid=anjali'>Link to validate user page</a>"

        SmtpServer.Send(mail)
    End Sub
End Class