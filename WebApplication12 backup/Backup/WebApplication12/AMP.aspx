<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/GAMER.Master" CodeBehind="AMP.aspx.vb" Inherits="WebApplication12.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            color: #66FF33;
            font-size: xx-large;
            text-align: left;
            background-color: #000000;
        }
        .style8
        {
            font-size: x-large;
        }
        .style9
        {
            height: 23px;
            font-size: x-large;
        }
        .style10
        {
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style2">
        <tr>
            <td class="style7">
                Initiate App AMP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Images/launch button.jpg" style="text-align: right" 
                    PostBackUrl="~/AMP app.aspx" />
&nbsp;</td>
        </tr>
        <tr>
            <td style="color: #FFFFFF">
                <br />
                <span class="style8">Notice:</span> This app uses your name and some of your personal info. &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td style= "color: #FFFFFF" class="style9">
                Discription of the app:</td>
        </tr>
        <tr>
            <td style= "color: #FFFFFF">
                This app is designed by your very own that created this app. By feeding in your information by answering AMP's question you will get a list of games that you might like.
                This information then gets stroed in to your profile so people can see what are your recommended games. Check it out mabye you will find out about a game that you never like before.&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
