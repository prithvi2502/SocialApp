<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="loginpage.aspx.vb" Inherits="WebApplication12.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style8
    {
        width: 177px;
        font-family: "Times New Roman", Times, serif;
        font-size: small;
        color: #FFFFFF;
    }
    .style9
    {
        width: 177px;
        font-family: "Times New Roman", Times, serif;
        font-size: small;
        color: #FFFFFF;
        height: 23px;
    }
    .style10
    {
        height: 23px;
        color: #FFFFFF;
        font-family: "Times New Roman", Times, serif;
        font-size: small;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder1" runat="server">
    <asp:Login ID="Login1" runat="server" BackColor="Black" BorderColor="Black" 
    BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
    Font-Size="0.8em" ForeColor="White" Height="180px" style="text-align: center" 
    Width="370px" DestinationPageUrl="~/Customize.aspx" 
        LoginButtonImageUrl="~/Images/log in button.jpg" LoginButtonType="Image" 
        TitleText="Log In to Clan View">
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
        BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <TextBoxStyle Font-Size="0.8em" BackColor="Black" ForeColor="White" />
    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" 
        ForeColor="White" />
</asp:Login>
<table class="style1">
    <tr>
        <td class="style9">
            Login and start having fun!&nbsp;
        </td>
        <td class="style10">
            A site meant only for games!</td>
    </tr>
    <tr>
        <td class="style8">
            Don&#39;t have an accout
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Lime" 
                NavigateUrl="~/signuppage.aspx" ToolTip="Sign up if you don't have an accout">Sign Up!</asp:HyperLink>
        </td>
        <td style="color: #FFFFFF; font-size: small; font-family: 'Times New Roman', Times, serif">
            Forgot Password create a new one
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Lime" 
                NavigateUrl="~/forgot.aspx">here</asp:HyperLink>
            .</td>
    </tr>
</table>
</asp:Content>
