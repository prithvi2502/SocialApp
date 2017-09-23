<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Window_combined.aspx.vb" Inherits="WebApplication12.Window_combined" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="rangesheet.css">
        <link rel="stylesheet" type="text/css" href="windowsheet1.css">
    <link rel="stylesheet" type="text/css" href="windowsheet2.css">
    <link rel="stylesheet" type="text/css" href="apples_range.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 330px; float: right;  ">	
	<div id="mini_shower_person" class="Slide_tile_window">
	<div style="float: right; width: 230px;">
		<a runat="server" id="HyperLink8fa" style="font-size: 14pt;" class="links_link">Prithviraj <label runat="server" id="label_lastname"></label> </a>
		<br />
		<a runat="server" id="tab_label" class="links_link1"></a>
	</div>
	<div class="image_holder">
		<img runat="server" id="Image1as" style="width: 100%;" />
	</div>

	</div>

	<div id="Div1" class="Slide_tile_window" visible="false" runat="server" style=" max-height: 400px; overflow-y: scroll; margin-top: 25px;">
	<label>Suggested Friends</label>
	<br />
	<br />
	<div id="individual">
		<div style="float: right; width: 210px;">
			<a style="font-size: 14pt;" class="links_link">Prithviraj Vishwakarma</a>
			<br />
			
		</div>
		<div class="image_holder">
			<img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
		</div>
	</div>
	<br />
	<br />
	<br />
	<Br />

                	<div id="Div2">
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
					<div id="Div3">
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
	<div class="Slide_tile_window" style="margin-top: 25px;">
	<label style="color: #438bc5;">A word from the creators:</label>
	<br />
	<br />
	<div style="float: right; width: 230px;">
		<a style="font-size: 14pt;" class="links_link">Prithviraj Vishwakarma</a>
		<br />
		<label style="color: #999;">We have just released this website and expect you all to have fun. To help us
		out, you can tell your firends and family about this Web Application.
	</label>
	</div>
	<div class="image_holder">
		<img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
	</div>
	</div>   
	<ul class="Slide_tile_window" style=" width: 340px; list-style-type:none; padding: 0px; margin-top: 25px;">
				
		<a style="text-decoration:none; color: black;" href="window_new_Style.aspx"><li class="button_box"><img style="width: 20px; height: 20px; box-shadow:0 0 10px #999;" align="top" src="Window.ico"></img>  &nbsp;  Window</li></a>
		<a style="text-decoration:none; color: black;" href="WebForm29.aspx"><li  class="button_box">Me</li></a>
		<a style="text-decoration:none; color: black;" href="Image_grid.aspx"><li class="button_box"><img style="width: 20px; height: 20px; box-shadow:0 0 10px #999;" align="top" src="images_icon.ico"></img>  &nbsp;  ScreenPic</li></a>
		<a style="text-decoration:none; color: black;" href="PublicGrid.aspx"><li class="button_box"><img style="width: 20px; height: 20px; " align="top" src="Grid.ico"></img> &nbsp;   Public Grid</li></a>
		<a style="text-decoration:none; color: black;" href="GamerGrid.aspx"><li class="button_box"><img style="width: 20px; height: 20px; " align="top" src="game.ico"></img> &nbsp;  Game Grid</li></a>
			
	</ul>
</div>
<div style="width: 600px; float: left; margin-left: 0px;  color: black;  height:inherit; font-family: 'Segoe UI Semilight', 'Open Sans', Verdana, Arial, Helvetica, sans-serif;
font-weight: 300;
font-size: 11pt;
letter-spacing: 0.02em;
line-height: 20px;">

    <div  style="width: 600px; margin-left: 0px;">
    
    <asp:Label ID="Label5" runat="server" Text="Label" style="display:none;"></asp:Label>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

   <ContentTemplate>
       
   

   
	  		<div id="Impt_info">
				<div class="tile_box_for" style="float: left; padding: 0px; margin-left: 5px; width: 600px; ">
					<div style="padding: 10px; background-color: #526fa7; margin: 0px; clear:both;">
						<label style="color: white;">Share to the world...</label>
						<asp:button style="float: right; margin-top: -6px;" runat="server" ID="clickey"  class="icon_button" text="$"></asp:button>
					</div>
                    <div runat="server" visible="false" id="under_box">
					    <div id="">
					
					    <textarea id="inputbox" runat="server"  style="height: 100px;" placeholder="Share your day here..." class="writers"></textarea>
					    </div>
					    <div runat="server" id="dropbox"  style="padding: 0px;  clear:both; height: 30px;background-color: ghostwhite;border-style: dashed;border-color: lightslategray;border-width: thin;color: GrayText;text-align: center;">
						    <asp:FileUpload ID="FileUpload1" BackColor="Transparent" BorderColor="Transparent"  runat="server" BorderStyle="Solid" Width="268px" />
					    </div>
					    <div style="padding: 0px; background-color: #f6f7f8; margin: 0px; clear:both; border-top: 1px solid #e1e2e4;">
						    <button id="asdfe" onserverclick="SetAsCompleteButton_Click" runat="server" class="inbutton" style="font-size: 13px; height: 35px;margin-left: 20px; border-left: 1px solid #e1e2e4; border-right: 1px solid #e1e2e4; border-top:none; border-bottom: none; width: 100px;">Image</button>
						    <asp:button id="update" runat="server" style="margin: 2px; width: 120px; " class="button_cool" text="upload"></asp:button>
					    </div>
                    </div>
				</div>
			 </div>
                               <asp:UpdateProgress style=" " ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                                <div class='loading'>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                            </ProgressTemplate>
                            </asp:UpdateProgress>
      <br />
      <br />
             
      <br />

      </ContentTemplate>
      </asp:UpdatePanel>
    </div>
      <div id="posts" style="" >
          

                      <asp:Timer ID="Timer1" runat="server" Interval="200000" OnTick="Timer1_Tick" >
            </asp:Timer>
 
          <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">

          <Triggers>
          <asp:AsyncPostBackTrigger ControlID="Timer1" 
        EventName="Tick" />
            
    </Triggers>
          <ContentTemplate>
          <asp:Repeater ID="Repeater1" onitemcommand="Repeater1_ItemCommand"  EnableVIewState="true" Onitemdatabound="Repeater1_ItemDataBound" runat="server"   >
          
            <ItemTemplate>
                
                <div class="show_holder1" style="padding-left: 0px;  width: 630px; clear: both; color: black; height: inherit; 
