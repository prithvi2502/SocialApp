<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="site1.master" CodeBehind="WebForm1.aspx.vb" Inherits="WebApplication12.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style8
    {
        height: 28px;
    }
    .style9
    {
        height: 28px;
        width: 464px;
    }
    .style10
    {
        width: 464px;
    }
    .style12
    {
        width: 110px;
    }
    .style17
    {
        width: 152px;
    }
    .style18
    {
        width: 222px;
    }
    .style19
    {
        width: 133px;
    }
    #body1
    {
         margin-top: 30px;
        
    }
    #content_container
    {
        width: 980px;
        margin: 0 auto;
        height: 500px;
        background-color: #9e65c6;
    }
    #logo
    {
        float: right;
        color: White;
        width: 300px;
        margin-right: 50px;
        font-family: 'GeogrotesqueSemiBold', helvetica, arial;
        font-size: 12px;
        text-transform: uppercase;
        font-weight: bold;
        margin-top: 109px;
    }
    #discription
    {
        float: left;
        height: 282px;
        color: White;
        width: 400px;
        margin-top: 109px;
        margin-left: 50px;
        font-family: 'GeogrotesqueSemiBold', helvetica, arial;
        font-size: 14px;
        text-transform: uppercase;
        font-weight: bold;
    }
    #HyperLink2
    {
        color: White;
        font-family: 'GeogrotesqueSemiBold', helvetica, arial;
        font-size: 14px;
        text-transform: uppercase;
        font-weight: bold;
        cursor:pointer;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder1" runat="server">
    <div id="body1">
        <div id="content_container">
            <div id="discription">
                <asp:Label runat="server" style="font-size: 20px; color: #3CF;">What We Do Best:</asp:Label>
                <hr  style=" margin-top: 10px;"/>
                <p align="justify" style="text-indent : 10px; font-size: 10px; margin-left: 50px; width: 300px;">
                    ClanView is not your average everyday social network. It is a new type of
                    network which we like to call the Connectwork. This type network is tool 
                    that we use to connect you to the world, not jut friends. Our goal is to 
                    make sure your know what is going on in the world to what your friends current
                    status update is. Also not forget our gamming social network has endless possiblities, from seeing
                    your friends current status to creating a clan to dominate the gamming franchise. Come for our social and
                    gamming Connectwork. You wont be comming to this website just to check and status updates but to explore.
                    Have fun! 
                </p>
                <hr />
                <asp:HyperLink ID="HyperLink2" runat="server">Sign Up Here!</asp:HyperLink>
            </div>
            <div id="logo">
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                    <WizardSteps>
                        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                        </asp:CompleteWizardStep>
                    </WizardSteps>
                    <NavigationButtonStyle CssClass="button1" Width= "150px" />
                </asp:CreateUserWizard>
            </div>
        </div>
    </div>
</asp:Content>
