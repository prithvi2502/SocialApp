Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm28
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label16.Text = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            email12.Text = newemailway1
        End If
        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = "SELECT [fname], [lname] FROM [basicinfo] WHERE [email] = '" & Label16.Text & "'"
        cm.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cm.ExecuteReader

        If dr.HasRows Then

            dr.Read()
            Label14.Text = dr.Item("fname")
            Label15.Text = dr.Item("lname")

            dr.Close()

        End If
        cnn1.Close()
        eamil1.Text = Request("id").ToString()
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        Dim ids As String = eamil1.Text
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [fname], [lname], [email] FROM [basicinfo] WHERE [email] = '" & ids & "'", cnn)
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
        Dim cmd3 As SqlDataAdapter = New SqlDataAdapter("SELECT [music], [movies], [books], [games], [athelete], [sports], [sportsteam], [activities],  [inspire], [interests], [specialtoyou], [m2usic], [m2ovies], [b2ooks], [g2ames], [a2thelete], [s2ports], [s2portsteam], [a2ctivities],  [i2nspire], [i2nterests], [s2pecialtoyou], [m3usic], [m3ovies], [b3ooks], [g3ames], [a3thelete], [s3ports], [s3portsteam], [a3ctivities],  [i3nspire], [i3nterests], [s3pecialtoyou], [m4usic], [m4ovies], [b4ooks], [g4ames], [a4thelete], [s4ports], [s4portsteam], [a4ctivities],  [i4nspire], [i4nterests], [s4pecialtoyou]  FROM [tabless2] WHERE [email] = '" & ids & "'", cnn)
        Dim ds3 As DataSet = New DataSet()
        cmd3.Fill(ds3)
        Repeater3.DataSource = ds3
        Repeater3.DataBind()

    End Sub

End Class