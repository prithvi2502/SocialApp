<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="gameshack2.aspx.vb" Inherits="WebApplication12.gameshack2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="apples11.css">
        <link rel="stylesheet" type="text/css" href="windowsheet1.css">
    <link rel="stylesheet" type="text/css" href="windowsheet2.css">
    <div  id="maincontent" style="clear: both; height: inherit; overflow: hidden;
">
			<div style="font-size: 30px; color: black;" id="top_part">
				<label >Game Grid</label>
                <asp:Label runat="server" ID="email1" Visible="false"></asp:Label>
                <asp:Label runat="server" ID="Label1" Visible="false"></asp:Label>
                <asp:Label runat="server" ID="Label21" Visbile ="false"></asp:Label>
                <asp:Label runat="server" ID="Label11" Visible ="false"></asp:Label>
                <asp:Label runat="server" ID="Label31" Visible="false"></asp:Label>
                <asp:Image runat="server" ID="Image1" Visible="false" />
			</div>
			<div id="sidebar">
				<div id="achievements" style="width: 300px; float: left;">
									<br />
				<label style="font-size: 20px; color: black; padding-left: 20px;">Current Game Updates</label>
				<br />
				<br />
				<hr />
				<br />
				<div id="game_game">
				<div id="listbox1">
					<div id="boximg">
						<label class="Fontsys41" style="padding: 0px; position:absolute; top:18px; left: 16px; font-size: 40px;">A</label>
					</div>
					<div style="width: 210px; float: right; margin-left: 4px; line-height: 20px;">
						<label class="Fontsys111">Achievement</label>
						<br>
						<div style="color: black;">like a boss kd man</div>
					</div>
				</div>
				</div>
				</div>
			</div>
			<div id="window_gamer" style="width: 600px; float: right; margin-right: 70px; border-left: 1px solid #f8512f; ">
				<div id="comment_box">
					<label style="font-size: 20px; color: black; padding-left: 40px;">Share your latest gaming endeavour</label>
					<br />
					<br />
                    <asp:UpdatePanel runat="server" ID="updatepanel_stuffs">
                        <ContentTemplate>
					<div style="margin: 0 auto; width: 490px;border: 1px solid #e6e6e6; margin-left: 0 auto; ">
						 <textarea id="inputbox" class="input" style="width: 480px;" runat="server" font="Ariel" placeholder="Share your day" rows="7"></textarea>
                                         <div  id="dropbox" runat="server" style="height: 30px; background-color: ghostwhite; border-style:dashed; border-color: lightslategray; border-width: thin; color: GrayText; text-align:center;">
                <asp:FileUpload ID="FileUpload1" BackColor="Transparent" BorderColor="Transparent"  runat="server" BorderStyle="Solid" Width="268px" />
             </div>
							  
						<div id="asdf">			
                            <!-- onserverclick="SetAsCompleteButton_Click" -->
							<button id="asdfe"  runat="server" class="btnaddphoto">
								<span style="background: red; float: left; width: 18px; height: 18px; color: white; font-weight: bold; border-radius: 9px; ">
									+
								</span>

								<span>
								 IMAGE
								</span>

							</button>
								<asp:Button runat="server" ID="update" class="btnsearch" style="width:120px;height:31px; margin-top: 5px; margin-right: 5px; float: right;" 
										text="Upload" />	
								
						</div>
					</div>	
                            </ContentTemplate>
                    </asp:UpdatePanel>
					
				</div>
				<br />
				<br />
				<br />

				<div id="comments1">
                    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
          </asp:ScriptManagerProxy>
                    <asp:Timer ID="timer2" runat="server" Interval ="1" OnTick="timer_Tick"></asp:Timer>
                      <asp:Timer ID="Timer1" runat="server" Interval="100000" OnTick="Timer1_Tick" >
            </asp:Timer>
                    <asp:UpdatePanel runat="server" ID="updatpanel_gamer" UpdateMode="conditional">
                        <Triggers>
                              <asp:AsyncPostBackTrigger ControlID="Timer1" 
        EventName="Tick" />
                                        <asp:AsyncPostBackTrigger ControlID="timer2" 
        EventName="Tick" />
                        </Triggers>
                        <ContentTemplate>
                            <ul>
                    <asp:Repeater runat="server" ID="repeatergame">
                        <ItemTemplate>
					                <li style="list-style-type: none;">
                      <div class="mainclass" style="margin: 0;" >
				<div class="image_holder">
			       <asp:Image ID="Image2" runat="server" Imageurl='<%#Eval("hometown")%>' style="width: 100%;"  alt="This guy"  />
				</div>
				<div class="content" >
					<div class="main_part">
						<div class="user" style="">      
		                <a style="font-size: 14pt;" href='<%#"WebForm24.aspx?id=" + Eval("email")%>' class="links_link"><%#Eval("fname")%> <%#Eval("Lname")%></a>
		                    <asp:Label ID="Label3" runat="server" style="display: none;"> <%#Eval("email")%></asp:Label>
		                    <ul id="coolasdfasdf" style="">
		                    <div>
		                       <div class="image_holder" style="margin-left: 10px; margin-top: 10px; width: 80px; height: 80px;">
		                            <asp:Image ID="Image3" runat="server" Imageurl='<%#Eval("hometown")%>' style="width: 100%;"  alt="This guy"  />
		                       </div> 
		                       <div id="discription" >
		                           <br />
		                           
		                            <a style="text-decoration: none; margin-left: 10px;" href='<%#"WebForm24.aspx?id=" + Eval("email")%>' class="links_link" id="nameinner"> <%#Eval("fname")%> <%#Eval("Lname")%></a>
		                            <br />
		                            <label class="titlesof" style="margin-left: 10px;"> Living: </label><%#Eval("favgame")%><br />
		                            
		                       </div>
		                    </div>
		                  </ul>
		                </div>
						 <br />
						 <p>
						     <%#Eval("c1")%>
						     <br />
						     <div style="overflow: hidden; -moz-box-shadow: 0 0 3px #000000; -webkit-box-shadow:  0 0 3px #000000; box-shadow: 0 0 3px #000000; margin-top: 20px; display:none;">
						     	  <img style="height: auto; width: 500px;" src="http://d2tq98mqfjyz2l.cloudfront.net/image_cache/1277698455611443.jpeg">
						     </div>
						     <br />
						     <%#Eval("datemonth")%>/<%#Eval("dateday")%>/<%#Eval("dateyear")%></p>
						 <br />
						<div class="utilities">
							<asp:linkbutton ID="upbutton" ClientIDMode="AutoID" UseSubmitBehavior="false" CommandName="Button1" CommandArgument='<%#Eval("id")%>' style="font-size: 11pt; " class="links_link1"   runat="server" >Thumbs Up
						   <span>
							<%#Eval("thumbssup")%>
						   </span>
						   </asp:linkbutton> &nbsp;&nbsp;&nbsp;
						   <asp:hyperlink ID="downbutton" NavigateUrl='<%#"WebForm33.aspx?id=" + Eval("id").ToString + "&email=" + email1.Text%>' runat="server" style="font-size: 11pt; " class="links_link1"> Thumbs Down
						   <span>
							<%#Eval("thumbsdown")%>
						   </span>
						   </asp:hyperlink> &nbsp;&nbsp;&nbsp;
			               <asp:linkbutton ID="Hyperlink10" ClientIDMode="AutoID" UseSubmitBehavior="false" CommandName="Button1ae" style="font-size: 11pt; " class="links_link1" runat="server" > Comment </asp:linkbutton>
				        </div>
                        <asp:Label runat="server" ID="label_id" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
				        <div runat="server" visible="false" id="panel1">
                            
				         <asp:Repeater ID="Repeater2asdfqwer" runat="server">
                    		<ItemTemplate>	
			    			<div class="comments" style="min-height: 40px; ">
				                <div class="image_holder" style="width: 50px; height: 50px;" id="Div4">
			                        <img style="height: 100%;"  src="https://lh5.googleusercontent.com/-3DMijxwNX-Q/UPt4eJ3Ma9I/AAAAAAAAABk/QatragdoasA/s711/2013-01-19"></img>
			                    </div>
				                <div style=" float: right; width: 400px; min-height: 50px; color:black;"id="Div5">
					                <a class="links_link"><%#Eval("fname")%> <%#Eval("Lname")%></a><br />
					                <label style="color: #999;">$ <%#Eval("c1")%></label>
				                </div>
			                </div>
			                </ItemTemplate>
                		 </asp:Repeater>
			    			<div class="comments" style="min-height: 40px; ">
			       				 <div class="image_holder" style="width: 50px; height: 50px;" id="Div6">
			                       <asp:Image ID="Image2a" runat="server" Imageurl='<%#Eval("hometown")%>' style="width: 100%;"  alt="This guy"  />
			                     </div>
			                     <div style=" float: right; width: 400px; min-height: 50px; color:black;"id="Div7">

			                        <label><input class="text" placeholder="Comment about the pic?" x-webkit-speech="x-webkit-speech"  ></input></label>
                                     <br />
                                     <asp:button runat="server" id="Button1" ClientIDMode="AutoID" usesubmitbehavior="false" commandname="Button1a" commandargument='<%#Eval("id")%>'  class="btnsearch" style="width: 50px; height: 32px; float: right;" Text="$" ></asp:button>
			                     </div>
			                 </div>
						 </div>
					</div>

				</div>

			 </div>
                    <br />
                    <br />
                    <br />
                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                                </ul>
                            </ContentTemplate>
                        </asp:UpdatePanel>
				</div>
								<br />
				<br />

								<br />
				<br />
			</div>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
