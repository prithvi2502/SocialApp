<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site5.Master" CodeBehind="WebForm18.aspx.vb" Inherits="WebApplication12.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="theme.css">
<style>
.next_button
{
	margin-left: 450px;
	width: 100px;
	height: 40px;
	cursor: pointer;
	background: rgb(69,72,77); /* Old browsers */
	background: -moz-linear-gradient(top, rgba(69,72,77,1) 0%, rgba(0,0,0,1) 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(69,72,77,1)), color-stop(100%,rgba(0,0,0,1))); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, rgba(69,72,77,1) 0%,rgba(0,0,0,1) 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, rgba(69,72,77,1) 0%,rgba(0,0,0,1) 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, rgba(69,72,77,1) 0%,rgba(0,0,0,1) 100%); /* IE10+ */
	background: linear-gradient(to bottom, rgba(69,72,77,1) 0%,rgba(0,0,0,1) 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#45484d', endColorstr='#000000',GradientType=0 ); /* IE6-9 */
	color: white;
	border-width: 2px;
	border-color: black;
}
.next_button:hover
{
	background: rgb(0,0,0); /* Old browsers */
	background: -moz-linear-gradient(top, rgba(0,0,0,1) 0%, rgba(69,72,77,1) 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,1)), color-stop(100%,rgba(69,72,77,1))); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, rgba(0,0,0,1) 0%,rgba(69,72,77,1) 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, rgba(0,0,0,1) 0%,rgba(69,72,77,1) 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, rgba(0,0,0,1) 0%,rgba(69,72,77,1) 100%); /* IE10+ */
	background: linear-gradient(to bottom, rgba(0,0,0,1) 0%,rgba(69,72,77,1) 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#000000', endColorstr='#45484d',GradientType=0 ); /* IE6-9 */
}
</style>
    <body>
        <div id="main_content" >
			<br />
			<br />
			<br />
			<label class="Fontsys1" id="title"> Info Center</label>
			<br />
			<label class="Fontsys2" id="discription"> You would not want to start of ClanView without putting in some
			personal info so it is easier for your friends tofind you and you to find </label> <label class="Fontsys2">them.</label>
			<br />
			<br />
			<hr />
			<br />
			<div>
			<div id="Progresser_bar" style=" width:640px; margin: 0 auto;">
			<div id="Basic_info">
			<br/>
			<label id="impt">Basic Information</label>
			</div>
			<div id="Likes">
			<br/>
			<label id="impt1">Likes</label>
			</div>
			<div id="gamer_man">
			<br/>
			<label id="impt2">Gamer Card</label>
			</div>
			<div id="gamer_info">
			<br/>
			<label id="impt3">Game Info</label>
			</div>
			</div>
			<br />
			<br />
            <div style="width: 250px; height:123px; margin: 0 auto;">
                <br />
                <br />
                <asp:Label runat="server"  style=" float: left;" CssClass="Fontsys" Text="First we want your name" />
                <br />
                <asp:label runat="server" Style=" float: left;" CssClass="Fontsys" Text ="First Name" />
                <asp:TextBox ID="textbox1" runat="server" Style="width: 200px; height: 10px; float: left; margin-left: 20px;" CssClass="textbox"></asp:TextBox>
                <br />
                <asp:label runat="server" Style=" float: left;" CssClass="Fontsys" Text="Last Name" />
                <asp:TextBox ID="textbox2" runat="server"  Style="width: 200px; height: 10px; float: left; margin-left: 20px; " CssClass="textbox" />
                <br />
                <asp:label ID="Label1" runat="server" Style=" float: left;" CssClass="Fontsys" Text="Last Name" />
                <asp:label ID="Label2" runat="server" Style=" float: left;" CssClass="Fontsys" Text="" />
                <br />
                <br />
                <asp:button ID="Button1" runat="server" cssclass="btnsearch" style="margin-top: 5px; float: right; margin-left: 0;" text="SAVE"
                     onclick="Unnamed6_Click"></asp:button>
            </div>
			<br />
			<br />
            <br />
            <br />
			<p class="Fontsys" id="discription_sub">
				The next few steps are easy. All you have to do tell us about yourself. This will help you find friends
				and have a great time. Our job is to connect you to everything as fast a possible, so help us out and tell
				us what you like. And remember to get your friends to join ClanView for more fun and connections. Remember your
				information is safe with us our security engine will protect it. Have fun and stay connected!
			</p>
			<br />
			<asp:button runat="server" cssclass="btnsearch" text="NEXT"
                    PostBackUrl="~/3 way/First time sign up/WebForm19.aspx" ></asp:button>
			<br />
			<br />
		</div>
    </body>
</asp:Content>
