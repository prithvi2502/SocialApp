<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/GAMER.Master" CodeBehind="AMP app.aspx.vb" Inherits="WebApplication12.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            color: #FFFFFF;
            margin-top: 18px;
        }
        .style13
        {
            height: 25px;
            font-size: xx-large;
            color: #66FF66;
        }
        .style15
        {
            color: #FFFF00;
        }
        .style16
        {
            height: 50px;
            color: #FFFFFF;
            margin-top: 18px;
        }
        .style17
        {
            height: 24px;
            font-size: medium;
            color: #FFFFFF;
            margin-left: 760px;
        }
        .style18
        {
            color: #FFFFFF;
        }
        .style19
        {
            font-size: medium;
            color: #FFFFFF;
        }
        .style&
        {}
        .style20
        {
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style2">
        <tr>
            <td class="style13">
                &nbsp;&nbsp;AMP</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
    <table class="style2">
        <tr>
            <td class="style15">
                 Hi am AMP and my job is to give a list of games that you will like according to some of the questions you will answer.&nbsp;</td>
        </tr>
        </table>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        </tr>
        <tr>
            <td class="style17">
                    <asp:Label ID="Label15" runat="server" 
    Text="First Please select your age group:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" 
                        Height="22px" Width="26px" BackColor="Black" ForeColor="#66FF33" MaxLength="2" 
                        ToolTip="Put in your age here"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;<br />
                    <span class="style7" 
                    >
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/Images/next button.jpg" Height="21px" 
                    style="text-align: right; " Width="79px" />
                    </span>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style16">
                &nbsp;<span class="style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label13" runat="server" 
                    Text="Ok! Well it looks like you have put in your age. Lets begin! " 
                    Visible="False" style="text-align: right"></asp:Label>
                </span></td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Label ID="Label18" runat="server" 
                    
                    Text="Alright depending on your age I will give you a special question that I have made" 
                    Visible="False"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                <span class="style19">
                <asp:Label ID="Label14" runat="server" ForeColor="White" 
                    Text="Do you like Action game that involve violence or do you like other games which are not related to violence? To help you decide: if you choose action it shows us that you like violence, shooter, and fighters. If you choos the other type it shows up that you like adventure games, rpgs, or games that do not have too much violence" 
                    Visible="False"></asp:Label>
                </span></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label17" runat="server" Text="So Do you like action or others?" 
                    ForeColor="White" Visible="False"></asp:Label>
                &nbsp;&nbsp;<span class="style7" 
                    >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/Images/next button.jpg" Height="21px" 
                    style="text-align: center; margin-bottom: 0px" Width="79px" 
                    Visible="False" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                <asp:Label ID="Label19" runat="server" ForeColor="Red" 
                    Text="Error not a valid answer. Please try again!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class = "style18">
                <asp:Label ID="Label20" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style20">
                <br />
                <asp:RadioButton ID="RadioButton1" runat="server" Visible="False" 
                    ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radiobutton4" runat="server" Visible="false" ForeColor="White" /><br />
                <asp:RadioButton ID="RadioButton2" runat="server" Visible="False" 
                    ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radiobutton5" runat="server" Visible="false" ForeColor="White" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
                <asp:RadioButton ID="RadioButton3" runat="server" Visible="False" 
                    ForeColor="White" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radiobutton6" runat="server" Visible="false" ForeColor="White" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style7" 
                    ><asp:ImageButton ID="ImageButton5" runat="server" 
                    ImageUrl="~/Images/next button.jpg" Height="21px" 
                    style="text-align: center; margin-bottom: 0px" Width="79px" 
                    Visible="False" />
                    </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style7" 
                    ><asp:ImageButton ID="ImageButton8" runat="server" 
                    ImageUrl="~/Images/next button.jpg" Height="21px" 
                    style="text-align: center; margin-bottom: 0px" Width="79px" 
                    Visible="False" />
                    </span>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style7" 
                    ><asp:ImageButton ID="ImageButton9" runat="server" 
                    ImageUrl="~/Images/next button.jpg" Height="21px" 
                    style="text-align: center; margin-bottom: 0px" Width="79px" 
                    Visible="False" />
                    </span>
                &nbsp; <span class="style7" 
                    >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>&nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: left">
                <asp:Label ID="Label21" runat="server" ForeColor="White" 
                    Text="Your choice is very interesting just answer a few more questions and I will be able to give you a thorogh answer." 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label22" runat="server" ForeColor="White" Text="Label" 
                    Visible="False"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label24" runat="server" 
                    ForeColor="White" Text="and" Visible="False"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Visible="False"></asp:TextBox>
                <br />
            <asp:RadioButton ID= "RadioButton10" runat = "server" Visible = "false" ForeColor="White" Text="Football" />
                <br />
            <asp:RadioButton ID="RadioButton11" runat ="server" Visible="false" ForeColor="White" Text="Ice Hockey" />
                <br />
            <asp:RadioButton ID="RadioButton12" runat="server" Visible="false" ForeColor="White" Text="Soccer" />
                <br />
            <asp:RadioButton ID="RadioButton13" runat="server" Visible="false" ForeColor="White" Text="BasketBall" />
                <br />
            <asp:RadioButton ID="RadioButton14" runat="server" Visible="false" ForeColor="White" Text="BaseBall" />
                <br />
            <asp:RadioButton ID="radiobutton15" runat="server" Visible="false" ForeColor="White" Text="Tennis" /></td>
                
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label23" runat="server" ForeColor="White" Text="Label" 
                    Visible="False"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox5" runat="server" Visible="False"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style7">
                <asp:ImageButton ID="ImageButton7" runat="server" 
                    ImageUrl="~/Images/next button.jpg" Height="21px" 
                    style="text-align: center; margin-bottom: 0px" Width="79px" 
                    Visible="False" />
                    </span>
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Images/next button.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="text-align: center">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
