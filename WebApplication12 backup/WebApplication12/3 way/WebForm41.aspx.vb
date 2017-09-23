Imports System.Data.SqlClient
Public Class WebForm41
    Inherits System.Web.UI.Page
    Public image_url As String
    Public _emailaddress As String
    Public _emailaddress_nodot As String
    Public _query_new_retrive
    Public fname As String
    Public lname As String
    Public fullname As String
    Public current_city As String
    Public imgae_profile As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            _emailaddress = user.Email
            _emailaddress_nodot = _emailaddress.Replace(".", "")
        End If
        If Page.IsPostBack = False Then

            Dim connection As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = combination_window")
            connection.Open()
            Dim command As New SqlCommand
            command.CommandText = " SELECT * FROM list_query_img WHERE email = '" & _emailaddress & "'"
            command.Connection = connection
            Dim reader As SqlDataReader
            reader = command.ExecuteReader
            ''make the table list_query_img
            If reader.HasRows Then
                reader.Read()
                _query_new_retrive = reader.Item("query_test")
                reader.Close()
            End If

            Dim connection2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
            Dim command2 As SqlDataAdapter = New SqlDataAdapter(_query_new_retrive, connection2)
            Dim _dataset As DataSet = New DataSet()
            command2.Fill(_dataset)
            reapeater_show_data.DataSource = _dataset
            reapeater_show_data.DataBind()

            'Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
            'Dim ids As String = Label2.Text + "img"
            'Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM " + ids, cnn)
            'Dim ds As DataSet = New DataSet()
            'cmd.Fill(ds)
            'reapeater_show_data.DataSource = ds
            'reapeater_show_data.DataBind()
        End If

        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cmd As New SqlCommand
        cmd.CommandText = " SELECT [fname], [lname], [tabs] FROM [basicinfo] WHERE [email] = '" & _emailaddress & "'"
        cmd.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            dr.Read()
            fname = dr.Item("fname")
            lname = dr.Item("lname")
            fullname = fname + lname
            name_all.InnerText = fullname
            dr.Close()
        End If
        cnn1.Close()

        Dim cnn2 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn2.Open()
        Dim cm1 As New SqlCommand
        cm1.CommandText = " SELECT [currentcity] FROM [tablefs1] WHERE [email] = '" & _emailaddress & "'"
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
        Dim cmquer As New SqlCommand
        Dim asdf As String = _emailaddress_nodot + "profileimg"
        cmquer.CommandText = "SELECT [img] FROM " + asdf
        cmquer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmquer.ExecuteReader
        If drqwer.HasRows Then
            drqwer.Read()
            imgae_profile = "/img/" + drqwer.Item("img")
            drqwer.Close()
        End If
        cnn1qwer.Close()
    End Sub
    Protected Sub Timer1_Tick(sender As Object, e As EventArgs)

    End Sub
    Protected Sub Repeater1_ItemCommand(source As Object, e As EventArgs)

    End Sub
    Protected Sub Repeater1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs)
        Dim item As RepeaterItem = e.Item
        Dim profile_image As Image = DirectCast(item.FindControl("Image3"), Image)
        ''create this label3 for email retrieval Error
        Dim label_email As Label = DirectCast(item.FindControl("Label3"), Label)
        Dim connection As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        connection.Open()
        Dim command As New SqlCommand
        Dim asdf As String = label_email.Text.Replace(".", "") + "profileimg"
        command.CommandText = "SELECT TOP 1 [img] FROM " + asdf
        command.Connection = connection
        Dim datareader As SqlDataReader
        datareader = command.ExecuteReader

        If datareader.HasRows Then
            datareader.Read()
            profile_image.ImageUrl = "\imgs\" + datareader.Item("img").ToString()
            datareader.Close()
        End If
        connection.Close()
    End Sub
    'Private Sub update_Click(sender As Object, e As System.EventArgs) Handles update.Click
    '    If FileUpload1.HasFile Then
    '        Dim comment1 As String
    '        comment1 = inputbox.InnerHtml
    '        Dim comment1a As String
    '        comment1a = comment1.Replace("\n", "<br>")
    '        Dim firsta As String
    '        firsta = inputbox.InnerHtml.Replace(System.Environment.NewLine, "<br/>")
    '        comment1a = firsta.ToString()
    '        FileUpload1.SaveAs("C:\Users\bhuppi\Desktop\New folder (13)\New folder (12)\New folder (7)\New folder (3)\WebApplication12 backup\WebApplication12\imgs\" & FileUpload1.FileName)
    '        Dim myconn4asdf As New SqlConnection
    '        myconn4asdf = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
    '        Dim cmd4asdf As New SqlCommand("addimage", myconn4asdf)
    '        cmd4asdf.CommandType = CommandType.StoredProcedure
    '        cmd4asdf.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email1.Text
    '        cmd4asdf.Parameters.Add("@description", SqlDbType.VarChar).Value = comment1a
    '        cmd4asdf.Parameters.Add("IMG", SqlDbType.VarChar).Value = FileUpload1.FileName
    '        cmd4asdf.Parameters.Add("like", SqlDbType.Int).Value = "0"
    '        cmd4asdf.Parameters.Add("dislike", SqlDbType.Int).Value = "0"
    '        cmd4asdf.Parameters.Add("@albumnname", SqlDbType.VarChar).Value = "None"
    '        myconn4asdf.Open()
    '        cmd4asdf.ExecuteNonQuery()
    '        myconn4asdf.Close()

    '        Dim myconn As New SqlConnection
    '        myconn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
    '        Dim cmd As New SqlCommand("nowcomment", myconn)
    '        cmd.CommandType = CommandType.StoredProcedure
    '        Dim day1 As Integer
    '        day1 = Date.Today.Day
    '        Dim month1 As Integer
    '        month1 = Date.Today.Month
    '        Dim year1 As Integer
    '        year1 = Date.Today.Year

    '        ''Dim comment As New SqlParameter("@ccc1", SqlDbType.VarChar)
    '        ''comment.Direction = ParameterDirection.Output
    '        ''cmd.Parameters.Add(comment)
    '        ''comment.Value = inputbox.InnerText
    '        ''Dim tablename As New SqlParameter("@a_tmptbl", SqlDbType.VarChar)
    '        ''tablename.Direction = ParameterDirection.Output
    '        '' cmd.Parameters.Add(tablename)
    '        ''tablename.Value = "newTable"
    '        ''cmd.Parameters("@a_tmptbl").Direction = ParameterDirection.Input
    '        ''cmd.Parameters("@a_tmptbl").Value = "newTable"
    '        ''cmd.Parameters("@ccc1").Direction = ParameterDirection.Input
    '        ''cmd.Parameters("@ccc1").Value = Trim(inputbox.Value)
    '        cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email1.Text
    '        cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = Label11.Text.ToString()
    '        cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = Label21.Text.ToString()
    '        cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = Label1.Text
    '        cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = comment1a
    '        cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = Date.Today.Month
    '        cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = Date.Today.Day
    '        cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = Date.Today.Year
    '        cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "0"
    '        cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "0"
    '        cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = "0"
    '        cmd.Parameters.Add("@ccshared", SqlDbType.VarChar).Value = FileUpload1.FileName
    '        cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = Label31.Text.ToString()
    '        cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = "0"
    '        cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = Image1as.Src

    '        myconn.Open()
    '        cmd.ExecuteNonQuery()

    '        myconn.Close()
    '        System.Threading.Thread.Sleep(2000)

    '        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
    '        Dim ids As String = email1.Text
    '        Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where bornon = 0  order by [id] desc", cnn)
    '        Dim ds As DataSet = New DataSet()
    '        cmd1.Fill(ds)
    '        Repeater1.DataSource = ds
    '        Repeater1.DataBind()
    '        UpdatePanel2.Update()
    '    Else
    '        Dim myconn As New SqlConnection
    '        myconn = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
    '        Dim cmd As New SqlCommand("nowcomment", myconn)
    '        cmd.CommandType = CommandType.StoredProcedure
    '        Dim day1 As Integer
    '        day1 = Date.Today.Day
    '        Dim month1 As Integer
    '        month1 = Date.Today.Month
    '        Dim year1 As Integer
    '        year1 = Date.Today.Year
    '        Dim comment1 As String
    '        comment1 = inputbox.InnerHtml
    '        Dim comment1a As String
    '        comment1a = comment1.Replace("\n", "<br>")
    '        Dim firsta As String
    '        firsta = inputbox.InnerHtml.Replace(System.Environment.NewLine, "<br/>")
    '        comment1a = firsta.ToString()
    '        ''Dim comment As New SqlParameter("@ccc1", SqlDbType.VarChar)
    '        ''comment.Direction = ParameterDirection.Output
    '        ''cmd.Parameters.Add(comment)
    '        ''comment.Value = inputbox.InnerText
    '        ''Dim tablename As New SqlParameter("@a_tmptbl", SqlDbType.VarChar)
    '        ''tablename.Direction = ParameterDirection.Output
    '        '' cmd.Parameters.Add(tablename)
    '        ''tablename.Value = "newTable"
    '        ''cmd.Parameters("@a_tmptbl").Direction = ParameterDirection.Input
    '        ''cmd.Parameters("@a_tmptbl").Value = "newTable"
    '        ''cmd.Parameters("@ccc1").Direction = ParameterDirection.Input
    '        ''cmd.Parameters("@ccc1").Value = Trim(inputbox.Value)
    '        cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = email1.Text
    '        cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = Label11.Text.ToString()
    '        cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = Label21.Text.ToString()
    '        cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = Label1.Text
    '        cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = comment1a
    '        cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = Date.Today.Month
    '        cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = Date.Today.Day
    '        cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = Date.Today.Year
    '        cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "0"
    '        cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "0"
    '        cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = "0"
    '        cmd.Parameters.Add("@ccshared", SqlDbType.VarChar).Value = "0"
    '        cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = Label31.Text.ToString()
    '        cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = "0"
    '        cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = Image1as.Src

    '        myconn.Open()
    '        cmd.ExecuteNonQuery()

    '        myconn.Close()
    '        System.Threading.Thread.Sleep(2000)

    '        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
    '        Dim ids As String = email1.Text
    '        Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where bornon = 0  order by [id] desc", cnn)
    '        Dim ds As DataSet = New DataSet()
    '        cmd1.Fill(ds)
    '        Repeater1.DataSource = ds
    '        Repeater1.DataBind()
    '        UpdatePanel2.Update()
    '    End If
    'End Sub
    'Protected Sub Timer1_Tick(sender As Object, e As EventArgs)
    '    Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
    '    Dim ids As String = email1.Text
    '    Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " where bornon = 0  order by [id] desc", cnn)
    '    Dim ds As DataSet = New DataSet()
    '    cmd.Fill(ds)
    '    Repeater1.DataSource = ds
    '    Repeater1.DataBind()
    '    UpdatePanel2.Update()
    'End Sub
    'Protected Sub SetAsCompleteButton_Click(sender As Object, e As EventArgs)
    '    dropbox.Visible = True

    'End Sub
    'Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs)

    'End Sub
    'Protected Sub Repeater1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs)
    '    Dim item As RepeaterItem = e.Item
    '    Dim label1 As Label = DirectCast(item.FindControl("label_id"), Label)
    '    Dim PlayerRepeater As Repeater = DirectCast(item.FindControl("Repeater2asdfqwer"), Repeater)
    '    Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVrange")
    '    Dim ids As String = email1.Text
    '    Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " Where bornon = 2 and comments = " + label1.Text, cnn)
    '    Dim ds As DataSet = New DataSet()
    '    cmd1.Fill(ds)
    '    PlayerRepeater.DataSource = ds
    '    PlayerRepeater.DataBind()

    '    Dim big_image_holder As HtmlGenericControl = DirectCast(item.FindControl("big_image_holder"), HtmlGenericControl)
    '    Dim Image_big As HtmlImage = DirectCast(item.FindControl("image_big_thing"), HtmlImage)
    '    If Image_big.Src = "\imgs\0" Then
    '        big_image_holder.Visible = False
    '    Else
    '        big_image_holder.Visible = True
    '    End If


    '    Dim image1 As Image = DirectCast(item.FindControl("Image2"), Image)
    '    Dim image2 As Image = DirectCast(item.FindControl("Image2a"), Image)
    '    Dim label_email As Label = DirectCast(item.FindControl("Label3"), Label)
    '    Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
    '    cnn1qwer.Open()
    '    Dim cmqwer As New SqlCommand
    '    Dim asdf1 As String = label_email.Text.Replace(".", "")
    '    Dim asdf As String = asdf1 + "profileimg"
    '    cmqwer.CommandText = "SELECT top 1 [img] FROM  " + asdf.Replace(" ", "")
    '    cmqwer.Connection = cnn1qwer
    '    Dim drqwer As SqlDataReader
    '    drqwer = cmqwer.ExecuteReader

    '    If drqwer.HasRows Then

    '        drqwer.Read()
    '        image1.ImageUrl = "\imgs\" + drqwer.Item("img").ToString()
    '        image2.ImageUrl = "\imgs\" + drqwer.Item("img").ToString()


    '    End If
    '    cnn1qwer.Close()
    'End Sub
End Class