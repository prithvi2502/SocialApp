<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm40.aspx.vb" Inherits="WebApplication12.WebForm40" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="apples_frontpage.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
		  <div style="height: 70px; background-color: #ff7d1a; position:fixed; width: 100%; top:0; left: 0;" id="top_part_banner">
    	  	  <button style="margin-right: 300px; width: 150px; margin-top: 20px;" class="button_cool">Get Started Now!</button>
		  </div>
		  <br />
		  <br />
		  <br />
		  <Br />
		  <br />
		  <div style="width: 980px; margin: 0 auto;">
		  <Br />
		  <br />


			 <div class="empty_tile">
		 	 	  <label class="grid_super">Connecting you to the world!</label><br />
		 	 	  <br />
		 	 	  <p class="paragraph_move" style="color: #999; font-size: 12pt;">
		 	 	      ClanView is based upon a high powered engine known as ConnectWork 1.00. As you enter the website, you are instantly connected
					  to a Super Grid that connects you to every other node on the world.
		 	 	  </p>
		 	 	  <br />
		 	 	  <label style="font-size: 15pt;" class="grid_super"> What We Offer</label>
		 	 	  <br />
		 	 	  <ul class="paragraph_move">
		 	 	       <li><a class="links_link1">Grid System</a> A Super Grid system based on the ConnectWork engine to connect you to the world.</li>
		 	 	       <li><a class="links_link1">ConnectWork</a> A interactive Web Application that connects images, thoughts, games, discussion, friends, groups and ideas together into one grid.</li>
		 	 	       <li><a class="links_link1">Interactive Talk</a> A Social network intended to make you social with interactive talk!</li>
		 	 	       <li><a class="links_link1">Symplistic Design</a> Clanview is simple, easy and fun!</li>
		 	 	  </ul>
		 	 	  <br />
		 	 	  <Br />
		 	 	  <a class="links_link">Learn More</a>
				  <a style="padding-left: 10px;" href="WebForm1.aspx" class="links_link">Sign-up</a>
			 </div>
		  	   <div class="tile" style="">
				<div style="padding: 5px; margin: -20px; background-color: #a55252; clear:both;">
					<label style="color: white;">Log-In</label>
				</div>
				<BR />
				<BR />
				<div>
                    <asp:Login ID="Login1" runat="server" DisplayRememberMe="false" DestinationPageUrl="~/3 way/Window_combined.aspx" TextLayout="TextOnTop" >
                        <TextBoxStyle cssclass="textbox_cool"/>
                        <LoginButtonStyle CssClass="button_cool" />
                    </asp:Login>
                    <a class="links_link">Forgot Password!</a>
					 <!--<label>Email:</label><br />
					 <input class="textbox_cool"></input>
					 <br />
					 <br />
					 <label>Password:</label><br />
					 <input type="password" class="textbox_cool"></input>
					 <br />
					 <br />
					 <a class="links_link">Forgot Password!</a>
					 <button class="button_cool">Enter</button>-->
				</div>
			</div>
		  </div>

	</body>
</asp:Content>
