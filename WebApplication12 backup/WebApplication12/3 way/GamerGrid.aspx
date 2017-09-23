<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="GamerGrid.aspx.vb" Inherits="WebApplication12.WebForm39" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" type="text/css" href="apples_for_games.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div id="mainfeature">

		 <div id="main_content" style="   width: 980px; margin: 0 auto; ">
         <label class="grid_super">Prithviraj's Game Grid</label>
         <asp:Label runat="server" ID="email1" Visible="false"></asp:Label>
         <asp:Label runat="server" ID="Label1" Visible="false"></asp:Label>
         <asp:Label runat="server" ID="Label21" Visible="false"></asp:Label>
         <asp:Label runat="server" ID="Label11" Visible="false"></asp:Label>
         <asp:Label runat="server" ID="Label31" Visible="false"></asp:Label>
         <asp:Image runat="server" ID="Image1" Visible="false" />
		 <Br />
		 <Br />
		 <div style="width: 330px; float: right;">		 
			 <ul class="Slide_tile_window" style=" width: 370px; list-style-type:none; padding: 0px; margin-top: -0px;">
				<a style="text-decoration:none; color: black;" href="window_new_Style.aspx"><li class="button_box">Window</li></a>
		        <a style="text-decoration:none; color: black;" href="WebForm29.aspx"><li  class="button_box">Me</li></a>
		        <a style="text-decoration:none; color: black;" href="Image_grid.aspx"><li class="button_box">ScreenPic</li></a>
		        <a style="text-decoration:none; color: black;" href="PublicGrid.aspx"><li class="button_box">Public Grid</li></a>
		        <a style="text-decoration:none; color: black;" href="GamerGrid.aspx"><li class="button_box">Game Grid</li></a>
			 </ul>
			<div id="achievements_box" style="width: 330px; float: right; margin-top: -8px; ">
                <br />	
				<label class="grid_tiltle">Achievements</label><button id="start_topic" runat="server" class="button_cool">Edit</button>
				<br />
				<br />
                <cc1:modalpopupextender id="ModalPopupExtender1" runat="server" 
	                cancelcontrolid="btnCancel"  
	                targetcontrolid="start_topic" popupcontrolid="Panel1" 
	                popupdraghandlecontrolid="PopupHeader" drag="true" 
	                backgroundcssclass="ModalPopupBG">
                </cc1:modalpopupextender>
                <asp:Panel runat="server" ID="Panel1" style="-webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, .3); -moz-box-shadow: 0 3px 8px rgba(0, 0, 0, .3); -o-box-shadow: 0 3px 8px rgba(0, 0, 0, .3); box-shadow: 0 3px 8px rgba(0, 0, 0, .3);">
                     <div id="mainfeature">
  	  	                   <div id="achievements_box" style="width: 800px; margin: 0 auto; height: 600px; overflow-y: scroll;">
           		                <label class="grid_super" >Create A Topic</label>
           		                <button class="button_cool_red" runat="server" id="btnCancel" >Close</button>
           		                <asp:button cssclass="button_cool" runat="server" id="create_button" text="Create" ></asp:button>
           		                <Br />
           		                <Br />
           		                <br />
           		                <div style="float: right; width: 350px;">	
           			                <label style="color: #e53434;">Pick an Image</label>
           			                <br />
           			                <input type="file" runat="server" id="file_type"  class="textboxcool"></input>

           		                </div>
           		                <div style="width: 400px; float:left;">
	           		                <label style="color: #e53434;">State the name of the game</label>
	           		                <br />
	           		                <input runat="server" id="topic_name" placeholder="Make sure you write it correctly!" class="textboxcool"></input>
	           		                <br />
	           		                <br />
					                <label style="color: #e53434;">The Achievements:</label>
					                <br />
					                <textarea class="textboxcool" runat="server" id="discription_var_input" placeholder="It goes right here!" style="width: 400px; height: 200px;"></textarea>
				                </div>
  	  	                   </div>
                      </div>
                </asp:Panel>
                <br />
                <br />
                <asp:UpdatePanel runat="server" ID="update_panel_achievement" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Repeater ID="repeater_achievment_things" runat="server">
                            <ItemTemplate>
				                <div class="achievement_box_underbox" style="border: 4px #2d89ef solid;">
					                <div class="image_holder" style="float: left;">
					                   <img runat="server" id="image_profile" style="width: 100%;" src='<%#Eval("hometown")%>'/>
					                </div>
					                <div style="width: 220px; float: right;">
						                <a runat="server" id="Fname_profile" class="links_link1"><%#Eval("fname")%> <%#Eval("lname")%> </a>  <label style="font-size: 10pt; color: #999;">(<%#Eval("favgame")%>)</label>
                        
                                        <br />
						                <label>
							                <%#Eval("c1")%>
						                </label>
					                </div>
				                </div>
                           </ItemTemplate>
                        </asp:Repeater> 
                    </ContentTemplate>
  				</asp:UpdatePanel>
			 </div>
			 </div>
			 <div class="mainclass" style="width: 560px; height: auto;">
				<label class="grid_tiltle">Gamer update </label><label style="color: #999;">Share your gaming ideas here.</label>
				<br />
				<Br />
				<div id="Textbox_holder">
					<asp:button style="float:left;" runat="server" id="update" class="button_cool" Text="Share"></asp:button><input runat="server" id="InputBox" class="textboxcool" placeholder="Share your ideas about games here"  x-webkit-speech="x-webkit-speech"></input>
					<br />
					<Br />
				</div>
                <asp:Timer ID="Timer1" runat="server" Interval="100000" OnTick="Timer1_Tick" >
                </asp:Timer>
                <asp:UpdatePanel runat="server" ID="updater_panel_game" UpdateMode="Conditional">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:Repeater ID="repeater_code_Script" runat="server">
                            <ItemTemplate>
				                <ul style="list-style-type:none;">
					                <li>
						                <div class="commenter" style="width: 400px;">
							                <div class="image_holder" style="float: left;">
							                   <img style="width: 100%;" src='<%#Eval("hometown")%>'/>
							                </div>
							                <div style="width: 330px; float: right;">
								                <a class="links_link"><%#Eval("fname")%> <%#Eval("lname")%></a>
								                <br />
								                <label style="color: #999; font-size: 10pt;"><%#Eval("c1")%></label>
								
							                </div>
						                </div>
					                </li>
					                <Br />
					                <br />
					                <Br />
					                <Br />
					                <br />
				                </ul>
                             </ItemTemplate>
                        </asp:Repeater>
                    </ContentTemplate>
                </asp:UpdatePanel>
			 </div>
		 </div>
      </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
