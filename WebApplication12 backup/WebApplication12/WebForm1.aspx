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
         background-color: #eaeaea;
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
        margin-right: 100px;
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
    .textbox1
    {
        width: 150px;
        height: 10px;
        padding: 6px 4px;
        border: 1px solid #E1E1E1;
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder1" runat="server">
    <div id="body1">
    <br />
    <br />
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
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" 
                    ContinueDestinationPageUrl="~/3 way/First time sign up/WebForm18.aspx" 
                    Height="282px" Width="340px">
                    <TextBoxStyle cssclass="textbox1" />
                    <WizardSteps>
                        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                            <ContentTemplate>
                                <table style="font-size:100%;height:282px;width:340px;">
                                    <tr>
                                        <td align="center" colspan="2">
                                            Sign Up for Your New Account</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Email:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server" CssClass="email"></asp:TextBox>
                                            <!--<asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                                ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator> -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" CssClass="textbox1" 
                                                TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                ControlToValidate="Password" ErrorMessage="Password is required." 
                                                ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                                AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="textbox1" 
                                                TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                                ControlToValidate="ConfirmPassword" 
                                                ErrorMessage="Confirm Password is required." 
                                                ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">Confirm E-mail:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Email" runat="server" CssClass="textbox1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                                ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                                ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Question" runat="server" CssClass="textbox1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                                ControlToValidate="Question" ErrorMessage="Security question is required." 
                                                ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Answer" runat="server" CssClass="textbox1"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                                ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                                ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                                ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                                Display="Dynamic" 
                                                ErrorMessage="The Password and Confirmation Password must match." 
                                                ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                        </asp:CompleteWizardStep>
                    </WizardSteps>
                    <NavigationButtonStyle CssClass="button1" Width= "150px" />
                </asp:CreateUserWizard>

            </div>
                <br />
                <br />
                <br />
        </div>
        <br />
        <br />
    </div>
</asp:Content>
