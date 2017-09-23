Imports System.Data.SqlClient
Public Class Image_grid
    Inherits System.Web.UI.Page
    Public image_url As String
    Public _emailaddress As String
    Public commenter_fname As String
    Public commenter_lname As String
    Public imgae_profile As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim user As MembershipUser = Membership.GetUser(HttpContext.Current.User.Identity.Name)
        If user IsNot Nothing Then
            Dim emailAddress As String = user.Email
            Label1.Text = emailAddress
            _emailaddress = emailAddress
            Dim newemailway1 As String = emailAddress.Replace(".", "")
            Label2.Text = newemailway1
        End If
        If Page.IsPostBack = False Then
            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
            Dim ids As String = Label2.Text + "img"
            Dim cmd As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM " + ids, cnn)
            Dim ds As DataSet = New DataSet()
            cmd.Fill(ds)
            Repeater1img.DataSource = ds
            Repeater1img.DataBind()
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
            commenter_fname = dr.Item("fname")
            commenter_lname = dr.Item("lname")
            name_all.InnerText = dr.Item("fname") + " " + dr.Item("lname")
            dr.Close()

        End If
        cnn1.Close()
        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        cnn1qwer.Open()
        Dim cmqwer As New SqlCommand
        Dim asdf As String = Label2.Text + "profileimg"
        cmqwer.CommandText = "SELECT [img] FROM  " + asdf
        cmqwer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmqwer.ExecuteReader

        If drqwer.HasRows Then

            drqwer.Read()
            imgae_profile = drqwer.Item("img")


        End If
        cnn1qwer.Close()
    End Sub
    Protected Sub Upload_button_Click(sender As Object, e As EventArgs) Handles Upload_button.ServerClick
        If FileUpload1.HasFile Then
            FileUpload1.SaveAs("C:\Users\bhuppi\Desktop\New folder (13)\New folder (12)\New folder (7)\New folder (3)\WebApplication12 backup\WebApplication12\imgs\" & FileUpload1.FileName)
        End If

        Dim myconn4asdf As New SqlConnection
        myconn4asdf = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        Dim cmd4asdf As New SqlCommand("addimage", myconn4asdf)
        cmd4asdf.CommandType = CommandType.StoredProcedure
        cmd4asdf.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = Label2.Text
        cmd4asdf.Parameters.Add("@description", SqlDbType.VarChar).Value = dsicription.Value
        cmd4asdf.Parameters.Add("IMG", SqlDbType.VarChar).Value = FileUpload1.FileName
        cmd4asdf.Parameters.Add("like", SqlDbType.Int).Value = "0"
        cmd4asdf.Parameters.Add("dislike", SqlDbType.Int).Value = "0"
        cmd4asdf.Parameters.Add("@albumnname", SqlDbType.VarChar).Value = "None"
        myconn4asdf.Open()
        cmd4asdf.ExecuteNonQuery()
        myconn4asdf.Close()
    End Sub
    Protected Sub Repeater1_ItemCommand(source As Object, e As RepeaterCommandEventArgs)
        Dim ddlType As Button = DirectCast(e.Item.FindControl("Button1"), Button)

        If e.CommandName = "Button_search" Then
            Dim item12 As RepeaterItem = e.Item
            Dim myconn As New SqlConnection
            Dim repeater_inside_commenter As Repeater = DirectCast(item12.FindControl("Repeater2asdfqwer"), Repeater)
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
            For Each item As RepeaterItem In repeater_inside_commenter.Items
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
            cmd.Parameters.Add("@a_tmptbl", SqlDbType.VarChar).Value = Label2.Text
            cmd.Parameters.Add("@ccfname", SqlDbType.VarChar).Value = commenter_fname.ToString()
            cmd.Parameters.Add("@cclname", SqlDbType.VarChar).Value = commenter_lname.ToString()
            cmd.Parameters.Add("@ccemail", SqlDbType.VarChar).Value = _emailaddress
            cmd.Parameters.Add("@ccc1", SqlDbType.VarChar).Value = comment_var.Text.ToString()
            cmd.Parameters.Add("@ccdatemonth", SqlDbType.Int).Value = Date.Today.Month
            cmd.Parameters.Add("@ccdateday", SqlDbType.Int).Value = Date.Today.Day
            cmd.Parameters.Add("@ccdateyear", SqlDbType.Int).Value = Date.Today.Year
            cmd.Parameters.Add("@ccthumbsup", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccthumbsdown", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@cccomments", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccshared", SqlDbType.Int).Value = "0"
            cmd.Parameters.Add("@ccfavgame", SqlDbType.VarChar).Value = e.CommandArgument.ToString()
            cmd.Parameters.Add("@ccbornon", SqlDbType.Int).Value = 2
            cmd.Parameters.Add("@cchometown", SqlDbType.VarChar).Value = imgae_profile.ToString()

            myconn.Open()
            cmd.ExecuteNonQuery()

            myconn.Close()
            System.Threading.Thread.Sleep(1000)

            Dim label1 As Label = DirectCast(item12.FindControl("label_id"), Label)
            Dim PlayerRepeater As Repeater = DirectCast(item12.FindControl("Repeater2asdfqwer"), Repeater)
            Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
            Dim ids As String = Label2.Text
            Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " Where favgame = '" + e.CommandArgument.ToString() + "'", cnn)
            Dim ds As DataSet = New DataSet()
            cmd1.Fill(ds)
            PlayerRepeater.DataSource = ds
            PlayerRepeater.DataBind()
            Dim updatepanel As UpdatePanel = DirectCast(item12.FindControl("update_comment"), UpdatePanel)
            updatepanel.Update()
            comment_var.Text = ""
        End If
    End Sub
    Protected Sub Repeater1_ItemDataBound(sender As Object, e As System.Web.UI.WebControls.RepeaterItemEventArgs)
        Dim item As RepeaterItem = e.Item
        Dim label12 As HyperLink = DirectCast(item.FindControl("name"), HyperLink)
        Dim cnn1 As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = CVemailDatabase")
        cnn1.Open()
        Dim cm As New SqlCommand
        cm.CommandText = "SELECT [fname], [lname], [email] FROM [basicinfo] WHERE [email] = '" & _emailaddress & "'"
        cm.Connection = cnn1
        Dim dr As SqlDataReader
        dr = cm.ExecuteReader

        If dr.HasRows Then

            dr.Read()
            label12.Text = dr.Item("fname") + " " + dr.Item("lname")
            label12.NavigateUrl = "WebForm24.aspx?id=" + dr.Item("email")
            dr.Close()

        End If
        cnn1.Close()

        Dim Image11 As HtmlImage = DirectCast(item.FindControl("Image11"), HtmlImage)

        Dim cnn1qwer As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        cnn1qwer.Open()
        Dim cmqwer As New SqlCommand
        Dim asdf As String = Label2.Text + "profileimg"
        cmqwer.CommandText = "SELECT [img] FROM  " + asdf
        cmqwer.Connection = cnn1qwer
        Dim drqwer As SqlDataReader
        drqwer = cmqwer.ExecuteReader

        If drqwer.HasRows Then

            drqwer.Read()
            Image11.src = "\imgs\" + drqwer.Item("img")

            drqwer.Close()
        End If
        cnn1qwer.Close()
        Dim Image_url As HtmlImage = DirectCast(item.FindControl("open_image_cool"), HtmlImage)
        Dim label1 As Label = DirectCast(item.FindControl("label_id"), Label)
        Dim PlayerRepeater As Repeater = DirectCast(item.FindControl("Repeater2asdfqwer"), Repeater)
        Dim cnn As SqlConnection = New SqlConnection("Integrated Security=SSPI;Data Source=BHUPPI-PC\SQLEXPRESS;Initial Catalog = Images")
        Dim ids As String = Label2.Text
        Dim cmd1 As SqlDataAdapter = New SqlDataAdapter("SELECT [fname],[Lname],[email],[c1], [datemonth],[dateday],[dateyear],[thumbssup],[thumbsdown],[id],[shared],[comments],[favgame],[bornon],[hometown] FROM " + ids + " Where favgame =  '" + Image_url.Src + "'", cnn)
        Dim ds As DataSet = New DataSet()
        cmd1.Fill(ds)
        PlayerRepeater.DataSource = ds
        PlayerRepeater.DataBind()
    End Sub
End Class