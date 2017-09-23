<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/2 way/Site3.Master" CodeBehind="custumize2.aspx.vb" Inherits="WebApplication12.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style9
        {
            width: 331px;
        }
        #basic_content
        {
            text-align:left;
            width: 527px;
            margin: 0 auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="header" style="text-align:center">
    <asp:Label ID="mainfront" runat="server" 
        Text="Customize your profile and your game achievements just follow the steps below and in no time you will be clan viewing." 
        Font-Bold="true" ForeColor="#FF6600" Font-Size="Large"></asp:Label>
</div>
<div id="maincontent"> 
    <div style="text-align:center">
    <br />
        <asp:Label ID="state" runat="server" Text="Basic Info" forecolor="#FF6600" Font-Underline="true"></asp:Label>
        <br />
        <br />
    </div>
    <div id="basic_content" style="text-align:center">
        <asp:Panel id="binfo_content" runat="server" >
        <tabel>
            <td>
                <tr>
                    <asp:Label ID="fname" runat="server" ForeColor="#33CCFF">First Name</asp:Label>
                </tr>
                <tr>
                    <asp:Label ID="Label53" runat="server" ForeColor="#FF6600"></asp:Label>
                </tr>
            </td>
            <td>
                <tr>
                    <asp:Label ID="lname" runat="server" ForeColor="#33CCFF">Last Name</asp:Label>
                </tr>
                <tr>
                    <asp:Label ID="Label54" runat="server" ForeColor="#FF6600"></asp:Label>
                </tr>
            </td>
            <td>
                <tr>
                    <asp:Label ID="DOB" runat="server" ForeColor="#33CCFF">Date Of Birth</asp:Label>
                </tr>
                <tr>
                    <asp:Label runat="server" ID="Label55" ForeColor="#FF8800"></asp:Label> / <asp:Label ID="Label1" runat="server" ForeColor="#FF6600"></asp:Label> / <asp:Label ID="Label2" runat="server" ForeColor="#FF6600"></asp:Label>
                </tr>
            </td>
            <td>
                <tr>
                    h
                </tr>
            </td>
        </tabel>
       </asp:Panel>
    </div>
</div>

</asp:Content>
