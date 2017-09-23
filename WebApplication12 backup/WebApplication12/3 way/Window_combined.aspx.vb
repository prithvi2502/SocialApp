Imports System.Data
Imports System.Data.SqlClient
Public Class Window_combined
    Inherits System.Web.UI.Page

    Public emailaddress_dot As String
    Public emailaddress_nodot As String
    Public fname As String
    Public lname As String
    Public fullname As String
    Public tab As String
    Public current_city As String
    Public imgs_profile_src As String
    Public entered_text As String
    Public query_new_retrive
    Public email_person_nodot


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            emailaddress_dot = user.Email
            emailaddress_nodot = emailaddress_dot.Replace(".", "")
        End If

        If Page.IsPostBack = False Then
            ''show the thing


            Dim connection As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = combination_window")
            connection.Open()
            Dim cmd As New SqlCommand
            cmd.CommandText = " SELECT * FROM list_query WHERE email = '" & emailaddress_dot & "'"
            cmd.Connection = connection
            Dim reader As SqlDataReader
            reader = cmd.ExecuteReader

            If reader.HasRows Then
                reader.Read()
                query_new_retrive = reader.Item("query_test")
                reader.Close()
            End If
            connection.Close()

            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")

            Dim cmd1 As SqlDataAdapter = New SqlDataAdapter(query_new_retrive, cnn)

            Dim ds As DataSet = New DataSet()
            cmd1.Fill(ds)
            Repeater1.DataSource = ds
            Repeater1.DataBind()


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
            Label11.Text = fname
            Label21.Text = lname
            HyperLink8fa.InnerText = fullname
            tab_label.InnerText = "$" + dr.Item("tabs")


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
            Image1as.Src = imgs_profile_src
            drqwer.Close()

        End If
        cnn1qwer.Close()
    End Sub
    Private Sub update_Click(sender As Object, e As System.EventArgs) Handles update.Click

        If FileUpload1.HasFile Then
            Dim comment1 As String
            comment1 = inputbox.InnerHtml
            Dim comment1a As String
            comment1a = comment1.Replace("\n", "<br>")
            Dim firsta As String
            firsta = inputbox.InnerHtml.Replace(System.Environment.NewLine, "<br/>")
            comment1a = firsta.ToString()
            FileUpload1.SaveAs("C:\Users\bhuppi\Desktop\New folder (13)\New folder (12)\New folder (7)\New folder (3)\WebApplication12 backup\WebApplication12\imgs\" & FileUpload1.FileName)
            Dim myconn4asdf As New SqlConnection
            myconn4asdf = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
            Dim cmd4asdf As New SqlCommand("addimage", myconn4asdf)
            cmd4asdf.CommandType = CommandType.StoredProcedure
            cmd4asdf.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email1.Text
            cmd4asdf.Parameters.Add("@description", SqlDbType.VarChar).Value = comment1a
            cmd4asdf.Parameters.Add("IMG", SqlDbType.VarChar).Value = FileUpload1.FileName
            cmd4asdf.Parameters.Add("like", SqlDbType.Int).Value = "0"
            cmd4asdf.Parameters.Add("dislike", SqlDbType.Int).Value = "0"
            cmd4asdf.Parameters.Add("@albumnname", SqlDbType.VarChar).Value = "None"
            myconn4asdf.Open()
            cmd4asdf.ExecuteNonQuery()
            myconn4asdf.Close()

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
            cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = emailaddress_nodot
            cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = Label11.Text.ToString()
            cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = Label21.Text.ToString()
            cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = emailaddress_dot
            cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = comment1a
            cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = Date.Today.Month
            cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = Date.Today.Day
            cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = Date.Today.Year
            cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccshared", SqlDbType.VarChar).Value = FileUpload1.FileName
            cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = Label31.Text.ToString()
            cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = Image1as.Src.ToString()
            cmd.Parameters.Add("@date", SqlDbType.Date).Value = Date.Today


            myconn.Open()
            cmd.ExecuteNonQuery()

            myconn.Close()
            System.Threading.Thread.Sleep(2000)

            Dim connection As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = combination_window")
            connection.Open()
            Dim cmd1 As New SqlCommand
            cmd1.CommandText = " SELECT * FROM list_query WHERE email = '" & emailaddress_dot & "'"
            cmd1.Connection = connection
            Dim reader As SqlDataReader
            reader = cmd1.ExecuteReader

            If reader.HasRows Then
                reader.Read()
                query_new_retrive = reader.Item("query_test")
                reader.Close()
            End If
            connection.Close()

            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            Dim ids As String = email1.Text
            Dim cmd12 As SqlDataAdapter = New SqlDataAdapter(query_new_retrive, cnn)

            Dim ds As DataSet = New DataSet()
            cmd12.Fill(ds)
            Repeater1.DataSource = ds
            Repeater1.DataBind()
            UpdatePanel2.Update()
        Else
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
            cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = emailaddress_nodot
            cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = Label11.Text.ToString()
            cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = Label21.Text.ToString()
            cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = emailaddress_dot
            cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = comment1a
            cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = Date.Today.Month
            cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = Date.Today.Day
            cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = Date.Today.Year
            cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccshared", SqlDbType.VarChar).Value = "0"
            cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = Label31.Text.ToString()
            cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = Image1as.Src.ToString()
            cmd.Parameters.Add("@date", SqlDbType.Date).Value = Date.Today

            myconn.Open()
            cmd.ExecuteNonQuery()

            myconn.Close()
            System.Threading.Thread.Sleep(2000)

            Dim connection As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = combination_window")
            connection.Open()
            Dim cmd1 As New SqlCommand
            cmd1.CommandText = " SELECT * FROM list_query WHERE email = '" & emailaddress_dot & "'"
            cmd1.Connection = connection
            Dim reader As SqlDataReader
            reader = cmd1.ExecuteReader

            If reader.HasRows Then
                reader.Read()
                query_new_retrive = reader.Item("query_test")
                reader.Close()
            End If
            connection.Close()

            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            Dim ids As String = email1.Text
            Dim cmd12 As SqlDataAdapter = New SqlDataAdapter(query_new_retrive, cnn)

            Dim ds As DataSet = New DataSet()
            cmd12.Fill(ds)
            Repeater1.DataSource = ds
            Repeater1.DataBind()
            UpdatePanel2.Update()
        End If
    End Sub
    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
        Dim connection As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = combination_window")
        connection.Open()
        Dim cmd As New SqlCommand
        cmd.CommandText = " SELECT * FROM list_query WHERE email = '" & emailaddress_dot & "'"
        cmd.Connection = connection
        Dim reader As SqlDataReader
        reader = cmd.ExecuteReader

        If reader.HasRows Then
            reader.Read()
            query_new_retrive = reader.Item("query_test")
            reader.Close()
        End If
        connection.Close()

        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        Dim ids As String = email1.Text
        Dim cmd1 As SqlDataAdapter = New SqlDataAdapter(query_new_retrive, cnn)

        Dim ds As DataSet = New DataSet()
        cmd1.Fill(ds)
        Repeater1.DataSource = ds
        Repeater1.DataBind()
        UpdatePanel2.Update()
    End Sub
    Protected Sub SetAsCompleteButton_Click(sender As Object, e As EventArgs)
        dropbox.Visible = True

    End Sub
    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs)
        Dim ddlType As Button = DirectCast(e.Item.FindControl("Button1"), Button)
        Dim email As Label = DirectCast(e.Item.FindControl("Label3"), Label)
        Dim email_person_nodot2 As String = email.Text.Replace(".", "")
        email_person_nodot = email.Text.Replace(".", "")
        If e.CommandName = "Button1" Then
            Dim cnn2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            cnn2.Open()
            Dim cm1 As New SqlCommand
            ''cm1.CommandText = "SELECT [thumbssup]+1 FROM " + email1.Text + " WHERE id= " + e.CommandArgument
            cm1.CommandText = "update  " + email_person_nodot + "  set thumbssup = (select thumbssup + 1 from " + email_person_nodot + " where id = " + e.CommandArgument + ") where id= " + e.CommandArgument
            cm1.Connection = cnn2
            Dim dr1 As SqlDataReader
            dr1 = cm1.ExecuteReader
            cnn2.Close()
            ''Problem: Conversion from string "Insert Into prithvi2502@gmailcom" to type 'Double' is not valid.
            ''To fix this problem make stored procedure it will take out the annoying problem.
            Dim cnn3 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            cnn3.Open()
            Dim cm2 As New SqlCommand
            cm2.CommandText = "Insert Into " + email_person_nodot2 + " (email, fname, lname, bornon, comments, thumbssup ) Values ( '" + emailaddress_dot + "' , '" + fname + "', '" + lname + "', '" + 3 + "', '" + e.CommandArgument + "', '" + 1 + "' )"
            cm2.Connection = cnn3
            Dim dr4 As SqlDataReader
            dr4 = cm2.ExecuteReader
            cnn3.Close()
            ''reminder create a new connection for the second sql statement ok ok ok.
        End If
        If e.CommandName = "Button2" Then
            Dim cnn2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            cnn2.Open()
            Dim cm1 As New SqlCommand
            ''cm1.CommandText = "SELECT [thumbssup]+1 FROM " + email1.Text + " WHERE id= " + e.CommandArgument
            cm1.CommandText = "update  " + email_person_nodot + "  set thumbsdown = (select thumbsdown + 1 from " + email_person_nodot + " where id = " + e.CommandArgument + ") where id= " + e.CommandArgument
            cm1.Connection = cnn2
            Dim dr1 As SqlDataReader
            dr1 = cm1.ExecuteReader
            cm1 = "Insert Into " + email_person_nodot2 + " (email, fname, lname, bornon, comments, thumbsdown ) Values( '" + emailaddress_dot + "' , '" + fname + "', '" + lname + "', '" + 4 + "', '" + e.CommandArgument + "', '" + 1 + "' )"
            dr1 = cm1.ExecuteReader
            cnn2.Close()

            Dim connection As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            connection.Open()
            Dim cmd As New SqlCommand
            cmd.CommandText = "Insert Into " + email_person_nodot2 + " (email, fname, lname, bornon, comments, thumbsdown ) Values( '" + emailaddress_dot + "' , '" + fname + "', '" + lname + "', '" + 4 + "', '" + e.CommandArgument + "', '" + 1 + "' )"
            cmd.Connection = connection
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            connection.Close()
        End If
        If e.CommandName = "Button1a" Then
            Dim item12 As RepeaterItem = e.Item

            Dim big_image_holder As HtmlGenericControl = DirectCast(item12.FindControl("big_image_holder"), HtmlGenericControl)
            Dim Image_big As HtmlImage = DirectCast(item12.FindControl("image_big_thing"), HtmlImage)

            If big_image_holder.Visible = True Then
                Dim myconn As New SqlConnection
                myconn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
                Dim cmd As New SqlCommand("NEW_COMMENT", myconn)
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
                Dim email42 As Label = DirectCast(item12.FindControl("Label3"), Label)
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
                cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email_person_nodot
                cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = Label11.Text.ToString()
                cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = Label21.Text.ToString()
                cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = email.Text
                cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = comment_var.Text.ToString()
                cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = Date.Today.Month
                cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = Date.Today.Day
                cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = Date.Today.Year
                cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "0"
                cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "0"
                cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = e.CommandArgument
                cmd.Parameters.Add("@ccshared", SqlDbType.Int).Value = "0"
                cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = Image_big.Src
                cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = 2
                cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = Image1as.Src

                myconn.Open()
                cmd.ExecuteNonQuery()

                myconn.Close()
                System.Threading.Thread.Sleep(1000)

                Dim PlayerRepeater As Repeater = DirectCast(item12.FindControl("Repeater2asdfqwer"), Repeater)
                Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
                Dim ids As String = email42.Text.Replace(".", "")
                Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where favgame = '" + Image_big.Src.ToString() + "'", cnn)
                Dim ds As DataSet = New DataSet()
                cmd1.Fill(ds)
                PlayerRepeater.DataSource = ds
                PlayerRepeater.DataBind()
                UpdatePanel2.Update()
                Dim panel As Panel = DirectCast(item12.FindControl("coolness_panel"), Panel)
                panel.Visible = True
                comment_var.Text = ""
            Else
                Dim email42 As Label = DirectCast(item12.FindControl("Label3"), Label)
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
                cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email_person_nodot
                cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = Label11.Text.ToString()
                cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = Label21.Text.ToString()
                cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = email.Text
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
                cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = Image1as.Src
                cmd.Parameters.Add("@date", SqlDbType.Date).Value = Date.Today
                myconn.Open()
                cmd.ExecuteNonQuery()

                myconn.Close()
                System.Threading.Thread.Sleep(1000)

                Dim PlayerRepeater As Repeater = DirectCast(item12.FindControl("Repeater2asdfqwer"), Repeater)
                Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
                Dim ids As String = email42.Text.Replace(".", "")
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


           
        End If
        Dim item1 As RepeaterItem = e.Item
        Dim panel1 As Panel = DirectCast(item1.FindControl("coolness_panel"), Panel)

        If e.CommandName = "Button1ae" Then
            panel1.Visible = True
        End If
    End Sub
    Protected Sub Repeater1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs)

        ''you have to figure out a way of showing photos and stuff like that by picking email id of the person then going into thier table and such
        ''like this: certinpost.email; goto their range table; find the comments realatable to the posts id. 

        Dim item As RepeaterItem = e.Item
        Dim big_image_holder As HtmlGenericControl = DirectCast(item.FindControl("big_image_holder"), HtmlGenericControl)
        Dim Image_big As HtmlImage = DirectCast(item.FindControl("image_big_thing"), HtmlImage)

        If Image_big.Src = "\imgs\0" Then
            Dim label1 As Label = DirectCast(item.FindControl("label_id"), Label)
            Dim email As Label = DirectCast(item.FindControl("Label3"), Label)
            Dim PlayerRepeater As Repeater = DirectCast(item.FindControl("Repeater2asdfqwer"), Repeater)
            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
            Dim ids As String = email.Text.Replace(".", "")
            ''dim ids as string =  email.text.replace(".","") , this will get the right info from the right table of the person who posted this post since it is like a feed
            Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " Where bornon = 2 and comments = " + label1.Text, cnn)
            Dim ds As DataSet = New DataSet()
            cmd1.Fill(ds)
            PlayerRepeater.DataSource = ds
            PlayerRepeater.DataBind()
        Else
            Dim label1 As Label = DirectCast(item.FindControl("label_id"), Label)
            Dim email As Label = DirectCast(item.FindControl("Label3"), Label)
            Dim PlayerRepeater As Repeater = DirectCast(item.FindControl("Repeater2asdfqwer"), Repeater)
            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
            Dim ids As String = email.Text.Replace(".", "")
            ''dim ids as string =  email.text.replace(".","") , this will get the right info from the right table of the person who posted this post since it is like a feed
            Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " Where favgame = '" + Image_big.Src.ToString() + "' ", cnn)
            Dim ds As DataSet = New DataSet()
            cmd1.Fill(ds)
            PlayerRepeater.DataSource = ds
            PlayerRepeater.DataBind()
        End If

        Dim labelid As Label = DirectCast(item.FindControl("label_id"), Label)
        Dim email_ofperson As Label = DirectCast(item.FindControl("Label3"), Label)
        If Image_big.Src = "\imgs\0" Then
            big_image_holder.Visible = False
        Else
            big_image_holder.Visible = True
        End If
        Dim linkbuttontumbup As LinkButton = DirectCast(item.FindControl("upbutton"), LinkButton)
        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = "SELECT [email] FROM " + email_ofperson.Text.Replace(".", "") + " where email = '" + emailaddress_dot + "'  and bornon = 3 and comments = '" + labelid.Text + "'"
        cm.Connection = cnn1
        Dim cmread As SqlDataReader
        cmread = cm.ExecuteReader
        If cmread.HasRows Then
            linkbuttontumbup.Enabled = False
            linkbuttontumbup.Text = "You gave this post a Thumbs Up"
        End If
        cnn1.Close()

        Dim linkbuttontumbdown As LinkButton = DirectCast(item.FindControl("downbutton"), LinkButton)
        Dim cnn2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
        cnn2.Open()
        Dim cm2 As New SqlCommand
        cm2.CommandText = " SELECT [email] FROM " + email_ofperson.Text.Replace(".", "") + " where email = '" + emailaddress_dot + "' and bornon = 4 and comments = '" + labelid.Text + "'"
        cm2.Connection = cnn2
        Dim cmread2 As SqlDataReader
        cmread2 = cm2.ExecuteReader
        If cmread2.HasRows Then
            linkbuttontumbdown.Enabled = False
            linkbuttontumbdown.Text = "You have gave this post a Tumbs Down"
        End If

        Dim image1 As Image = DirectCast(item.FindControl("Image2"), Image)
        Dim image2 As Image = DirectCast(item.FindControl("Image2a"), Image)
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
            image2.ImageUrl = "\imgs\" + drqwer.Item("img").ToString()


        End If
        cnn1qwer.Close()
    End Sub
    Private Sub clickey_Click(sender As Object, e As System.EventArgs) Handles clickey.Click
        If under_box.Visible = True Then
            under_box.Visible = False
        Else
            under_box.Visible = True
        End If

    End Sub
End Class