<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Search area.aspx.vb" Inherits="WebApplication12.WebForm25" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="apples.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
#box
{	
	width: 980px;
	margin: 0 auto;
	margin-top: 0;
	clear: both; height: inherit; overflow: hidden;
height: 1%;
}
#box-small
{
	position: releative;
	height: 60px;
	padding-top: 60px;
}
.box-small
{
	position: releative;
	height: 60px;
	padding-top: 5px;
}
#friend_button
{
	background: rgb(135,224,253); /* Old browsers */
background: -moz-linear-gradient(top, rgba(135,224,253,1) 0%, rgba(83,203,241,1) 40%, rgba(5,171,224,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(135,224,253,1)), color-stop(40%,rgba(83,203,241,1)), color-stop(100%,rgba(5,171,224,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* IE10+ */
background: linear-gradient(to bottom, rgba(135,224,253,1) 0%,rgba(83,203,241,1) 40%,rgba(5,171,224,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#87e0fd', endColorstr='#05abe0',GradientType=0 ); /* IE6-9 */
	width: 40px;
	height: 40px;
	color: white;
	float: right;
	margin-right: 10px;
	margin-top: -36px;
}
#thecoolness
{
	background-color: white;
	font-family: Arial, Helvetica, sans-serif;
}
#coolness
{
	margin-left: 8px;
	float: left;
	font-size: 20px;
	uppercase: bold;
	-moz-text-shadow:     0 0 10px #000000;
    -webkit-text-shadow:  0 0 10px #000000;
    text-shadow:          0 0 10px #000000;
}
#Friend
{
	font-size: 20px;
	uppercase: bold;
	   -moz-text-shadow: 0 0 3px #000000;
   -webkit-text-shadow:  0 0 3px #000000;
   text-shadow:          0 0 3px #000000;
}
#friend_button
{
	border-radius: 5px;
	cursor: pointer;
	border: none;
}
#friend_button:hover
{
	background: rgb(5,171,224); /* Old browsers */
background: -moz-linear-gradient(top,  rgba(5,171,224,1) 0%, rgba(83,203,241,1) 60%, rgba(135,224,253,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(5,171,224,1)), color-stop(60%,rgba(83,203,241,1)), color-stop(100%,rgba(135,224,253,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top,  rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top,  rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top,  rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* IE10+ */
background: linear-gradient(to bottom,  rgba(5,171,224,1) 0%,rgba(83,203,241,1) 60%,rgba(135,224,253,1) 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#05abe0', endColorstr='#87e0fd',GradientType=0 ); /* IE6-9 */

}
#friend_button:active
{
	border: none;
	   -moz-box-shadow:    inset 0 0 20px #000000;
   -webkit-box-shadow: inset 0 0 20px #000000;
   box-shadow:         inset 0 0 20px #000000;
}
#table1
{
	font-size: 12px;
	font-weight: bold;
	color: black;
	font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	text-transform: uppercase;
	padding-left: 20px;
}
#table
{
	font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	font-size: 30px;
	font-weight: bold;
	color: black;
	padding-left: 20px;
	padding-top: 20px;
	text-transform: uppercase;
}
.name
{
	font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	font-size: 14px;
	font-weight: bold;
	color: black;
	text-transform: uppercase;
	text-decoration: none;
}
.name1
{
	font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	font-size: 11px;
	font-weight: bold;
	color: #00bef6;
	text-transform: uppercase;
	font-style:oblique;
	text-decoration: none;
}
</style>
	
	<div id="Thecoolness" style="width:980px;">

	<div id="box">
        <asp:label runat="server" style="display: none;" ID="Label1"></asp:label>
        	<br />
			<br />
			<label class="grid_super">Your Search Result</label>
			<br />
			<br />
	
        <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound">
        <ItemTemplate>
			<div style="width: 513px; float: left; padding: 20px; margin-top: 10px;">
				<div class="tile_search">
					<div class="image_holder">
						<img src="" id="cool_image" runat="Server" style="width: 100%;"></img>
					</div>
					<asp:HyperLink runat="server" id="content" style="color: #048ed3;
					font-size: 13pt; line-height: 16px; text-decoration:none; padding-left: 10px;" NavigateUrl='<%#"~/3 way/WebForm24.aspx?id=" + Eval("email")%>'><%# Eval("fname")%>&nbsp;<%# Eval("lname")%></asp:HyperLink>
					<Br />
					<asp:label runat="server" ID="email_lab" visible="false" Text='<%#Eval("email")%>'></asp:label>
					
					<a style="padding-left: 10px;" class="links_link" href="#">Tab me</a>
					<a class="links_link1" href="#">Send Message</a>
				</div>
			</div>
    </itemtemplate>
    </asp:Repeater>
        </div> 
	</div>
</asp:Content>
