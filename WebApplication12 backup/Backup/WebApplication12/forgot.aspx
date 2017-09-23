<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="forgot.aspx.vb" Inherits="WebApplication12.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder1" runat="server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" ForeColor="White" 
    Height="128px" Width="390px" BackColor="Black" 
        SubmitButtonImageUrl="~/Images/submit.jpg" SubmitButtonType="Image">
        <TextBoxStyle BackColor="Black" ForeColor="White" />
</asp:PasswordRecovery>
</asp:Content>
