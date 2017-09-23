<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="taber_local.aspx.vb" Inherits="WebApplication12.taber_local" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="apples_taber.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <body style="background-color: #fbfbfb;">
      <div id="mainfeature">

		 <div id="main_content" style=" padding: 50px;  width: 980px; margin: 0 auto; margin-top: 100px; ">
         <label class="grid_super">Prithviraj's Game Grid</label>
		 <Br />
		 <Br />
		 <div style="width: 330px; float: right;">		 
			 <ul class="Slide_tile_window" style=" width: 370px; list-style-type:none; padding: 0px; margin-top: -0px;">
					<li class="button_box">Window</li>
					<li class="button_box">Friends</li>
					<li  class="button_box">Me</li>
					<li class="button_box">ScreenPic</li>
					<li class="button_box">Gaming Clan</li>
					<li class="button_box">Game Collection</li>
			 </ul>
			 <div class="Slide_tile_window" style=" width: 340px; margin-top: -8px; max-height: 400px; overflow-y: scroll; ">
				<label>Suggested Friends</label>
				<br />
				<br />
				<div id="individual">
					<div style="float: right; width: 210px;">
						<a style="font-size: 14pt;" class="links_link">Prithviraj Vishwakarma</a> 
						<br />
						<a class="links_link1">$currymonster</a>
					</div>
					<div class="image_holder">
					   <img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
					</div>
				</div>
				<br />
				<br />
				<br />
				<Br />

                				<div id="individual">
					<div style="float: right; width: 210px;">
						<a style="font-size: 14pt;" class="links_link">Prithviraj Vishwakarma</a>
						<br />
						<a class="links_link1">$currymonster</a>
					</div>
					<div class="image_holder">
					   <img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
					</div>
				</div>
				<br />
				<br />
				<Br />
				<br />
								<div id="individual">
					<div style="float: right; width: 210px;">
						<a style="font-size: 14pt;" class="links_link">Prithviraj Vishwakarma</a>
						<br />
						<a class="links_link1">$currymonster</a>
					</div>
					<div class="image_holder">
					   <img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
					</div>
				</div>
				<br />
				<br />
			 </div>
			 </div>
			 <div class="mainclass" style="width: 560px; height: auto;">
				<label class="grid_tiltle">Gamer update</label>
				<br />
				<Br />
				<div id="Textbox_holder">
					<asp:button runat="server" ID="upload" style="float:left;" class="button_cool" text="share"></asp:button><input class="textboxcool" runat="server" id="tab_textbox" placeholder="Share your ideas about games here"  x-webkit-speech="x-webkit-speech"></input>
					<br />
					<Br />
				</div>
				<ul style="list-style-type:none;">
					<li>
						<div class="commenter" style="width: 600px;">
							<div class="image_holder" style="float: left;">
							   <img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
							</div>
							<div style="width: 520px; float: right;">
								<a class="links_link">Prithviraj Vishwakarma</a>
								<br />
								<label style="color: #999; font-size: 10pt;">$what is cracking peoples</label>
								<Br />
								<div id="utilities">
									<a style="font-size: 9pt;" class="links_link1">Thumbs Up <span style="color: #FFC880;">500</span></a>
									<a style="font-size: 9pt;" class="links_link1">Thumbs Down <span style="color: #FFC880;">0</span></a>
									<a style="font-size: 9pt;" class="links_link1">Reply <span style="color: #FFC880;">3</span></a>
									<a style="font-size: 9pt;" class="links_link1">Repost <span style="color: #FFC880;">5</span</a>
								</div>
							</div>
							
							<div id="reply" style="width: 400px; margin-left: 50px;">
								<br />
								<br />
								<br />
								<br />
								<div class="image_holder" style="float: left;">
								   <img style="width: 100%;" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSbR-ORpCqo7Oe69X8K8O8CJG2vNeQ5gdoi6Lpxs04AaS7fl0_b "/>
								</div>
								<div style="width: 330px; float: right; ">
									<a class="links_link">Prithviraj Vishwakarma</a>
									<br />
									<label style="color: #999; font-size: 10pt;">yo yoy yo</label>
									<Br />
									<div id="utilities">
										<a style="font-size: 9pt;" class="links_link1">Thumbs Up <span style="color: #FFC880;">500</span></a>
										<a style="font-size: 9pt;" class="links_link1">Thumbs Down <span style="color: #FFC880;">0</span></a>
										
										
									</div>
								</div>
								<br />
								<br />
								<br />
								<br />
								<div class="image_holder" style="float: left;">
								   <img style="width: 100%;" src="http://www.andrew.cmu.edu/user/skulshre/apples.jpg "/>
								</div>
								<div style="width: 330px; float: right; ">
									<a class="links_link">Prithviraj Vishwakarma</a>
									<br />
									<label style="color: #999; font-size: 10pt;">nothing much</label>
									<Br />
									<div id="utilities">
										<a style="font-size: 9pt;" class="links_link1">Thumbs Up <span style="color: #FFC880;">500</span></a>
										<a style="font-size: 9pt;" class="links_link1">Thumbs Down <span style="color: #FFC880;">0</span></a>
										
										
									</div>
								</div>
								<br />
								<br />
								<br />
								<br />
								<div class="image_holder" style="float: left;">
								   <img style="width: 100%;" src="http://thetasteoforegon.files.wordpress.com/2009/09/bowl-of-apples-21.jpg"/>
								</div>
								<div style="width: 330px; float: right; ">
									<a class="links_link">Prithviraj Vishwakarma</a>
									<br />
									<label style="color: #999; font-size: 10pt;">lol</label>
									<Br />
									<div id="utilities">
										<a style="font-size: 9pt;" class="links_link1">Thumbs Up <span style="color: #FFC880;">500</span></a>
										<a style="font-size: 9pt;" class="links_link1">Thumbs Down <span style="color: #FFC880;">0</span></a>
										
									</div>
								</div>				
							</div>
						</div>
					</li>
					<Br />
					<br />
					<Br />
					<Br />
					<br />
					<li>
						<div class="commenter" style="width: 600px;">
							<div class="image_holder" style="float: left;">
							   <img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
							</div>
							<div style="width: 530px; float: right;">
								<a class="links_link">Prithviraj Vishwakarma</a><!-- This is basically telling the people reading this tab that it is from a public grid post eg. Prith just tabbed in a public grid post, then it says what the tab is. root1-Sql --> <label style="color: #999; font-size: 8pt;"> tabbed in the Public Grid Post </label><a class="links_link">$curryts</a>
								<br />
								<label style="color: #999; font-size: 10pt;">$what is cracking peoples</label>
                              
                                
								<Br />
								<div id="utilities">
									<a style="font-size: 9pt;" class="links_link1">Thumbs Up <span style="color: #FFC880;">500</span></a>
									<a style="font-size: 9pt;" class="links_link1">Thumbs Down <span style="color: #FFC880;">0</span></a>
									<a style="font-size: 9pt;" class="links_link1">Reply <span style="color: #FFC880;">3</span></a>
									<a style="font-size: 9pt;" class="links_link1">Repost <span style="color: #FFC880;">5</span</a>
								</div>
							</div>
						</div>
					</li>
					<Br />
					<br />
					<Br />
					<Br />
					<br />
					<li>
						<div class="commenter" style="width: 600px;">
							<div class="image_holder" style="float: left;">
							   <img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
							</div>
							<div style="width: 530px; float: right;">
								<a class="links_link">Prithviraj Vishwakarma</a>
								<br />
								<label style="color: #999; font-size: 10pt;">$what is cracking peoples</label>
								<Br />
								<div id="utilities">
									<a style="font-size: 9pt;" class="links_link1">Thumbs Up <span style="color: #FFC880;">500</span></a>
									<a style="font-size: 9pt;" class="links_link1">Thumbs Down <span style="color: #FFC880;">0</span></a>
									<a style="font-size: 9pt;" class="links_link1">Reply <span style="color: #FFC880;">3</span></a>
									<a style="font-size: 9pt;" class="links_link1">Repost <span style="color: #FFC880;">5</span</a>
								</div>
							</div>
						</div>
					</li>
					<Br />
					<br />
					<Br />
					<Br />
					<br />
				</ul>
			 </div>
		 </div>
      </div>
  </body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
