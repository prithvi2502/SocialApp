<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Window1.aspx.vb" Inherits="WebApplication12.Window1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="apples_range.css">

      <div id="mainfeature" style="padding-left: 230px; overflow: hidden; ">
		 <div Id="textbox_holder">
             <asp:Label ID="Label11" runat="server" Text="Label" style="display:none;"  ></asp:Label>
             <asp:Label ID="Label21" runat="server" Text="Label" style="display:none;"></asp:Label>
             <asp:Label ID="Label1" runat="server" Text="label" style="display:none;"></asp:Label>
             <asp:Label ID="Label31" runat="server"  Text="Label" style="display:none;"></asp:Label>
             <asp:Label ID="Label4" runat="server" Text="Label" style="display:none;"></asp:Label>
             <asp:label ID="email1" runat="server" style="display:none;"></asp:label>
		 </div>
		 <div id="main_content" style=" padding: 50px;  width: 980px; margin: 0 auto; margin-top: 0px; overflow: hidden; ">
			<div style="width: 330px; float: right;  ">	
			<div id="mini_shower_person" class="Slide_tile_window">
				<div style="float: right; width: 230px;">
					<a runat="server" id="HyperLink8" style="font-size: 14pt;" class="links_link">Prithviraj <label runat="server" id="label_lastname"></label> </a>
					<br />
					<a class="links_link1">$currymonster</a>
				</div>
				<div class="image_holder">
			       <img runat="server" id="Image1" style="width: 100%;" />
				</div>

			 </div>

			 <div class="Slide_tile_window" visible="false" runat="server" style=" max-height: 400px; overflow-y: scroll; margin-top: 25px;">
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

                				<div id="Div1">
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
				
					<li class="button_box">Window</li>
					<li class="button_box">Friends</li>
					<li  class="button_box">Me</li>
					<li class="button_box">ScreenPic</li>
					<li class="button_box">Pubdivc Grid</li>
					<li class="button_box">Game Grid</li>
			
			 </ul>
			 </div>
             <div style="width: 608px; float: left;   padding-top: 20px; margin-left: 0px; color: black;  height:inherit; font-family: 'Segoe UI Semilight', 'Open Sans', Verdana, Arial, Helvetica, sans-serif;
                font-weight: 300;
                font-size: 11pt;
                letter-spacing: 0.02em;
                line-height: 20px;">

    
                    <asp:Label ID="Label2" runat="server" style="" CssClass="grid_super">Share to the world...</asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="Label" style="display:none;"></asp:Label>

                    
                    <br />
                    <br />

   
	  		                <div style="margin: 0 auto; width: 490px; border: 1px solid #e1e1e1; margin-left: 30px; ">
			                 <textarea id="inputbox"  class="input" runat="server" font="Ariel" placeholder="Share your day" rows="7" ></textarea>
                             <div runat="server" id="dropbox" style="height: 30px; background-color: ghostwhite; border-style:dashed; border-color: lightslategray; border-width: thin; color: GrayText; text-align:center;">
                                <asp:FileUpload ID="FileUpload1" BackColor="Transparent" BorderColor="Transparent"  runat="server" BorderStyle="Solid" Width="268px" />
                             </div>
                  
			                <div id="asdf" >
					                <button id="asdfe" onserverclick="SetAsCompleteButton_Click" runat="server" class="btnaddphoto">
						                <span style="background: red; float: left; width: 18px; height: 18px; color: white; font-weight: bold; border-radius: 9px; ">
							                +
						                </span>

						                <span>
						                 IMAGE
						                </span>

					                </button>
                						

						
					                <asp:button id="update" runat="server" cssclass="btnsearch" style="width:120px;height:31px; margin-top: 5px; margin-right: 5px; float: right;" 
                                            text="Upload"></asp:button >
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

                      

                      <div id="posts" style="" >
          

                                      <asp:Timer ID="Timer1" runat="server" Interval="200000" OnTick="Timer1_Tick" >
                            </asp:Timer>
 
                          <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">

                          <Triggers>
                          <asp:AsyncPostBackTrigger ControlID="Timer1" 
                        EventName="Tick" />
            
                    </Triggers>
                          <ContentTemplate>
                          <asp:Repeater ID="Repeater1" onitemcommand="Repeater1_ItemCommand"  EnableViewState="true" Onitemdatabound="Repeater1_ItemDataBound" runat="server"   >
          
                            <ItemTemplate>
                
                                <div class="show_holder1" style="padding-left: 0px;  width: 630px; clear: both; color: black; height: inherit; overflow: hidden;
                height: 1%;">
                            <div id="show_holder" style=" clear:both; color: black; clear: both; padding: 20px;  width: 630px; overflow: hidden;
                height: 1%;">
                          <div class="image_holder">
			                       <asp:Image ID="Image2" runat="server" Imageurl='<%#Eval("hometown")%>' style="width: 100%;"  alt="This guy"  />
				                </div>
                                <div class="content">
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
						                     <div runat="server" id="big_image_holder" style="overflow: hidden; -moz-box-shadow: 0 0 3px #000000; -webkit-box-shadow:  0 0 3px #000000; box-shadow: 0 0 3px #000000; margin-top: 20px;">
						     	                  <img runat="server" id="image_big_thing" style="height: auto; width: 500px;" src=' <%# "\imgs\" + Eval("shared")%>'>
						                     </div>
						                     
						                     <%#Eval("datemonth")%>/<%#Eval("dateday")%>/<%#Eval("dateyear")%></p>

                          <br />
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
				                <br />
                                <br />
                              
			                   <asp:Panel runat="server" visible="false" ID="coolness_panel">
                               <asp:Label runat="server" ID="label_id" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
				                        <div id="Div3">
                            
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

			                                       <asp:button runat="server"  id="Button1" ClientIDMode="AutoID" EnableViewState="true" usesubmitbehavior="false" commandname="Button1a" commandargument='<%#Eval("id")%>'  class="btnsearch" style="width: 50px; height: 32px; float: right;" Text="$" ></asp:button>
			                                    <asp:textbox  ViewStateMode="Enabled"  EnableViewState="true" rows="1" runat="server"  id="commentbox1" class="textboxcool"  style="width: 250px; height: 17px;" ></asp:textbox>
			                                     </div>
			                                 </div>
						                 </div>
                                </asp:Panel>
				                </div>
                          </div>
                </div>
       
                       <br />
    
                       <br />

                
                            </ItemTemplate>

                          </asp:Repeater>
                 
          
                                      </ContentTemplate> 
                       </asp:UpdatePanel> 
                      </div>
      
                </div>
		 </div>
      </div>
</asp:Content>
