Public Class WebForm33
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Request("id").ToString()
        Label2.Text = Request("email").ToString()
        Response.Redirect("~/3 way/Range.aspx?value=" + Label1.Text)
    End Sub

End Class