height: 1%;">
            <div id="show_holder" style=" clear:both; color: black; clear: both; padding: 5px; padding-top: 15px;  width: 630px; 
height: 1%;">
          <div class="image_holder" style="">
			       <asp:Image ID="Image2" runat="server"  style="width: 100%;"  alt="This guy"  />
				</div>
                <div class="content">
                    <label style="color: #999;  float: right;"><%#Eval("datemonth")%>/<%#Eval("dateday")%>/<%#Eval("dateyear")%><%#Eval("id")%></label><div class="user" style="">  
                    
		        <a style="font-size: 14pt;" href='<%#"WebForm24.aspx?id=" + Eval("email")%>' class="links_link"><%#Eval("fname")%> <%#Eval("Lname")%></a>
		            <asp:Label ID="Label3" runat="server" visible="false" Text='<%#Eval("email")%>'> </asp:Label>
		            <ul id="coolasdfasdf" style="height: 100px; z-index: 3;">
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
		    <%#Eval("c1").ToString().Replace("\n", "<br />")%>
		    <br />
		    <div runat="server" id="big_image_holder" style="overflow: hidden; -moz-box-shadow: 0 0 3px #000000; -webkit-box-shadow:  0 0 3px #000000; box-shadow: 0 0 3px #000000; margin-top: 20px;">
			    <img runat="server" id="image_big_thing" style="height: auto; width: 500px;" src=' <%# "\imgs\" + Eval("shared")%>'>
		    </div>
          </p>

          


          <div class="utilities">
							<asp:linkbutton ID="upbutton" ClientIDMode="AutoID" UseSubmitBehavior="false" CommandName="Button1" CommandArgument='<%#Eval("id")%>' style="font-size: 11pt; " class="links_link1"   runat="server" >Thumbs Up
						   <span>
							<%#Eval("thumbssup")%>
						   </span>
						   </asp:linkbutton> &nbsp;&nbsp;&nbsp;
						   <asp:linkbutton ID="downbutton" ClientIDMode="AutoID" UseSubmitBehavior="false" CommandName="Button2" CommandArgument='<%#Eval("id")%>'  runat="server" style="font-size: 11pt; " class="links_link1"> Thumbs Down
						   <span>
							<%#Eval("thumbsdown")%>
						   </span>
						   </asp:linkbutton> &nbsp;&nbsp;&nbsp;
			               <asp:linkbutton ID="Hyperlink10" ClientIDMode="AutoID" UseSubmitBehavior="false" CommandName="Button1ae" style="font-size: 11pt; " class="links_link1" runat="server" > Comment </asp:linkbutton>
				        </div>
				
            
                
			   <asp:Panel runat="server" visible="false" ID="coolness_panel">
               <asp:Label runat="server" ID="label_id" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
				        <div runat="server" >
                            
				         <asp:Repeater ID="Repeater2asdfqwer" runat="server">
                    		<ItemTemplate>	
			    			<div class="comments" style="min-height: 40px; ">
				                <div class="image_holder" style="width: 50px; height: 50px;" id="Div4">
			                        <img style="width: 100%;"  src='<%#Eval("hometown")%>'></img>
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

			                       <asp:button runat="server"  id="Button1" ClientIDMode="AutoID" usesubmitbehavior="false" commandname="Button1a" commandargument='<%#Eval("id")%>'  class="button_cool_green" style="width: 50px; height: 28px; float: right;" Text="$" ></asp:button>
			                    <asp:textbox  EnableVIewState="true" rows="1" runat="server"  id="commentbox" class="textboxcool" placeholder="Comment about the pic?" x-webkit-speech="x-webkit-speech"   style="width: 330px; " ></asp:textbox>
			                     </div>
			                 </div>
						 </div>
                </asp:Panel>
				</div>
          </div>
</div>
      
            
            </ItemTemplate>

          </asp:Repeater>
                 
          
                      </ContentTemplate> 
       </asp:UpdatePanel> 
      </div>
      
</div>

<asp:Label ID="Label11" runat="server" Text="Label" style="display:none;"  ></asp:Label>
    <asp:Label ID="Label21" runat="server" Text="Label" style="display:none;"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="asdf" Style="display: none;"></asp:Label>
<asp:Label ID="Label31" runat="server"  Text="Label" style="display:none;"></asp:Label>
<asp:Label ID="Label6" runat="server" Text="Label" style="display:none;"></asp:Label>
<asp:label ID="email1" runat="server" style="display:none;"></asp:label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
