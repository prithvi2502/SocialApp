Imports System.Data.SqlClient
Public Class WebForm20
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            labelel.Text = emailAddress
        End If
    End Sub



    Protected Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        If Label1.Text = "NA" Then
            Label1.Text = textbox1.Text
        ElseIf Label2.Text = "NA" Then
            Label2.Text = textbox1.Text
        ElseIf Label3.Text = "NA" Then
            Label3.Text = textbox1.Text
        ElseIf Label4.Text = "NA" Then
            Label4.Text = textbox1.Text
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If Label5.Text = "NA" Then
            Label5.Text = textbox2.Text
        ElseIf Label6.Text = "NA" Then
            Label6.Text = textbox2.Text
        ElseIf Label7.Text = "NA" Then
            Label7.Text = textbox2.Text
        ElseIf Label8.Text = "NA" Then
            Label8.Text = textbox2.Text
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If Label9.Text = "NA" Then
            Label9.Text = textbox3.Text
        ElseIf Label10.Text = "NA" Then
            Label10.Text = textbox3.Text
        ElseIf Label11.Text = "NA" Then
            Label11.Text = textbox3.Text
        ElseIf Label12.Text = "NA" Then
            Label12.Text = textbox3.Text
        End If
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        If Label13.Text = "NA" Then
            Label13.Text = textbox4.Text
        ElseIf Label14.Text = "NA" Then
            Label14.Text = textbox4.Text
        ElseIf Label15.Text = "NA" Then
            Label15.Text = textbox4.Text
        ElseIf Label16.Text = "NA" Then
            Label16.Text = textbox4.Text
        End If
    End Sub

    Protected Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        If Label17.Text = "NA" Then
            Label17.Text = textbox5.Text
        ElseIf Label18.Text = "NA" Then
            Label18.Text = textbox5.Text
        ElseIf Label19.Text = "NA" Then
            Label19.Text = textbox5.Text
        ElseIf Label20.Text = "NA" Then
            Label20.Text = textbox5.Text
        End If
    End Sub

    Protected Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        If Label21.Text = "NA" Then
            Label21.Text = textbox6.Text
        ElseIf Label22.Text = "NA" Then
            Label22.Text = textbox6.Text
        ElseIf Label23.Text = "NA" Then
            Label23.Text = textbox6.Text
        ElseIf Label24.Text = "NA" Then
            Label24.Text = textbox6.Text
        End If
    End Sub

    Protected Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        If Label25.Text = "NA" Then
            Label25.Text = textbox7.Text
        ElseIf Label26.Text = "NA" Then
            Label26.Text = textbox7.Text
        ElseIf Label27.Text = "NA" Then
            Label27.Text = textbox7.Text
        ElseIf Label28.Text = "NA" Then
            Label28.Text = textbox7.Text
        End If
    End Sub

    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        If Label29.Text = "NA" Then
            Label29.Text = textbox8.Text
        ElseIf Label30.Text = "NA" Then
            Label30.Text = textbox8.Text
        ElseIf Label31.Text = "NA" Then
            Label31.Text = textbox8.Text
        ElseIf Label32.Text = "NA" Then
            Label32.Text = textbox8.Text
        End If
    End Sub

    Protected Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        If Label33.Text = "NA" Then
            Label33.Text = textbox9.Text
        ElseIf Label34.Text = "NA" Then
            Label34.Text = textbox9.Text
        ElseIf Label35.Text = "NA" Then
            Label35.Text = textbox9.Text
        ElseIf Label36.Text = "NA" Then
            Label36.Text = textbox9.Text
        End If
    End Sub

    Protected Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        If Label37.Text = "NA" Then
            Label37.Text = textbox10.Text
        ElseIf Label38.Text = "NA" Then
            Label38.Text = textbox10.Text
        ElseIf Label39.Text = "NA" Then
            Label39.Text = textbox10.Text
        ElseIf Label40.Text = "NA" Then
            Label40.Text = textbox10.Text
        End If
    End Sub

    Protected Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        If Label41.Text = "NA" Then
            Label41.Text = textbox11.Text
        ElseIf Label42.Text = "NA" Then
            Label42.Text = textbox11.Text
        ElseIf Label43.Text = "NA" Then
            Label43.Text = textbox11.Text
        ElseIf Label44.Text = "NA" Then
            Label44.Text = textbox11.Text
        End If
    End Sub


    Protected Sub Button13_Click(sender As Object, e As EventArgs) Handles Button13.Click
        Dim myConn As New SqlConnection
        Dim cmd As SqlCommand
        Dim sqlstring As String


        Dim music As String = Label1.Text
        Dim movies As String = Label5.Text
        Dim books As String = Label9.Text
        Dim games As String = Label13.Text
        Dim athelete As String = Label17.Text
        Dim sports As String = Label21.Text
        Dim sportsteam As String = Label25.Text
        Dim activities As String = Label29.Text
        Dim inspire As String = Label33.Text
        Dim interests As String = Label37.Text
        Dim specialtoyou As String = Label41.Text
        Dim m2usic As String = Label2.Text
        Dim m2ovies As String = Label6.Text
        Dim b2ooks As String = Label10.Text
        Dim g2ames As String = Label14.Text
        Dim a2thelete As String = Label18.Text
        Dim s2ports As String = Label22.Text
        Dim s2portsteam As String = Label26.Text
        Dim a2ctivities As String = Label30.Text
        Dim i2nspire As String = Label34.Text
        Dim i2nterests As String = Label38.Text
        Dim s2pecialtoyou As String = Label42.Text
        Dim m3usic As String = Label3.Text
        Dim m3ovies As String = Label7.Text
        Dim b3ooks As String = Label11.Text
        Dim g3ames As String = Label15.Text
        Dim a3thelete As String = Label19.Text
        Dim s3ports As String = Label23.Text
        Dim s3portsteam As String = Label27.Text
        Dim a3ctivities As String = Label31.Text
        Dim i3nspire As String = Label35.Text
        Dim i3nterests As String = Label39.Text
        Dim s3pecialtoyou As String = Label43.Text
        Dim m4usic As String = Label4.Text
        Dim m4ovies As String = Label8.Text
        Dim b4ooks As String = Label12.Text
        Dim g4ames As String = Label16.Text
        Dim a4thelete As String = Label20.Text
        Dim s4ports As String = Label24.Text
        Dim s4portsteam As String = Label28.Text
        Dim a4ctivities As String = Label32.Text
        Dim i4nspire As String = Label36.Text
        Dim i4nterests As String = Label40.Text
        Dim s4pecialtoyou As String = Label44.Text
        Dim email As String = labelel.Text
        myConn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        myConn.Open()

        sqlstring = "INSERT INTO tabless2 (music, movies, books, games, athelete, sports, sportsteam, activities, inspire, interests, specialtoyou, m2usic, m2ovies, b2ooks, g2ames, a2thelete, s2ports, s2portsteam, a2ctivities, i2nspire, i2nterests, s2pecialtoyou, m3usic, m3ovies, b3ooks, g3ames, a3thelete, s3ports, s3portsteam, a3ctivities, i3nspire, i3nterests, s3pecialtoyou, m4usic, m4ovies, b4ooks, g4ames, a4thelete, s4ports, s4portsteam, a4ctivities, i4nspire, i4nterests, s4pecialtoyou, email) VALUES ('" + music + "','" + movies + "','" + books + "','" + games + "','" + athelete + "','" + sports + "','" + sportsteam + "','" + activities + "','" + inspire + "','" + interests + "','" + specialtoyou + "','" + m2usic + "','" + m2ovies + "','" + b2ooks + "','" + g2ames + "','" + a2thelete + "','" + s2ports + "','" + s2portsteam + "','" + a2ctivities + "','" + i2nspire + "','" + i2nterests + "','" + s2pecialtoyou + "','" + m3usic + "','" + m3ovies + "','" + b3ooks + "','" + g3ames + "','" + a3thelete + "','" + s3ports + "','" + s3portsteam + "','" + a3ctivities + "','" + i3nspire + "','" + i3nterests + "','" + s3pecialtoyou + "','" + m4usic + "','" + m4ovies + "','" + b4ooks + "','" + g4ames + "','" + a4thelete + "','" + s4ports + "','" + s4portsteam + "','" + a4ctivities + "','" + i4nspire + "','" + i4nterests + "','" + s4pecialtoyou + "','" + email + "')"

        cmd = New SqlCommand(sqlstring, myConn)

        cmd.ExecuteNonQuery()
        myConn.Close()
        System.Threading.Thread.Sleep(5000)
    End Sub
End Class