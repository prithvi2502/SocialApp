﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="signuppage.aspx.vb" Inherits="WebApplication12.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder1" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ForeColor="White" 
    Height="296px" Width="359px" CancelButtonImageUrl="~/Images/cancel.jpg" 
        CancelButtonType="Image" ContinueButtonImageUrl="~/Images/continue.jpg" 
        ContinueButtonType="Image" ContinueDestinationPageUrl="~/loginpage.aspx" 
        CreateUserButtonImageUrl="~/Images/createuser.jpg" CreateUserButtonType="Image">
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" >
            <ContentTemplate>
                <table style="color: White; font-size: 100%; height: 296px; width: 359px;">
                    <tr>
                        <td align="center" colspan="2">
                            Sign Up for Your New Account</td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
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
                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                ControlToValidate="ConfirmPassword" 
                                ErrorMessage="Confirm Password is required." 
                                ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
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
                            <asp:TextBox ID="Question" runat="server"></asp:TextBox>
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
                            <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
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
                        <td align="center" colspan="2" style="color: Red;">
                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                        </td>
                    </tr>
                </table>
            </ContentTemplate>
        </asp:CreateUserWizardStep>
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>
</asp:Content>
