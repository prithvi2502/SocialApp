﻿Imports System.Data
Imports System.Data.SqlClient
Public Class WebForm16
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If User IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label1.Text = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            email1.Text = newemailway1
        End If
        If Page.IsPostBack = False Then
            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            Dim ids As String = email1.Text
            Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT  [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where bornon = 0  order by [id] desc", cnn)
            Dim ds As DataSet = New DataSet()
            cmd.Fill(ds)
            Repeater1.DataSource = ds
            Repeater1.DataBind()
        End If


        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = "SELECT [fname], [lname] FROM [basicinfo] WHERE [email] = '" & Label1.Text & "'"
        cm.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cm.ExecuteReader

        If dr.HasRows Then

            dr.Read()
            Label11.Text = dr.Item("fname")
            Label21.Text = dr.Item("lname")
            HyperLink8.Text = dr.Item("fname")
            HyperLink9.Text = dr.Item("lname")
            dr.Close()

        End If
        cnn1.Close()

        Dim cnn2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn2.Open()
        Dim cm1 As New SqlCommand
        cm1.CommandText = "SELECT [currentcity] FROM [tablefs1] WHERE [email] = '" & Label1.Text & "'"
        cm1.Connection = cnn2
        Dim dr1 As SqlDataReader
        dr1 = cm1.ExecuteReader

        If dr1.HasRows Then

            dr1.Read()
            Label31.Text = dr1.Item("currentcity")

            dr1.Close()

        End If
        cnn2.Close()


        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        cnn1qwer.Open()
        Dim cmqwer As New SqlCommand
        Dim asdf As String = email1.Text + "profileimg"
        cmqwer.CommandText = "SELECT [img] FROM  " + asdf
        cmqwer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmqwer.ExecuteReader

        If drqwer.HasRows Then

            drqwer.Read()
            Image1.ImageUrl = "\imgs\" + drqwer.Item("img")


        End If
        cnn1qwer.Close()
        dropbox.Visible = False

    End Sub

    Private Sub update_Click(sender As Object, e As System.EventArgs) Handles update.Click
        Dim myconn As New SqlConnection
        myconn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim cmd As New SqlCommand("nowcomment", myconn)
        cmd.CommandType = CommandType.StoredProcedure
        Dim day1 As Integer
        day1 = Date.Today.Day
        Dim month1 As Integer
        month1 = Date.Today.Month
        Dim year1 As Integer
        year1 = Date.Today.Year
        Dim comment1 As String
        comment1 = inputbox.InnerHtml
        Dim comment1a As String
        comment1a = comment1.Replace("\n", "<br>")
        Dim firsta As String
        firsta = inputbox.InnerHtml.Replace(System.Environment.NewLine, "<br/>")
        comment1a = firsta.ToString()
        ''Dim comment As New SqlParameter("@ccc1", SqlDbType.VarChar)
        ''comment.Direction = ParameterDirection.Output
        ''cmd.Parameters.Add(comment)
        ''comment.Value = inputbox.InnerText
        ''Dim tablename As New SqlParameter("@a_tmptbl", SqlDbType.VarChar)
        ''tablename.Direction = ParameterDirection.Output
        '' cmd.Parameters.Add(tablename)
        ''tablename.Value = "newTable"
        ''cmd.Parameters("@a_tmptbl").Direction = ParameterDirection.Input
        ''cmd.Parameters("@a_tmptbl").Value = "newTable"
        ''cmd.Parameters("@ccc1").Direction = ParameterDirection.Input
        ''cmd.Parameters("@ccc1").Value = Trim(inputbox.Value)
        cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email1.Text
        cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = Label11.Text.ToString()
        cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = Label21.Text.ToString()
        cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = Label1.Text
        cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = comment1a
        cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = Date.Today.Month
        cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = Date.Today.Day
        cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = Date.Today.Year
        cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "0"
        cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "0"
        cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = "0"
        cmd.Parameters.Add("@ccshared", SqlDbType.Int).Value = "0"
        cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = Label31.Text.ToString()
        cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = "0"
        cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = Image1.ImageUrl

        myconn.Open()
        cmd.ExecuteNonQuery()

        myconn.Close()
        System.Threading.Thread.Sleep(2000)

        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim ids As String = email1.Text
        Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where bornon = 0  order by [id] desc", cnn)
        Dim ds As DataSet = New DataSet()
        cmd1.Fill(ds)
        Repeater1.DataSource = ds
        Repeater1.DataBind()
        UpdatePanel2.Update()
    End Sub
    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim ids As String = email1.Text
        Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where bornon = 0  order by [id] desc", cnn)
        Dim ds As DataSet = New DataSet()
        cmd.Fill(ds)
        Repeater1.DataSource = ds
        Repeater1.DataBind()
        UpdatePanel2.Update()
    End Sub
    Protected Sub SetAsCompleteButton_Click(sender As Object, e As EventArgs)
        dropbox.Visible = True

    End Sub
    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs)
        Dim ddlType As Button = DirectCast(e.Item.FindControl("Button1"), Button)
        If e.CommandName = "Button1" Then
            Dim cnn2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            cnn2.Open()
            Dim cm1 As New SqlCommand
            ''cm1.CommandText = "SELECT [thumbssup]+1 FROM " + email1.Text + " WHERE id= " + e.CommandArgument
            cm1.CommandText = "update  " + email1.Text + "  set thumbssup = (select thumbssup + 1 from " + email1.Text + " where id = " + e.CommandArgument + ") where id= " + e.CommandArgument
            cm1.Connection = cnn2
            Dim dr1 As SqlDataReader
            dr1 = cm1.ExecuteReader
            cnn2.Close()

        End If
        If e.CommandName = "Button2" Then
            Dim cnn2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            cnn2.Open()
            Dim cm1 As New SqlCommand
            ''cm1.CommandText = "SELECT [thumbssup]+1 FROM " + email1.Text + " WHERE id= " + e.CommandArgument
            cm1.CommandText = "update  " + email1.Text + "  set thumbssup = (select thumbssup + 1 from " + email1.Text + " where id = " + e.CommandArgument + ") where id= " + e.CommandArgument
            cm1.Connection = cnn2
            Dim dr1 As SqlDataReader
            dr1 = cm1.ExecuteReader
            cnn2.Close()

        End If
        If e.CommandName = "Button1a" Then
            Dim item12 As RepeaterItem = e.Item
            Dim myconn As New SqlConnection
            myconn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            Dim cmd As New SqlCommand("nowcomment", myconn)
            cmd.CommandType = CommandType.StoredProcedure
            Dim day1 As Integer
            day1 = Date.Today.Day
            Dim month1 As Integer
            month1 = Date.Today.Month
            Dim year1 As Integer
            year1 = Date.Today.Year
            Dim comment_var As TextBox
            comment_var = DirectCast(item12.FindControl("commentbox"), TextBox)
            For Each item As RepeaterItem In Repeater1.Items
                Dim txtName As TextBox = DirectCast(item.FindControl("commentbox"), TextBox)
                If txtName IsNot Nothing Then
                    'do something with val
                    Dim avale As String = txtName.Text
                End If
            Next

            ''Dim comment As New SqlParameter("@ccc1", SqlDbType.VarChar)
            ''comment.Direction = ParameterDirection.Output
            ''cmd.Parameters.Add(comment)
            ''comment.Value = inputbox.InnerText
            ''Dim tablename As New SqlParameter("@a_tmptbl", SqlDbType.VarChar)
            ''tablename.Direction = ParameterDirection.Output
            '' cmd.Parameters.Add(tablename)
            ''tablename.Value = "newTable"
            ''cmd.Parameters("@a_tmptbl").Direction = ParameterDirection.Input
            ''cmd.Parameters("@a_tmptbl").Value = "newTable"
            ''cmd.Parameters("@ccc1").Direction = ParameterDirection.Input
            ''cmd.Parameters("@ccc1").Value = Trim(inputbox.Value)
            cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email1.Text
            cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = Label11.Text.ToString()
            cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = Label21.Text.ToString()
            cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = email1.Text
            cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = comment_var.Text.ToString()
            cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = Date.Today.Month
            cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = Date.Today.Day
            cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = Date.Today.Year
            cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = e.CommandArgument
            cmd.Parameters.Add("@ccshared", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = Label31.Text.ToString()
            cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = 2
            cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = Image1.ImageUrl

            myconn.Open()
            cmd.ExecuteNonQuery()

            myconn.Close()
            System.Threading.Thread.Sleep(1000)

            Dim PlayerRepeater As Repeater = DirectCast(item12.FindControl("Repeater2asdfqwer"), Repeater)
            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            Dim ids As String = email1.Text
            Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where bornon = 2 and comments = " + e.CommandArgument, cnn)
            Dim ds As DataSet = New DataSet()
            cmd1.Fill(ds)
            PlayerRepeater.DataSource = ds
            PlayerRepeater.DataBind()
            UpdatePanel2.Update()
            Dim panel As Panel = DirectCast(item12.FindControl("coolness_panel"), Panel)
            panel.Visible = True
            comment_var.Text = ""
        End If
        Dim item1 As RepeaterItem = e.Item
        Dim panel1 As Panel = DirectCast(item1.FindControl("coolness_panel"), Panel)

        If e.CommandName = "Button1ae" Then
            panel1.Visible = True
        End If
    End Sub
    Protected Sub Repeater1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs)
        Dim item As RepeaterItem = e.Item
        Dim label1 As Label = DirectCast(item.FindControl("label_id"), Label)
        Dim PlayerRepeater As Repeater = DirectCast(item.FindControl("Repeater2asdfqwer"), Repeater)
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim ids As String = email1.Text
        Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " Where bornon = 2 and comments = " + label1.Text, cnn)
        Dim ds As DataSet = New DataSet()
        cmd1.Fill(ds)
        PlayerRepeater.DataSource = ds
        PlayerRepeater.DataBind()
    End Sub
End Class