 <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/GAMER.Master" CodeBehind="Customize.aspx.vb" Inherits="WebApplication12.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    

    <style type="text/css">
        .op
        (
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 4px;
            
        .modalBackground 
        {
	        background-color:Gray;
	        filter:alpha(opacity=70);
	        opacity:0.7;
        }
        .txtbox
        {
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 4px;
        }
        .style7
        {
            color: #FFFFFF;
            text-decoration: underline;
        }
        .style8
        {
            color: #FFFFFF;
            font-weight: bold;
            text-align: center;
        }
        .style9
        {
            text-align: left;
            color: #FFFFFF;
            }
        .style10
        {
            text-align: center;
        }
        .style12
        {
            width: 177px;
        }
        .style13
        {
            width: 148px;
            text-align: center;
        }
        .style14
        {
            width: 140px;
        }
        .style15
        {
            width: 875px;
        }
        .style16
        {
            width: 63px;
        }
        .style17
        {
            width: 177px;
            height: 23px;
        }
        .style18
        {
            width: 148px;
            text-align: center;
            height: 23px;
        }
        .style19
        {
            width: 177px;
            height: 29px;
        }
        .style20
        {
            width: 148px;
            text-align: center;
            height: 29px;
        }
        .style21
        {
            height: 29px;
        }
        .style23
        {
            width: 140px;
            height: 36px;
        }
        .style24
        {
            height: 36px;
            width: 298px;
        }
        .style25
        {
            width: 50%;
        }
        .style26
        {
            width: 298px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function ONOK() {

            var text53 = document.getElementById('<%=TextBox53.ClientID%>');
            var text54 = document.getElementById('<%=TextBox54.ClientID%>');
            var text55 = document.getElementById('<%=TextBox55.ClientID%>');
            var text56 = document.getElementById('<%=TextBox56.ClientID%>');
            var text57 = document.getElementById('<%=TextBox57.ClientID%>');
            var text58 = document.getElementById('<%=TextBox58.ClientID%>');

            document.getElementById('<%=Label53.ClientID%>').innerText = text53.value;
            document.getElementById('<%=Label54.ClientID%>').innerText = text54.value;
            document.getElementById('<%=Label55.ClientID%>').innerText = text55.value;
            document.getElementById('<%=Label56.ClientID%>').innerText = text56.value;
            document.getElementById('<%=Label57.ClientId%>').innerText = text57.value;
            document.getElementById('<%=Label58.ClientId%>').innerText = text58.value;
        }
    
    </script>
    <p style="font-weight: 700; " class="style10">
        <br class="style7" />
        <span class="style7">Customize your profile and your game achievements just 
        follow the steps below and in no time you will be clan viewing.</span></p>
    <p class="style8">
        Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox40" runat="server" BackColor="Black" ForeColor="Green"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
</p>
<p class="style8">
        Your Information</p>
    <p class="style8">
        &nbsp;</p>
    &nbsp;<table 
        class="style2">
        <tr>
            <td class="style15">
    <asp:Panel ID="Panel4" runat="server" BackImageUrl="~/Images/67890.jpg" 
        Height="594px" style="text-align: left" Width="527px">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label36" runat="server" ForeColor="#33CCFF" 
            style="font-size: xx-large" Text="Basic Info:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#33CCFF">Edit  </asp:LinkButton>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <table align="center" class="style2" style="width: 85%; height: 314px;">
            <tr>
                <td class="style14">
                    <asp:Label ID="Label37" runat="server" ForeColor="#33CCFF" 
                        Text="Your First Name"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label53" runat="server" ForeColor="#FF6600"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Label ID="Label38" runat="server" ForeColor="#33CCFF" Text="Your Last Name"></asp:Label>
                </td>
                <td style="text-align: center" class="style24">
                    <asp:Label ID="Label54" runat="server" ForeColor="#FF6600" 
                        Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label39" runat="server" ForeColor="#33CCFF" Text="Age"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label55" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label40" runat="server" ForeColor="#33CCFF" Text="Occupation"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label56" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label41" runat="server" ForeColor="#33CCFF" Text="Favorite Game"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label57" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label42" runat="server" ForeColor="#33CCFF" 
                        Text="1 interesting fact about your self"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label58" runat="server" ForeColor="#FF6600" 
                        style="text-align: left"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td class="style26">
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button9" runat="server" Text="Save" />
        <br />
        <br />
    </asp:Panel>
            </td>
            <td>
    <asp:Panel ID="Panel3" runat="server" BackImageUrl="~/Images/67890.jpg" 
        Height="594px" style="text-align: left; margin-left: 267px;" Width="527px">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label35" runat="server" ForeColor="#33CCFF" 
            style="font-size: xx-large" Text="Pick your games"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#33CCFF">Edit</asp:LinkButton>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label43" runat="server" ForeColor="White" 
            Text="Pick a type a game you like."></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label44" runat="server" Text="Remember you can comeback here and unpick or pick anytime." ForeColor="White"></asp:Label>
        <br />
        <br />
        <table align="center" class="style2" style="width: 85%; height: 314px;">
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="#33CCFF" 
                        Text="Shooters" onclick = "forrad1(this)"  />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="#33CCFF" 
                        Text="Adventure/Action" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton3" runat="server" ForeColor="#33CCFF" 
                        Text="RPG" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton4" runat="server" ForeColor="#33CCFF" 
                        text="Sports" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton5" runat="server" ForeColor="#33CCFF" 
                        Text="Strategy" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td>
                    <asp:RadioButton ID="RadioButton6" runat="server" ForeColor="#33CCFF" 
                        Text="Fighter" />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td>
                    <asp:RadioButton ID="RadioButton7" runat="server" ForeColor="#33CCFF" 
                        Text="Racing" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8"  runat="server" Text="Continure" OnClientClick="btn8();" />
        <br />
        <br />
    </asp:Panel>
            </td>
        </tr>
    </table>
    <p>
       <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
             TargetControlID="LinkButton1"
             PopupControlID="Panel7"
             BackgroundCssClass="modalBackground"
             DropShadow="false"
             OkControlID="Button10"
             OnOkScript="ONOK()"
             CancelControlID="Button11" />
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender3" runat="server" 
             TargetControlID="RadioButton1"
             PopupControlID="Panel9"
             BackgroundCssClass="modalBackground"
             DropShadow="false"
             OkControlID="Button14"
             OnOkScript=""
             CancelControlID="Button15" />
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender4" runat="server" 
             TargetControlID="RadioButton2"
             PopupControlID="Panel10"
             BackgroundCssClass="modalBackground"
             DropShadow="false"
             OkControlID="Button16"
             OnOkScript=""
             CancelControlID="Button17" />
         <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender5" runat="server"
	        TargetControlID="RadioButton3"
	        PopupControlID="Panel11"
	        BackgroundCssClass="modalBackground"
	        DropShadow="false"
	        OkControlID="Button20"
	        OnOkScript=""
	        CancelControlID="Button21" />
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender6" runat="server"
	        TargetControlID="RadioButton4"
	        PopupControlID="Panel12"
	        BackgroundCssClass="modalBackground"
	        DropShadow="false"
	        OkControlID="Button23"
	        OnOkScript=""
	        CancelControlID="Button24" />
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender7" runat="server"
	        TargetControlID="RadioButton5"
	        PopupControlID="Panel13"
	        BackgroundCssClass="modalBackground"
	        DropShadow="false"
	        OkControlID="Button26"
	        OnOkScript=""
	        CancelControlID="Button27" />
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender8" runat="server"
	        TargetControlID="RadioButton6"
	        PopupControlID="Panel14"
	        BackgroundCssClass="modalBackground"
	        DropShadow="false"
	        OkControlID="Button29"
	        OnOkScript=""
	        CancelControlID="Button30" />
        <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender9" runat="server"
	        TargetControlID="RadioButton7"
	        PopupControlID="Panel15"
	        BackgroundCssClass="modalBackground"
	        DropShadow="false"
	        OkControlID="Button32"
	        OnOkScript=""
	        CancelControlID="Button33" />
        <asp:Label ID="Label81" runat="server" ForeColor="#33CCFF" 
            Text="The choices you picked:" 
            style="font-size: x-large; font-weight: 700;"></asp:Label>
        <asp:Panel ID="Panel15" runat="server" BackImageUrl="~/Images/67890.jpg" style = "display:none"
        Height="594px" Width="527px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label78" 
                runat="server" ForeColor="#33CCFF" style="font-size: x-large" 
                Text="Racing/others"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label79" runat="server" 
                ForeColor="#33CCFF" Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton68" runat="server" ForeColor="#33CCFF" 
                            Text="Mario Kart" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton69" runat="server" ForeColor="#33CCFF" 
                            Text="Gran Turismo" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton70" runat="server" ForeColor="#33CCFF" 
                            Text="Forza Motorsport" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton71" runat="server" ForeColor="#33CCFF" 
                            Text="Need For Speed" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton72" runat="server" ForeColor="#33CCFF" 
                            Text="Guitar Hero" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton73" runat="server" ForeColor="#33CCFF" 
                            Text="Rock Band" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton74" runat="server" ForeColor="#33CCFF" 
                            Text="Dance Central" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton75" runat="server" ForeColor="#33CCFF" 
                            Text="Combat Arms" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton76" runat="server" ForeColor="#33CCFF" 
                            Text="Sims" />
                    </td>
                </tr>
            </table>
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton77" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label80" runat="server" 
                ForeColor="#33CCFF" Text="If you have another game in mind add it here"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                ID="TextBox65" runat="server" BorderColor="#33CCFF" CssClass="txtbox"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button31" 
                runat="server" Text="Add" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button32" 
                runat="server" Text="Ok" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button33" 
                runat="server" Text="Cancel" />
    </asp:Panel>
        <asp:Panel ID="Panel14" runat="server" BackImageUrl="~/Images/67890.jpg" style = "display: none"
        Height="594px" Width="527px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label75" 
                runat="server" ForeColor="#33CCFF" style="font-size: x-large" 
                Text="Fighter"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label76" runat="server" 
                ForeColor="#33CCFF" Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton58" runat="server" ForeColor="#33CCFF" 
                            Text="Street Fighter" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton59" runat="server" ForeColor="#33CCFF" 
                            Text="Dragonball Z games" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton60" runat="server" ForeColor="#33CCFF" 
                            Text="Super Smash Bros. Brawl" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton61" runat="server" ForeColor="#33CCFF" 
                            Text="Super Smash Bros. Melee" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton62" runat="server" ForeColor="#33CCFF" 
                            Text="Tekken" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton63" runat="server" ForeColor="#33CCFF" 
                            Text="Naruto Shippuden" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton64" runat="server" ForeColor="#33CCFF" 
                            Text="Mortal Combat" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton65" runat="server" ForeColor="#33CCFF" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton66" runat="server" ForeColor="#33CCFF" 
                            Text="SoulCalibur" />
                    </td>
                </tr>
            </table>
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton67" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                ID="Label77" runat="server" 
                ForeColor="#33CCFF" Text="If you have another game in mind add it here"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                ID="TextBox64" runat="server" BorderColor="#33CCFF" CssClass="txtbox"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button28" 
                runat="server" Text="Add" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button29" 
                runat="server" Text="Ok" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button30" 
                runat="server" Text="Cancel" />
    </asp:Panel>
        <asp:Panel ID="Panel13" runat="server" BackImageUrl="~/Images/67890.jpg" style="display:none"
        Height="594px" Width="527px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label72" 
                runat="server" ForeColor="#33CCFF" style="font-size: x-large" Text="Strategy"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label73" runat="server" 
                ForeColor="#33CCFF" Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton48" runat="server" ForeColor="#33CCFF" 
                            Text="Civilization 3" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton49" runat="server" ForeColor="#33CCFF" 
                            Text="Civilization 4" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton50" runat="server" ForeColor="#33CCFF" 
                            Text="Civilization 5" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton51" runat="server" ForeColor="#33CCFF" 
                            Text="StarCraft" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton52" runat="server" ForeColor="#33CCFF" 
                            Text="Command and Conquer" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton53" runat="server" ForeColor="#33CCFF" 
                            Text="Pokemon" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton54" runat="server" ForeColor="#33CCFF" 
                            Text="Total War: Rome 2" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton55" runat="server" ForeColor="#33CCFF" 
                            Text="Rome Total War" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton56" runat="server" ForeColor="#33CCFF" 
                            Text="GTA" />
                    </td>
                </tr>
            </table>
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton57" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label74" runat="server" 
                ForeColor="#33CCFF" Text="If you have another game in mind add it here"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                ID="TextBox63" runat="server" BorderColor="#33CCFF" CssClass="txtbox"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button25" runat="server" Text="Add" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button26" 
                runat="server" Text="Ok" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button27" runat="server" Text="Cancel" />
    </asp:Panel>
        <asp:Panel ID="Panel12" runat="server" BackImageUrl="~/Images/67890.jpg" 
        Height="594px" style="display:none"  Width="527px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label69" runat="server" ForeColor="#33CCFF" 
                style="font-size: x-large" Text="Sports"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label70" runat="server" ForeColor="#33CCFF" 
                Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton38" runat="server" ForeColor="#33CCFF" 
                            Text="Madden NFL 12" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton39" runat="server" ForeColor="#33CCFF" 
                            Text="Madden NFL 11" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton40" runat="server" ForeColor="#33CCFF" 
                            Text="NHL 12" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton41" runat="server" ForeColor="#33CCFF" 
                            Text="NHL 11" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton42" runat="server" ForeColor="#33CCFF" 
                            Text="NBA 12" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton43" runat="server" ForeColor="#33CCFF" 
                            Text="NBA 11" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton44" runat="server" ForeColor="#33CCFF" 
                            Text="MLB 11" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton45" runat="server" ForeColor="#33CCFF" 
                            Text="MLB 12" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton46" runat="server" ForeColor="#33CCFF" 
                            Text="FIFA" />
                    </td>
                </tr>
            </table>
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton47" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label71" runat="server" 
                ForeColor="#33CCFF" Text="If you have another game in mind add it here"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox62" runat="server" BorderColor="#33CCFF" 
                CssClass="txtbox"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button22" runat="server" Text="Add" />
            <br />  
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button23" runat="server" Text="Ok" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button24" runat="server" Text="Cancel" />
    </asp:Panel>
        <asp:Panel ID="Panel11" runat="server" BackImageUrl="~/Images/67890.jpg" 
        Height="594px" style = "display: none"  Width="527px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label66" runat="server" ForeColor="#33CCFF" 
                style="font-size: x-large" Text="RPG"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label67" runat="server" ForeColor="#33CCFF" 
                Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton28" runat="server" ForeColor="#33CCFF" 
                            Text="Skyrim: The Elder Scrolls" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton29" runat="server" ForeColor="#33CCFF" 
                            Text="Fallout" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton30" runat="server" ForeColor="#33CCFF" 
                            Text="Diablo 3" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton31" runat="server" ForeColor="#33CCFF" 
                            Text="League of Legends" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton32" runat="server" ForeColor="#33CCFF" 
                            Text="Pokemon series" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton33" runat="server" ForeColor="#33CCFF" 
                            Text="Gears of War" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton34" runat="server" ForeColor="#33CCFF" 
                            Text="Fabel 3" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton35" runat="server" ForeColor="#33CCFF" 
                            Text="Final Fantasy" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton36" runat="server" ForeColor="#33CCFF" 
                            Text="GTA" />
                    </td>
                </tr>
            </table>
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton37" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label68" runat="server" 
                ForeColor="#33CCFF" Text="If you have another game in mind add it here"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox61" runat="server" BorderColor="#33CCFF" 
                CssClass="txtbox"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button19" runat="server" Text="Add" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button20" runat="server" Text="Ok" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button21" runat="server" Text="Cancel" />
    </asp:Panel>
        <asp:Panel ID="Panel10" runat="server" BackImageUrl="~/Images/67890.jpg" 
        Height="594px" style ="Display:none"  Width="527px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label63" runat="server" ForeColor="#33CCFF" 
                style="font-size: x-large" Text="Adventure/Action"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label64" runat="server" ForeColor="#33CCFF" 
                Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton18" runat="server" ForeColor="#33CCFF" 
                            Text="Assasins Creed" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton19" runat="server" ForeColor="#33CCFF" 
                            Text="La Nore" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton20" runat="server" ForeColor="#33CCFF" 
                            Text="Star Craft" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton21" runat="server" ForeColor="#33CCFF" 
                            Text="World of Warcraft" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton22" runat="server" ForeColor="#33CCFF" 
                            Text="Batman" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton23" runat="server" ForeColor="#33CCFF" 
                            Text="Gears of War" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton24" runat="server" ForeColor="#33CCFF" 
                            Text="Mass Effect" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton25" runat="server" ForeColor="#33CCFF" 
                            Text="Minecraft" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton26" runat="server" ForeColor="#33CCFF" 
                            Text="GTA" />
                    </td>
                </tr>
            </table>
            <table class="style2">
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton27" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label65" runat="server" ForeColor="#33CCFF" 
                Text="If you have another game in mind add it here"></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox60" runat="server" BorderColor="#33CCFF" 
                CssClass="txtbox"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button18" runat="server" Text="Add" />
            <br />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button16" runat="server" Text="Ok" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button17" runat="server" Text="Cancel" />
    </asp:Panel>
    <asp:Panel ID="Panel9" runat="server" 
        BackImageUrl="~/Images/67890.jpg" ForeColor="#33CCFF" Height="594px" 
        style="display: none" Width="527px">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label60" runat="server" ForeColor="#33CCFF" 
            style="font-size: xx-large" Text="Shooter"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label61" runat="server" Text="Pick a game from our top 9 games"></asp:Label>
        <br />
        <br />
        <table class="style2">
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton8" runat="server" Text="Call of duty" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton9" runat="server" Text="Battlefield" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton10" runat="server" Text="Medal of Honor" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton11" runat="server" Text="Halo" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton12" runat="server" Text="Mass Effect" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton13" runat="server" Text="Crysis" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton14" runat="server" Text="Ghost Recon" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton15" runat="server" Text="Counter Strike" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton16" runat="server" Text="Zombie games" />
                </td>
            </tr>
        </table>
        <table class="style2">
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton17" runat="server" Visible="False" />
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label62" runat="server" 
            Text="If you have a another game in mind type the name here"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox59" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button13" runat="server" Text="Save" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button14" runat="server" Text="Ok" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button15" runat="server" Text="Cancel" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel8" runat="server" BackImageUrl="~/Images/678.jpg" 
        Height="160px" style = "display: none"  Width="240px" >
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label59" runat="server" ForeColor="#FF6600" 
            Text="Please fill in all of the fields"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button12" runat="server" Text="Ok" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server"
             TargetControlID="LinkButton4" 
             PopupControlID="Panel8"
             BackgroundCssClass="modalBackground"
             DropShadow="false"
             OkControlID="Button12" />
    
    <asp:Panel ID="Panel7" runat="server" BackImageUrl="~/Images/67890.jpg" 
        Height="594px" style="Display: none" Width="527px" CssClass="op" >
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label46" runat="server" ForeColor="#33CCFF" 
            style="font-size: xx-large" Text="Basic Info:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <table align="center" class="style2" style="width: 85%; height: 314px;">
            <tr>
                <td class="style14">
                    <asp:Label ID="Label47" runat="server" ForeColor="#33CCFF" 
                        Text="Your First Name"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox53" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label48" runat="server" ForeColor="#33CCFF" 
                        Text="Your Last Name"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox54" runat="server" backcolor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label49" runat="server" ForeColor="#33CCFF" Text="Age"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox55" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label50" runat="server" ForeColor="#33CCFF" Text="Occupation"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox56" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label51" runat="server" ForeColor="#33CCFF" Text="Favorite Game"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox57" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" forecolor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label52" runat="server" ForeColor="#33CCFF" 
                        Text="1 interesting fact aobut your self"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox58" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" Forecolor="White" Height="46px" 
                        Width="261px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button10" runat="server" Text="Ok"  />
        &nbsp;&nbsp;
        <asp:Button ID="Button11" runat="server" Text="Cancel" />
        <br />
        <br />
    </asp:Panel>
    <table class="style25">
        <tr>
            <td>
                <asp:Label ID="Label82" runat="server" ForeColor="#33CCFF" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label83" runat="server" ForeColor="#33CCFF" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label84" runat="server" ForeColor="#33CCFF" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label85" runat="server" ForeColor="#33CCFF" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label86" runat="server" ForeColor="#33CCFF" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label87" runat="server" ForeColor="#33CCFF" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label88" runat="server" ForeColor="#33CCFF" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label89" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label97" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label105" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label113" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label121" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label129" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Label ID="Label137" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label90" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label98" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label106" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label114" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label122" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label130" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Label ID="Label138" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label91" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label99" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label107" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label115" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label123" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label131" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Label ID="Label139" runat="server" ForeColor="#FF6600" Text="Label" 
                    style="text-align: left" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label92" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label100" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label108" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label116" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label124" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label132" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Label ID="Label140" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label93" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label101" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label109" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label117" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label125" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label133" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label141" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label94" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label102" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label110" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label118" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label126" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label134" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Label ID="Label142" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label95" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label103" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label111" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label119" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label127" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label135" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Label ID="Label143" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label96" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label104" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label112" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label120" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label128" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label136" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Label ID="Label144" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label97a" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label105a" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label113a" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label121a" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label129a" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label137a" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:Label ID="Label146a" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <p class="style9">
        &nbsp;</p>
    <asp:ScriptManager id="MasterScriptManager" EnableScriptGlobalization="false" runat="Server">
</asp:ScriptManager>
    <ajaxtoolkit:collapsiblepanelextender id="cpe" runat="server"
        targetcontrolid= "Panel1"
        expandcontrolid= "Panel2"
        collapsecontrolid = "Panel2"
        collapsed = "True"
        TextLabelID="Label2"
        Expandedtext = "Hide Call of Duty Zombies"
        CollapsedText= "Show CAll of Duty Zombies detail"
        ImagecontrolID="Image1"
        ExpandedImage="~/Images/collapse_blue.jpg"
        CollapsedImage="~/images/expand_blue.jpg"
        suppressPostBack="true" ></ajaxtoolkit:collapsiblepanelextender>
    <asp:Panel ID="Panel2" runat="server" BackColor="White" ForeColor="#66FF33" 
        Height="20px" Width="370px" BackImageUrl="~/Images/01234567890.jpg">
        <asp:Image ID="Image1" runat="server" ImageUrl="Images/expand_blue.jpg"/>
        <asp:Label ID="Label2" runat="server" Text="Call of duty Zombies" 
            ForeColor="#33CCFF"></asp:Label>
    </asp:Panel>
    <p>
    </p>
    <asp:Panel ID="Panel1" runat="server" Height = "0px" overflow = "Hidden">
        <table class="style2">
            <tr>
                <td class="style19">
                    <asp:Label ID="Label19" runat="server" ForeColor="White" 
                        Text="Click on the maps you like"></asp:Label>
                </td>
                <td class="style20" style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center" class="style21">
                    <asp:Button ID="Button2" runat="server" Text="Kino Der Toten" />
                </td>
                <td style="text-align: center" class="style21">
                    <asp:Button ID="Button3" runat="server" Text="Ascension" />
                </td>
                <td style="text-align: center" class="style21">
                    <asp:Button ID="Button4" runat="server" Text="Call of the dead" />
                </td>
                <td style="text-align: center" class="style21">
                    <asp:Button ID="Button5" runat="server" Text="Shangri la" />
                </td>
                <td style="text-align: center" class="style21">
                    <asp:Button ID="Button6" runat="server" Text="Moon" Width="128px" />
                </td>
                <td style="text-align: center" class="style21">
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label16" runat="server" ForeColor="White" Text="Highest Round:"></asp:Label>
                </td>
                <td class="style13">
                    <asp:TextBox ID="TextBox47" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" Width="46px" CssClass="txtbox"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox48" runat="server" BorderColor="#33CCFF" Width="46px" 
                        CssClass="txtbox"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox49" runat="server" BorderColor="#33CCFF" Width="46px" 
                        CssClass="txtbox"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox50" runat="server" BorderColor="#33CCFF" Width="46px" 
                        CssClass="txtbox"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox51" runat="server" BorderColor="#33CCFF" Width="46px" 
                        CssClass="txtbox"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:TextBox ID="TextBox52" runat="server" BorderColor="#33CCFF" Width="46px" 
                        CssClass="txtbox"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    <asp:Label ID="Label17" runat="server" ForeColor="White" Text=" Highest Kills:"></asp:Label>
                </td>
                <td class="style18">
                </td>
                <td style="text-align: center" class="style3">
                </td>
                <td style="text-align: center" class="style3">
                </td>
                <td style="text-align: center" class="style3">
                </td>
                <td style="text-align: center" class="style3">
                </td>
                <td style="text-align: center" class="style3">
                </td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td class="style12">
                    <asp:Label ID="Label18" runat="server" ForeColor="White" Text="Most Revives:"></asp:Label>
                </td>
                <td class="style13">
                    &nbsp;&nbsp;
                </td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    <asp:Button ID="Buttonsave" runat="server" Text="Save Changes" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        &nbsp;<p style="text-align: right">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" Enabled="False" 
            ForeColor="Black" style="text-align: right" Visible="False">LinkButton</asp:LinkButton>
        &nbsp;</p>
&nbsp;&nbsp;&nbsp;&nbsp; 
 </asp:Content>
