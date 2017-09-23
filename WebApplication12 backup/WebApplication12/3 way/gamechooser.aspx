<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="gamechooser.aspx.vb" Inherits="WebApplication12.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .intro
    {
	    font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	    font-size: 14px;
	    text-transform: uppercase;
	    color:#F60;
    }
    #container_content
    {
	    font: bold 25px Arial, Helvetica;
	    text-align:center;
    }
    .asdf
    {
	    font: bold 25px Arial, Helvetica;
    }
    #title_word
    {
	    font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	    font-size: 20px;
	    text-transform: uppercase;
	    color:#33CCFF;
    }
    .title_word
    {
	    font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	    font-size: 20px;
	    text-transform: uppercase;
	    color:#33CCFF;
    }

    #table
    {
	    font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	    font-size: 12px;
	    text-transform: uppercase;
	    color:#F60;
    }
    #panel_chooser
    {
	    font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	    font-size: 12px;
	    text-transform: uppercase;
	    color:#F60;
    }
    .okbutton
    {
        background: rgb(135,224,253); /* Old browsers */
        background: -moz-linear-gradient(top, rgba(135,224,253,1) 0%, rgba(83,203,241,1) 40%, rgba(5,171,224,1) 100%); /* FF3.6+ */
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(135,224,253,1)), color-stop(40%,rgba(83,203,241,1)), color-stop(100%,rgba(5,171,224,1))); /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(top, rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* Chrome10+,Safari5.1+ */
        background: -o-linear-gradient(top, rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* Opera 11.10+ */
        background: -ms-linear-gradient(top, rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* IE10+ */
        background: linear-gradient(to bottom, rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* W3C */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#87e0fd', endColorstr='#05abe0',GradientType=0 ); /* IE6-9 */
    }
    .okbutton:hover
    {
        background: rgb(5,171,224); /* Old browsers */
        background: -moz-linear-gradient(top, rgba(5,171,224,1) 0%, rgba(83,203,241,1) 60%, rgba(135,224,253,1) 100%); /* FF3.6+ */
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(5,171,224,1)), color-stop(60%,rgba(83,203,241,1)), color-stop(100%,rgba(135,224,253,1))); /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(top, rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* Chrome10+,Safari5.1+ */
        background: -o-linear-gradient(top, rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* Opera 11.10+ */
        background: -ms-linear-gradient(top, rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* IE10+ */
        background: linear-gradient(to bottom, rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* W3C */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#05abe0', endColorstr='#87e0fd',GradientType=0 ); /* IE6-9 */
    }
    #tableholder
    {
        font: bold 25px Arial, Helvetica;
	    text-align:center;
    }
    .intro1
    {
	    font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	    font-size: 14px;
	    text-transform: uppercase;
	    color:#F60;
	    width:60%;
	    align: center;
	    margin-left: auto;
	    margin-right: auto;
    }
    #panelman
    {
        font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	    font-size: 12px;
	    text-transform: uppercase;
	    color:#F60;
	    text-align:center;
    }
    .coolbutton
    {
        cursor: pointer;
        background: rgb(207,231,250); /* Old browsers */
        background: -moz-linear-gradient(top, rgba(207,231,250,1) 0%, rgba(99,147,193,1) 100%); /* FF3.6+ */
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(207,231,250,1)), color-stop(100%,rgba(99,147,193,1))); /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(top, rgba(207,231,250,1) 0%,rgba(99,147,193,1) 100%); /* Chrome10+,Safari5.1+ */
        background: -o-linear-gradient(top, rgba(207,231,250,1) 0%,rgba(99,147,193,1) 100%); /* Opera 11.10+ */
        background: -ms-linear-gradient(top, rgba(207,231,250,1) 0%,rgba(99,147,193,1) 100%); /* IE10+ */
        background: linear-gradient(to bottom, rgba(207,231,250,1) 0%,rgba(99,147,193,1) 100%); /* W3C */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cfe7fa', endColorstr='#6393c1',GradientType=0 ); /* IE6-9 */
    }
    .coolbutton:hover
    {
        background: rgb(99,147,193); /* Old browsers */
        background: -moz-linear-gradient(top, rgba(99,147,193,1) 0%, rgba(207,231,250,1) 100%); /* FF3.6+ */
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(99,147,193,1)), color-stop(100%,rgba(207,231,250,1))); /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(top, rgba(99,147,193,1) 0%,rgba(207,231,250,1) 100%); /* Chrome10+,Safari5.1+ */
        background: -o-linear-gradient(top, rgba(99,147,193,1) 0%,rgba(207,231,250,1) 100%); /* Opera 11.10+ */
        background: -ms-linear-gradient(top, rgba(99,147,193,1) 0%,rgba(207,231,250,1) 100%); /* IE10+ */
        background: linear-gradient(to bottom, rgba(99,147,193,1) 0%,rgba(207,231,250,1) 100%); /* W3C */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6393c1', endColorstr='#cfe7fa',GradientType=0 ); /* IE6-9 */
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div id="container_content">
        <asp:Label ID="intro" CssClass="intro" runat="server" Text="Welcome to part where you pick your games. Confused, alright well what you need to do is just pick the games you like and then later on you can customize your game page. Still confused don't worry about it just pick the games you like now. Happy picking!" /> 
        <br />
        <br />
        <div id="title">
            <asp:Label ID="title_word" runat="server" Text="Choose Your Game" />
        </div>
        <br />
        <div id="pannel_holder">
            <asp:Panel ID="panel_chooser" runat="server">
            <table id="table" align="center" class="style2" style="width: 316px; height: 262px">
            <tr>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton1" runat="server" ForeColor="#33CCFF" 
                        Text="Shooters" onclick = "forrad1(this)"  />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton2" runat="server" ForeColor="#33CCFF" 
                        Text="Adventure/Action" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton3" runat="server" ForeColor="#33CCFF" 
                        Text="RPG" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton4" runat="server" ForeColor="#33CCFF" 
                        text="Sports" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton5" runat="server" ForeColor="#33CCFF" 
                        Text="Strategy" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton6" runat="server" ForeColor="#33CCFF" 
                        Text="Fighter" />
                </td>
            </tr>
            <tr>
                <td style="text-align: left">
                    <asp:RadioButton ID="RadioButton7" runat="server" ForeColor="#33CCFF" 
                        Text="Racing" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="continuetoo" CssClass="coolbutton" Text="Continue" runat="server" 
                    Height="36px" Width="133px" />       
            </asp:Panel>
        </div>
    </div>
    <br />
    <br />
    <br />
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
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
        <asp:Panel ID="Panel15" CssClass="asdf" style = "text-align:center; display:none;"
        Height="523px" Width="527px" runat="server">
            <br />
             <asp:Label ID="Label78" 
                runat="server" CssClass="title_word" ForeColor="#FF6600" style="font-size: x-large" 
                Text="Racing/others"></asp:Label>
            <br />
            <br />
           <asp:Label 
                ID="Label79" runat="server" 
                ForeColor="#FF6600" CssClass="title_word" Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="intro" style="text-align:left; width:523px; margin-left:auto; margin-right:auto;">
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
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton77" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
                </table>
                <br />
                <br />
                <br />
            <asp:Button ID="Button32" 
                runat="server" Text="Ok" CssClass="okbutton" Width="94px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button33" CssClass="okbutton" 
                runat="server" Text="Cancel" Width="94px" />
    </asp:Panel>
        <asp:Panel ID="Panel14" runat="server" CssClass="asdf" style = "text-align:center; display:none;"
        Height="523px" Width="527px">
            <br />
            <asp:Label ID="Label75" 
                runat="server" CssClass="title_word" ForeColor="#FF6600" style="font-size: x-large" 
                Text="Fighter"></asp:Label>
            <br />
            <br />
            <asp:Label 
                ID="Label76" runat="server" 
                ForeColor="#FF6600" CssClass="title_word" Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="intro" style="text-align:center; width:523px; margin-left:auto; margin-right:auto;">
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
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton67" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <asp:Button ID="Button29" 
                runat="server" CssClass="okbutton" Text="Ok" Width="94px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button30" CssClass="okbutton"
                runat="server" Text="Cancel" Width="94px" />
    </asp:Panel>
        <asp:Panel ID="Panel13" runat="server" CssClass="asdf" style = "text-align:center; display:none;"
        Height="523px" Width="527px">
            <br />
            <asp:Label ID="Label72" 
                runat="server" CssClass="title_word" ForeColor="#FF6600" style="font-size: x-large" Text="Strategy"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label73" runat="server" 
                ForeColor="#FF6600" CssClass="title_word" Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="intro" style="text-align:left; width:523px; margin-left:auto; margin-right:auto;">
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
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton57" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <asp:Button ID="Button26" 
                runat="server" Text="Ok" CssClass="okbutton" Width="94px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button27" runat="server" Text="Cancel" CssClass="okbutton" Width="94px"  />
    </asp:Panel>
        <asp:Panel ID="Panel12" CssClass="asdf" style = "text-align:center; display:none;"
        Height="523px" Width="527px" runat="server">
            <br />
            <asp:Label ID="Label69" runat="server" CssClass="title_word" ForeColor="#FF6600" 
                style="font-size: x-large" Text="Sports"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label70" runat="server" ForeColor="#FF6600" CssClass="title_word" 
                Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="intro" style="text-align:left; width:523px; margin-left:auto; margin-right:auto;">
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
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton47" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            <br />  
            <br />
            <br />
            <asp:Button ID="Button23" runat="server" Text="Ok" CssClass="okbutton" Width="94px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button24" runat="server" Text="Cancel" CssClass="okbutton" 
                  Width="94px" />
    </asp:Panel>
        <asp:Panel ID="Panel11" runat="server" CssClass="asdf" style = "text-align:center;display:none;"
        Height="523px" Width="527px">
            <br />
            <asp:Label ID="Label66" runat="server" CssClass="title_word" ForeColor="#FF6600" style="font-size: x-large" Text="RPG"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label67" runat="server" ForeColor="#FF6600" CssClass="title_word"
                Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="intro" style="text-align:left; width:523px; margin-left:auto; margin-right:auto;">
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
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton37" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <asp:Button ID="Button20" runat="server" Text="Ok" CssClass="okbutton" Width="94px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button21" runat="server" Text="Cancel" CssClass="okbutton" Width="94px"   />
    </asp:Panel>
        <asp:Panel ID="Panel10" runat="server" CssClass="asdf" style = "text-align:center; display:none;"
        Height="523px" Width="527px" >
            <br />
            <asp:Label ID="Label63" runat="server" CssClass="title_word" ForeColor="#FF6600" style="font-size: x-large" Text="Adventure/Action"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label64" runat="server" ForeColor="#FF6600" CssClass="title_word"
                Text="Pick the games you like from our top 9."></asp:Label>
            <br />
            <br />
            <table class="intro" style="text-align:left; width:523px; margin-left:auto; margin-right:auto;">
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
                <tr>
                    <td style="text-align: center">
                        <asp:RadioButton ID="RadioButton27" runat="server" ForeColor="#33CCFF" 
                            Visible="False" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <asp:Button ID="Button16" runat="server" Text="Ok" CssClass="okbutton" Width="94px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button17" runat="server" Text="Cancel" CssClass="okbutton" Width="94px" />
    </asp:Panel>
    <asp:Panel ID="Panel9" runat="server" 
        CssClass="asdf" style = "text-align:center; display:none;"
        Height="523px" Width="527px">
        <br />
        <asp:Label ID="Label60" runat="server" CssClass="title_word" ForeColor="#FF6600" style="font-size: x-large" Text="Shooter"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label61" runat="server" ForeColor="#FF6600" CssClass="title_word" Text="Pick a game from our top 9 games"></asp:Label>
        <br />
        <br />
        <table class="intro" style="text-align:left; width:523px; margin-left:auto; margin-right:auto;">
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
        <table>
            <tr>
                <td style="text-align: center">
                    <asp:RadioButton ID="RadioButton17" runat="server" Visible="False" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <asp:Button ID="Button14" runat="server" Text="Ok" CssClass="okbutton" Width="94px"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button15" CssClass="okbutton" runat="server" Text="Cancel" Width="94px"  />
    </asp:Panel>
    </div>
    <div id="tableholder">
    <asp:Panel ID="panelman" runat="server">
        <table class="intro1">
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
            <td style="text-align: center">
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
            <td style="text-align: center">
                <asp:Label ID="Label138" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False" style="text-align: center"></asp:Label>
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
            <td style="text-align: center">
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
            <td style="text-align: center">
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
            <td style="text-align: center">
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
            <td style="text-align: center">
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
            <td style="text-align: center">
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
            <td style="text-align: center">
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
            <td style="text-align: center">
                <asp:Label ID="Label146a" runat="server" ForeColor="#FF6600" Text="Label" 
                    Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    </asp:Panel>
    </div>
</asp:Content>
