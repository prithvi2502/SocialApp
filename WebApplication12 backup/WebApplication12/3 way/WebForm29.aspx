<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="WebForm29.aspx.vb" Inherits="WebApplication12.WebForm29" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="theme5.css">
	<body>
		<div id="contentbox" style="height: 6000px;">
			<br />
			<br />
			<img style="margin-left: 40px; margin-top:30px;" src="https://sphotos-a.xx.fbcdn.net/hphotos-ash4/471168_169708706487935_299368007_o.jpg" alt="Smiley face" height="150" width="150">
            <asp:Repeater ID="Repeater4" runat="server">
            <ItemTemplate>
            <asp:label ID="label1" runat="server" cssclass="Fontsys1"> <%# Eval("fname")%> </asp:label>
            <asp:Label ID="label4" runat="server" cssclass="Fontsys1"> <%# Eval("lname")%> </asp:label>
            </ItemTemplate>
            </asp:Repeater>
			<br />
            <asp:Label ID="eamil1" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
            <asp:Label ID="email12" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
            <asp:Label ID="Label14" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
            <asp:Label ID="Label15" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
            <asp:Label ID="Label16" runat="server" style="display: none;" CssClass="Fontsys2"></asp:Label>
			<br />
			<br />
			<br />
			<br />
			<div id="work_edu">
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
				<br />
				<br />
				<label ID="label2" Class="Fontsys4">About</label>
				<br />
				<br />
				<label ID="label3" Class="Fontsys3" >Email</label>
				<label ID="label7" Class="Fontsys10" ><%# Eval("email")%></label>
				<br />
				<label ID="label5" Class="Fontsys3" >Work</label>
				<label ID="label8" Class="Fontsys10" ><%# Eval("works")%></label>
				<Br />
				<label ID="label6" class="Fontsys3">High School </label>
				<label ID="label9" Class="Fontsys10" ><%# Eval("highschool")%>l</label>
				<br />
				<label ID="Label10" class="Fontsys3">College</label>
				<label Id="Label11" class="Fontsys10"><%# Eval("college")%></label>
				<br />
				<label Id="Label12" class="Fontsys3">About</label>
				<label Id="Label13" class="Fontsys10"><%# Eval("About")%></label>
				<br />
				<label ID="label5" Class="Fontsys3" >Hometown</label>
				<label ID="label8" Class="Fontsys10" ><%# Eval("hometown")%></label>
				<Br />
				<label ID="label6" class="Fontsys3">Sex </label>
				<label ID="label9" Class="Fontsys10" ><%# Eval("sex")%></label>
				<br />
				<label ID="Label10" class="Fontsys3">Political Views</label>
				<label Id="Label11" class="Fontsys10"><%# Eval("politicalviews")%></label>
				<br />
				<label Id="Label12" class="Fontsys3">Mom</label>
				<label Id="Label13" class="Fontsys10"><%# Eval("mom")%> </label>
				<br />
				<label ID="label5" Class="Fontsys3" >Dad</label>
				<label ID="label8" Class="Fontsys10" ><%# Eval("Dad")%></label>
				<Br />
                </itemtemplate>
                </asp:Repeater>
			</div>		
			<div class="Work_edu4" style="margin-right: 50px; background-color: transparent;">
                <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
				<br />
				<br />
				<label ID="label2" Class="Fontsys4">Gamer Card</label>
				<br />
				<label ID="label5" Class="Fontsys3" >Email</label>
				<label ID="label8" Class="Fontsys10" ><%# Eval("email")%></label>
				<Br />
				<label ID="label6" class="Fontsys3">Favorite Game </label>
				<label ID="label9" Class="Fontsys10" ><%# Eval("favgame")%></label>
				<br />
				<label ID="Label10" class="Fontsys3">Music for gamming</label>
				<label Id="Label11" class="Fontsys10"><%# Eval("gameinmusic")%></label>
				<br />
				<label Id="Label12" class="Fontsys3">Why games?</label>
				<label Id="Label13" class="Fontsys10"><%# Eval("whygames")%></label>
				<br />
				<label ID="label5" Class="Fontsys3" >First Game</label>
				<label ID="label8" Class="Fontsys10" ><%# Eval("firstgame")%></label>
				<Br />
				<label ID="label6" class="Fontsys3">Game System </label>
				<label ID="label9" Class="Fontsys10" > <%# Eval("gamesys")%></label>
				<br />
				<label ID="Label10" class="Fontsys3">Childhood Game</label>
				<label Id="Label11" class="Fontsys10"><%# Eval("childhoodgames")%></label>
				<br />
				<label Id="Label12" class="Fontsys3">Genre Of Game</label>
				<label Id="Label13" class="Fontsys10"><%# Eval("genreofgame")%> </label>
				<br />
				<label ID="label5" Class="Fontsys3" >Clan Affiliation</label>
				<label ID="label8" Class="Fontsys10" ><%# Eval("Clan")%></label>
				<Br />
				<label ID="label5" Class="Fontsys3" >Clan Position</label>
				<label ID="label8" Class="Fontsys10" ><%# Eval("clanposition")%></label>
				<Br />
                </ItemTemplate>
                </asp:Repeater>
			</div>
			<br />
			<br />
			<div id="Work_edu1" style="float:left; margin-top: 30px;  margin-left: 50px; height: 3700px; width: 880px;">
                <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                
                <br />
				<br />
				<br />
				<label class="Fontsys4" style="font-size: 25px;" id="titles"> Likes And Interesets: </label>
				<br />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Music: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("music")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("m2usic")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("m3usic")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("m4usic")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Movies: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("movies")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("m2ovies")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("m3ovies")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("m4ovies")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Books: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("books")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("b2ooks")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("b3ooks")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("b4ooks")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Games: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("games")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("g2ames")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("g3ames")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("g4ames")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Athlete: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("athelete")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("a2thelete")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("a3thelete")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("a4thelete")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
								<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Sports: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("sports")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s2ports")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s3ports")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s4ports")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Sports Team: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("sportsteam")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s2portsteam")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s3portsteam")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s4portsteam")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Activities: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("activities")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("a2ctivities")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("a3ctivities")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("a4ctivities")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
								<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> People Who Inpire you: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("inspire")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("i2nspire")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("i3nspire")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("i4nspire")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Interests: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("interests")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("i2nterests")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("i3nterests")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("i4nterests")%> </label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Speacial to you: </label>
					<br />
					
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("specialtoyou")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s2pecialtoyou")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s3pecialtoyou")%> </label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<label class="Fontsys2"> <%# Eval("s4pecialtoyou")%> </label>
						</div>
					</div>
					
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
                </ItemTemplate>
                </asp:Repeater>
			</div>
			<Br />
			<br />
            </div>
	</body>
</asp:Content>
