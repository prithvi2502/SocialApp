<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Window.aspx.vb" Inherits="WebApplication12.WebForm35" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="windowsheet1.css">
    <link rel="stylesheet" type="text/css" href="windowsheet2.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div style ="width: 234px; margin-top: 30px;  height: auto; float: right; color: black; font-family: 'Segoe UI Semilight', 'Open Sans', Verdana, Arial, Helvetica, sans-serif;
font-weight: 300;
font-size: 11pt;
letter-spacing: 0.02em;
line-height: 20px;
    border: 1px solid #e1e2e4;
    background-color: white;">
 
        <div style="  width: 220px; margin: 0 auto;">
                <div class="imagebox1234" style="margin-left: 10px; overflow:hidden;">
                    <asp:Image alt="This guy" style="width: 100%" ID="Image1" runat="server" />
                    
                </div>
            <br />
            <asp:HyperLink cssclass="Fontsys2" ID="HyperLink8" runat="server">HyperLink</asp:HyperLink> 
            <asp:HyperLink style="padding-left: 0px;" cssclass="Fontsys2" ID="HyperLink9" runat="server">HyperLink</asp:HyperLink>
            
            <br />
            <br />
            <br />

            <div style="margin-left: 65px;">
                <asp:Label ID="Label1" CssClass="Fontsys3" runat="server"> My Links: </asp:Label>
                <br />
                <br />
                <asp:hyperlink ID="Hyperlink1" cssclass="Fontsys2" runat="server" href="gameshack2.aspx" Text="Game Grid"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink2" cssclass="Fontsys2" runat="server" Text="Friends"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink3" cssclass="Fontsys2" runat="server" Text="Window"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink4" cssclass="Fontsys2" runat="server" Text="About Me"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink5" cssclass="Fontsys2" runat="server" Text="PhotoBooth"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink6" cssclass="Fontsys2" runat="server" Text="ClanVid"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink7" cssclass="Fontsys2" runat="server" Text="Public Place"></asp:hyperlink>
                <br />
            </div>
        </div>
</div>
<div style="width: 611px;   padding-top: 20px;  color: black;  height:inherit; font-family: 'Segoe UI Semilight', 'Open Sans', Verdana, Arial, Helvetica, sans-serif;
font-weight: 300;
font-size: 11pt;
letter-spacing: 0.02em;
line-height: 20px;">

    
    <asp:Label ID="Label2" runat="server" style="margin-left: 20px;" CssClass="grid_super">Share to the world...</asp:Label>
    <asp:Label ID="Label5" runat="server" Text="Label" style="display:none;"></asp:Label>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

   <ContentTemplate>
       
    <br />

           
	  		<div style="margin: 0 auto; width: 490px; margin: 20px; ">
			 <textarea id="inputbox" class="input" runat="server" font="Ariel" placeholder="Share your day" rows="7"></textarea>
             <div runat="server" id="dropbox" style="height: 30px; background-color: ghostwhite; border-style:dashed; border-color: lightslategray; border-width: thin; color: GrayText; text-align:center;">
                <asp:FileUpload ID="FileUpload1" BackColor="Transparent" BorderColor="Transparent"  runat="server" BorderStyle="Solid" Width="268px" />
             </div>
                  
			<div id="asdf">
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
      <br />
             
      <br />

      </ContentTemplate>
      </asp:UpdatePanel>

      <div id="posts" style=" height: auto; clear:both;" >
          
          <asp:Timer ID="timer2" runat="server" Interval ="1" OnTick="timer_Tick"></asp:Timer>

          <asp:Timer ID="Timer1" runat="server" interval="200000" OnTick="Timer1_Tick" >
            </asp:Timer>
                      
 
          <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">

          <Triggers>
          <asp:AsyncPostBackTrigger ControlID="Timer1" 
        EventName="Tick" />
            <asp:AsyncPostBackTrigger ControlID="timer2" 
        EventName="Tick" />
    </Triggers>
          <ContentTemplate>
              
              <ul style="clear:both;  padding: 0;">
          <asp:Repeater ID="Repeater1" onitemcommand="Repeater1_ItemCommand" Onitemdatabound="Repeater1_ItemDataBound"  runat="server"   >
          
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
                <div style="clear: both;"></div>
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
      
</div>

<asp:Label ID="Label11" runat="server" Text="Label" style="display:none;"  ></asp:Label>
    <asp:Label ID="Label21" runat="server" Text="Label" style="display:none;"></asp:Label>

<asp:Label ID="Label31" runat="server"  Text="Label" style="display:none;"></asp:Label>
<asp:Label ID="Label4" runat="server" Text="Label" style="display:none;"></asp:Label>
<asp:label ID="email1" runat="server" style="display:none;"></asp:label>

</asp:Content>