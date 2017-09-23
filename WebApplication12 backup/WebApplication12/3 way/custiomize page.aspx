<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="WebForm15.aspx.vb" Inherits="WebApplication12.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <style type="text/css">
        .mainlabel
        {
            font: bold 17px Arial, Helvetica;
        }
        .btnsave
	    {
		    font-weight: bold;
		    color: white;
            background: rgb(135,224,253); /* Old browsers */
            background: -moz-linear-gradient(top,  rgba(135,224,253,1) 0%, rgba(83,203,241,1) 40%, rgba(5,171,224,1) 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(135,224,253,1)), color-stop(40%,rgba(83,203,241,1)), color-stop(100%,rgba(5,171,224,1))); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top,  rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top,  rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top,  rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* IE10+ */
            background: linear-gradient(to bottom,  rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#87e0fd', endColorstr='#05abe0',GradientType=0 ); /* IE6-9 */

            text-align: center;
            width: 85px;
        }
	   .btnsave:hover
	    {
		    background: rgb(5,171,224); /* Old browsers */
            background: -moz-linear-gradient(top, rgba(5,171,224,1) 0%, rgba(83,203,241,1) 60%, rgba(135,224,253,1) 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(5,171,224,1)), color-stop(60%,rgba(83,203,241,1)), color-stop(100%,rgba(135,224,253,1))); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* IE10+ */
            background: linear-gradient(to bottom, rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#05abe0', endColorstr='#87e0fd',GradientType=0 ); /* IE6-9 */E6-9 */
	    }
	    .button
	    {
	        border-width=1px;
	        background: rgb(181,189,200); /* Old browsers */
            background: -moz-linear-gradient(top, rgba(181,189,200,1) 0%, rgba(130,140,149,1) 36%, rgba(40,52,59,1) 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(181,189,200,1)), color-stop(36%,rgba(130,140,149,1)), color-stop(100%,rgba(40,52,59,1))); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, rgba(181,189,200,1) 0%,rgba(130,140,149,1) 36%,rgba(40,52,59,1) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, rgba(181,189,200,1) 0%,rgba(130,140,149,1) 36%,rgba(40,52,59,1) 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, rgba(181,189,200,1) 0%,rgba(130,140,149,1) 36%,rgba(40,52,59,1) 100%); /* IE10+ */
            background: linear-gradient(to bottom, rgba(181,189,200,1) 0%,rgba(130,140,149,1) 36%,rgba(40,52,59,1) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#b5bdc8', endColorstr='#28343b',GradientType=0 ); /* IE6-9 */
	    }
	    .button:hover
	    {
	        background: rgb(40,52,59); /* Old browsers */
            background: -moz-linear-gradient(top,  rgba(40,52,59,1) 0%, rgba(130,140,149,1) 64%, rgba(181,189,200,1) 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(40,52,59,1)), color-stop(64%,rgba(130,140,149,1)), color-stop(100%,rgba(181,189,200,1))); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top,  rgba(40,52,59,1) 0%,rgba(130,140,149,1) 64%,rgba(181,189,200,1) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top,  rgba(40,52,59,1) 0%,rgba(130,140,149,1) 64%,rgba(181,189,200,1) 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top,  rgba(40,52,59,1) 0%,rgba(130,140,149,1) 64%,rgba(181,189,200,1) 100%); /* IE10+ */
            background: linear-gradient(to bottom,  rgba(40,52,59,1) 0%,rgba(130,140,149,1) 64%,rgba(181,189,200,1) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#28343b', endColorstr='#b5bdc8',GradientType=0 ); /* IE6-9 */
	    }
        #basic_content
        {
            text-align:left;
            width: 527px;
            margin: 0 auto;
        }
        .labelsub
        {
            font-family: 'GeogrotesqueSemiBold', helvetica, arial;
            font-size: 12px;
            text-transform: uppercase;
            color: #F60;
        }
        #state
        {
            font-family:'GeogrotesqueSemiBoldItalic', helvetica, arial;
            font-size: 15px;
            text-transform:uppercase;
            text-decoration:none;
        }
        .style24
        {
            text-align: left;
            width: 282px;
        }
        .style26
        {
            text-align: center;
            width: 244px;
        }
        .style27
        {
            text-align: right;
            width: 268px;
        }
        #maincontent
        {
            font: bold 25px Arial, Helvetica;
        }
        .next
        {
            cursor:pointer;
            background: rgb(238,238,238); /* Old browsers */
            background: -moz-linear-gradient(top, rgba(238,238,238,1) 0%, rgba(204,204,204,1) 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(238,238,238,1)), color-stop(100%,rgba(204,204,204,1))); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, rgba(238,238,238,1) 0%,rgba(204,204,204,1) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, rgba(238,238,238,1) 0%,rgba(204,204,204,1) 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, rgba(238,238,238,1) 0%,rgba(204,204,204,1) 100%); /* IE10+ */
            background: linear-gradient(to bottom, rgba(238,238,238,1) 0%,rgba(204,204,204,1) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#eeeeee', endColorstr='#cccccc',GradientType=0 ); /* IE6-9 */
        }
        .next:hover
        {
            background: rgb(204,204,204); /* Old browsers */
            background: -moz-linear-gradient(top, rgba(204,204,204,1) 0%, rgba(238,238,238,1) 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(204,204,204,1)), color-stop(100%,rgba(238,238,238,1))); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, rgba(204,204,204,1) 0%,rgba(238,238,238,1) 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, rgba(204,204,204,1) 0%,rgba(238,238,238,1) 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, rgba(204,204,204,1) 0%,rgba(238,238,238,1) 100%); /* IE10+ */
            background: linear-gradient(to bottom, rgba(204,204,204,1) 0%,rgba(238,238,238,1) 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cccccc', endColorstr='#eeeeee',GradientType=0 ); /* IE6-9 */
        }
        .asdf
        {
            cursor:default;
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
        <br />
        <div style="text-align:right">
            <asp:LinkButton ID="edit_feild" Text="Edit" style="font-family: 'GeogrotesqueSemiBold', helvetica, arial;
            font-size: 15px;
            text-transform:uppercase;
            cursor:pointer;
            color:#33CCFF;
            padding-right:43px;" runat="server" />
        </div>
        <br />
                <table align="center" class="style2" style="width: 85%; height: 314px;">
            <tr>
                <td class="style27">
                    <asp:Label ID="Label37" CssClass="mainlabel" runat="server" ForeColor="#33CCFF" 
                        Text="Your First Name"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label53" CssClass="labelsub" runat="server" ForeColor="#FF6600"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style27">
                    <asp:Label ID="Label38" CssClass="mainlabel" runat="server" ForeColor="#33CCFF" 
                        Text="Your Last Name" style="text-align: left"></asp:Label>
                </td>
                <td style="text-align: center" class="style24">
                    <asp:Label ID="Label54" CssClass="labelsub" runat="server" ForeColor="#FF6600" 
                        Text=""></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style27">
                    <asp:Label ID="Label39" CssClass="mainlabel" runat="server" ForeColor="#33CCFF" 
                        Text="When were you born"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label55" CssClass="labelsub" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style27">
                    <asp:Label ID="Label40" CssClass="mainlabel" runat="server" ForeColor="#33CCFF" Text="Gender"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label56" CssClass="labelsub" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style27">
                    <asp:Label ID="Label41" CssClass="mainlabel" runat="server" ForeColor="#33CCFF" Text="Location"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label57" CssClass="labelsub" runat="server" ForeColor="#FF6600"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style27">
                    <asp:Label ID="Label42" CssClass="mainlabel" runat="server" ForeColor="#33CCFF" 
                        Text="Favorite game"></asp:Label>
                </td>
                <td style="text-align: center" class="style26">
                    <asp:Label ID="Label58" CssClass="labelsub" runat="server" ForeColor="#FF6600" 
                        style="text-align: left"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style27">
                    <asp:Label ID="Label43" CssClass="mainlabel" runat="server" ForeColor="#33CCFF" 
                        Text="Email"></asp:Label></td>
                <td class="style26">
                 <asp:Label ID="Label59" CssClass="labelsub" runat="server" ForeColor="#FF6600" 
                        style="text-align: left">asdf</asp:Label>
                    </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:panel style=" text-align:right;" runat="server"> 
        <asp:button id="btn_save" CssClass="btnsave" runat="server" style="width:120px;height:35px" text="Save"></asp:button>
        </asp:panel>
       </asp:panel>
    </div>
</div>
<div id="popups_hidden">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
       <asp:LinkButton ID="LinkButton1" ForeColor="Black" CssClass="asdf" runat="server">LinkButton</asp:LinkButton>
       <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
             TargetControlID="edit_feild"
             PopupControlID="Panel7"
             BackgroundCssClass="modalBackground"
             DropShadow="false"
             OkControlID="Button10"
             OnOkScript="ONOK()"
             CancelControlID="Button11" />
        <asp:Panel ID="Panel7" runat="server"
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
                    <asp:Label ID="Label49" runat="server" Text="When you were born" ForeColor="#33CCFF"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox55" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label50" runat="server" Text="Gender" ForeColor="#33CCFF"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox56" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" ForeColor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label51" runat="server" ForeColor="#33CCFF" Text="Location"></asp:Label>
                </td>
                <td style="text-align: left">
                    <asp:TextBox ID="TextBox57" runat="server" BackColor="White" 
                        BorderColor="#33CCFF" CssClass="txtbox" forecolor="Black"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label52" runat="server" ForeColor="#33CCFF" 
                        Text="Favorite Game"></asp:Label>
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
        <asp:Button id="Button10" class="button" runat="server" Text="Ok" />
        &nbsp;&nbsp;
        <asp:Button ID="Button11" Class="button" runat="server" Text="Cancel" />
        <br />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel8" runat="server" BackImageUrl="~/Images/678.jpg" 
        Height="160px" style = "display: none"  Width="240px" >
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="#FF6600" 
            Text="Please fill in all of the fields"></asp:Label>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button12" runat="server" Text="Ok" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server"
        TargetControlID="LinkButton1" 
        PopupControlID="Panel8"
        BackgroundCssClass="modalBackground"
        DropShadow="false"
        OkControlID="Button12" />
    <asp:Button ID="Button13" CssClass="next" Text="Next Step" runat="server" 
        Width="820px" Height="38px" Visible="False" 
        PostBackUrl="~/3 way/gamechooser.aspx" />
        <br />
        <br />
        <br />
        <br />
        <br />

</div>
</asp:Content>
