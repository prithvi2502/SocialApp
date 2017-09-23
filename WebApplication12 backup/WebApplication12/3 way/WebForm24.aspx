<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="WebForm24.aspx.vb" Inherits="WebApplication12.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" type="text/css" href="Profilecss.css">
<div style=" width: 980px;  margin: 0 auto;  clear: both; height:1000px; overflow: hidden;">
	
	<br />
	<br />
	<asp:Repeater ID="Repeater4" runat="server">
		<ItemTemplate>
			<label class="grid_super"><%# Eval("fname")%> <%# Eval("lname")%></label>

		</ItemTemplate>
	</asp:Repeater>
	<br />
	<br />
		<asp:Label ID="eamil1" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
		<asp:Label ID="email12" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
		<asp:Label ID="Label14" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
		<asp:Label ID="Label15" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
		<asp:Label ID="Label16" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
	<div class="tile">
		<div style="padding: 5px; background-color: #526fa7; margin: -20px; clear:both;">
			<label runat="server" style="color: white;" id="f_name">Prithviraj</label>
		</div>
		<br />
		<br />
		<div style="overflow: hidden; height: 310px;">
			<asp:Image runat="server" ID="Image1" style="width: 100%;" />
		</div>
		<label runat="server" id="f_name_2"></label> <label runat="server" id="L_name_1"></label>
		<label runat="server" id="somename" style="float: right;"></label>
		<br />
		<br />
	</div>
	<div id="contacting"  class="tile">
		<div style="padding: 5px; background-color: #526fa7; margin: -20px; clear:both;">
			<label style="color: white;">Connect</label>
		</div>
		<asp:UpdatePanel ID="updatepanel1" runat="server">
		<ContentTemplate>
		<br />
		<br />
		<asp:HyperLink runat="server" id="buttonof" class="links_link" href="#" onclick="Unnamed1_Click">Friend Me</asp:HyperLink>
		<br />
		<a class="links_link" href="#">Message Me</a>
		<br />
		<a class="links_link" href="#">$Tab me</a>
		<br />
		<a class="links_link" href="#">See My Latest Tabs $</a>
		</ContentTemplate>
		</asp:UpdatePanel>
	</div>
	<div class="tile" style="">
		<div style="padding: 5px; background-color: #526fa7; margin: -20px; clear:both;">
			<label style="color: white;">Who am I?</label>
		</div>
		<BR />
		<BR />
		<div>
			<p runat="server" id="likewhy">
				An awesome dude with awesomeness! I really like pie seriously.
			</p>
		</div>
	</div>

	<div class="tile" style=" ">
		<div style="padding: 5px; background-color: #a55252; margin: -20px; clear:both;">
			<label style="color: white;">Gamer Card</label>
		</div>
		<div>
			<asp:Repeater ID="Repeater2" runat="server">
				<ItemTemplate>
					<table style="text-align:left; color: white;">
						<br />
						<br />
						<tr>
							<td><label ID="label5" class="title_sub" >Email</label></td>
							<td style="text-align:left;"><label ID="label8" class="tagleft" ><%# Eval("email")%></label></td>
						</tr>
						<tr>
							
							<td><label ID="label6" class="title_sub" >Favorite Game </label></td>
							<td style="text-align:left;"><label ID="label9" class="tagleft" ><%# Eval("favgame")%></label></td>
						</tr>
						<tr>
							
							<td><label ID="Label10" class="title_sub">Music for gamming</label></td>
							<td style="text-align:left;"><label Id="Label11" class="tagleft"><%# Eval("gameinmusic")%></label></td>
						</tr>
						<tr>	
							
							<td><label Id="Label12" class="title_sub" >Why games?</label></td>
							<td style="text-align:left;"><label Id="Label13" class="tagleft"><%# Eval("whygames")%></label></td>
						</tr>
						<tr>
							
							<td><label ID="label1" class="title_sub"  >First Game</label></td>
							<td style="text-align:left;"><label ID="label2" class="tagleft" ><%# Eval("firstgame")%></label></td>
						</tr>
						<tr>
							
							<td><label ID="label3" class="title_sub">Game System </label></td>
							<td style="text-align:left;"><label ID="label4" class="tagleft" > <%# Eval("gamesys")%></label></td>
						</tr>
						<tr>
							
							<td><label ID="Label7" class="title_sub">Childhood Game</label></td>
							<td style="text-align:left;"><label Id="Label14" class="tagleft"><%# Eval("childhoodgames")%></label></td>
						</tr>	
						<tr>
							
							<td><label Id="Label15" class="title_sub" >Genre Of Game</label></td>
							<td style="text-align:left;"><label Id="Label16" class="tagleft"><%# Eval("genreofgame")%> </label></td>
						</tr>
						<tr>
							
							<td><label ID="label17" class="title_sub" >Clan Affiliation</label></td>
							<td style="text-align:left;"><label ID="label18" class="tagleft" ><%# Eval("Clan")%></label></td>
						</tr>
						<tr>
							
							<td><label ID="label19" class="title_sub" >Clan Position</label></td>
							<td style="text-align:left;"><label ID="label20" class="tagleft" ><%# Eval("clanposition")%></label></td>
						</tr>
						<Br />
					</table>
				</ItemTemplate>	
			</asp:Repeater>
		</div>
	</div>
	<div class="tile" style=" position: absolute; top: 660px; ">
		<div style="padding: 5px; background-color: #a55252; margin: -20px; clear:both;">
			<label style="color: white;">Basic information</label>
		</div>
		<BR />
		<BR />
		<div>
			<asp:Repeater ID="Repeater1" runat="server">
				<ItemTemplate>
					<table style="text-align:left; color: white;">
						<br />
						<br />
						<tr>
								<td><label ID="label3" class="title_sub" >Email</label></td>
								<td><label ID="label7"  class="tagleft"  ><%# Eval("email")%></label></td>
						</tr>
						<tr>
							
								<td><label ID="label5" class="title_sub" >Work</label></td>
								<td><label ID="label8" class="tagleft"  ><%# Eval("works")%></label></td>
						</tr>
						<tr>
							
								<td><label ID="label6" class="title_sub" >High School </label></td>
								<td><label ID="label9" class="tagleft"  ><%# Eval("highschool")%></label></td>
						</tr>
						<tr>	
							
								<td><label ID="Label10" class="title_sub" >College</label></td>
								<td><label Id="Label11" class="tagleft"  ><%# Eval("college")%></label></td>
						</tr>
						<tr>
							
								<td><label Id="Label12" class="title_sub" >About</label></td>
								<td><label Id="Label13" class="tagleft" ><%# Eval("About")%></label></td>
						</tr>
						<tr>
							
								<td><label ID="label21" class="title_sub" >Hometown</label></td>
								<td><label ID="label22" class="tagleft"  ><%# Eval("hometown")%></label></td>
						</tr>
						<tr>
							
								<td><label ID="label23" class="title_sub" >Sex </label></td>
								<td><label ID="label24" class="tagleft"  ><%# Eval("sex")%></label></td>
						</tr>	
						<tr>
							
								<td><label ID="Label25" class="title_sub" >Political Views</label></td>
								<td><label Id="Label26" class="tagleft" ><%# Eval("politicalviews")%></label></td>
						</tr>
						<tr>
							
								<td><label Id="Label27" class="title_sub" >Mom</label></td>
								<td><label Id="Label28" class="tagleft" ><%# Eval("mom")%> </label></td>
						</tr>
						<tr>
							
								<td><label ID="label29" class="title_sub" >Dad</label></td>
								<td><label ID="label30" class="tagleft"  ><%# Eval("Dad")%></label></td>
						</tr>
						<Br />
					</table>
				</ItemTemplate>
			</asp:Repeater>
		</div>
	</div>




</div>
</asp:Content>
