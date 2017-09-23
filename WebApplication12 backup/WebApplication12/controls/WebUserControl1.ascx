<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="WebUserControl1.ascx.vb" Inherits="WebApplication12.WebUserControl1" %>
<style>
    .body
    {
        text-align:center;
    }
    #top_container
    {
        text-align:left; 
        margin: 0 auto; 
        width:980px;
    }
    .op
    {
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 4px;
    }       
    .modalBackground 
    {
	    background-color:Gray;
	    filter:alpha(opacity=70);
	    opacity:0.7;
    }
    .txtbox
    {   
        border-color:#33ccff;
        border-top-left-radius: 4px;
        border-top-right-radius: 4px;
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 4px;
    }
    #coolman
    {
         height="26px";
    }
</style>
<table id="coolman" style="width: 7%;">
    <tr>
        <td>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" Height="26px" width="305px"></asp:TextBox>
        <td>
            &nbsp;<asp:Button ID="btnsearch" runat="server" onmouseover="color(this)" 
                onmouseout="color2(this)" Height="26px" Width="58px" Text="Search" />
        </td>
    </tr>
</table>
