<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="GameShack1.aspx.vb" Inherits="WebApplication12.WebForm32" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="apples1.css">

	<div style="width: 980px; padding-left: 230px; margin: 0 auto">
			<div id="topart1">
				<div class="image_holder">
					<img style="height: 100%;"></img>
				</div>
				
				<a style="font-size: 14pt; float: left; padding-top: 15px;" class="links_link"> Prithviraj Vishwakrama </a>
				<a style="float: right; padding-right: 30px; padding-top: 15px;" class="links_link"> Dashboard </a>
				<a style="float: right; padding-right: 10px; padding-top: 15px;" class="links_link"> Games </a>
			</div>
        <br />
        
		<div id="maincontent">
			<br />
			<label class="Fontsys1">Game Grid</label>
			<br />
			<br />
			<hr />
			<div id="Gamercardfavorite" style="padding: 50px; overflow: auto;">
				<label class="Fontsys1" style="padding: 0px;">Favourte Games:</label>
				<Br />
				<br />
				<br />
				<div id="tiler1" style="background-color: #ff7d1a;">
					<label class="Fontsys4" style="padding: 0px;">Call of Duty</label>
					<br />
					<br />
					<label class="Fontsys11">Reason:</label>
					<div>I love this game becuase of the great action.</div>
					<br />
					<label class="Fontsys11">Latest achievement:</label>
					<div>I just fing got a kill death ration of ration.</div>
				</div>
							
			</div>
			<br />
			<div id="Gamercardshooter" style="padding: 50px; overflow: auto;">
				<label class="Fontsys1" style="padding: 0px;">Shooters:</label>
				<Br />
				<br />
				<br />
				<div id="tiler1" style="background-color: #ff7d1a;">
					<div id="discription_game">
						<label class="Fontsys4" style="padding: 0px;">Call of Duty</label>
						<br />
						
						<label class="Fontsys11">Reason:</label>
						<div>I love this game becuase of the great action.</div>
						<br />
						<label class="Fontsys11">Latest achievement:</label>
						<div>I just fing got a kill death ration of ration.</div>
					</div>
					<div id="gameicon">
						<img src="http://vgfaq.com/wp-content/uploads/2012/11/Call-of-Duty-Black-Ops-II-Intel-Locations-Guide.jpg" style="height: 100%">
					</div>
				</div>
						
			</div>
		</div>
        </div>
</asp:Content>
