<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Range.aspx.vb" Inherits="WebApplication12.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="rangesheet.css">

</asp:Content >
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div style ="width: 234px; margin-top: 30px; margin-right: 50px; height: auto; float: right; color: black; font-family: 'Segoe UI Semilight', 'Open Sans', Verdana, Arial, Helvetica, sans-serif;
font-weight: 300;
font-size: 11pt;
letter-spacing: 0.02em;
line-height: 20px;">
 
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
                <asp:Label CssClass="Fontsys3" runat="server"> My Links: </asp:Label>
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
<div style="width: 611px;   padding-top: 20px; margin-left: 50px; color: black;  height:inherit; font-family: 'Segoe UI Semilight', 'Open Sans', Verdana, Arial, Helvetica, sans-serif;
font-weight: 300;
font-size: 11pt;
letter-spacing: 0.02em;
line-height: 20px;">

    
    <asp:Label ID="Label2" runat="server" style="margin-left: 20px;" CssClass="Fontsys1">Share to the world...</asp:Label>
    <asp:Label ID="Label5" runat="server" Text="Label" style="display:none;"></asp:Label>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

   <ContentTemplate>
       
    <br />

   
	  		<div style="margin: 0 auto; width: 490px;border: 1px solid gray; margin-left: 30px; ">
			 <textarea id="inputbox"  class="input" runat="server" font="Ariel" placeholder="Share your day" rows="7" ></textarea>
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
                
                <div class="show_holder1" style="padding-left: 20px; width: 500px; clear: both; color: black; height: inherit; overflow: hidden;
height: 1%;">
            <div id="show_holder" style=" clear:both; color: black;  width: 480px; overflow: hidden;
height: 1%;">
          <div style="	width: 50px;
	height: 50px;
	float: left;
   " >
              <asp:Image ID="Image2" runat="server" Imageurl='<%#Eval("hometown")%>' style="width: 100%; height: 100%;"  alt="This guy"  />
          
          </div>
                <div class="user" style="margin-left: 30px;">
                    
                <a id="manasdf"  href="<%#"WebForm24.aspx?id=" + Eval("email")%>"> <%#Eval("fname")%> <%#Eval("Lname")%></a>
                    <asp:Label ID="Label3" runat="server" visible="false"> <%#Eval("email")%></asp:Label>
                        <ul id="coolasdfasdf" style="">
                    <div>
                       <div class="imagebox1234" style="margin-left: 10px; margin-top: 10px;">
                            <asp:Image ID="Image3" runat="server" Imageurl='<%#Eval("hometown")%>' style="width: 100%;"  alt="This guy"  />
                       </div> 
                       <div id="discription" >
                           <br />
                           
                            <a style="text-decoration: none;" href='<%#"WebForm24.aspx?id=" + Eval("email")%>' id="nameinner"> <%#Eval("fname")%> <%#Eval("Lname")%></a>
                            <br />
                            <label class="titlesof"> Living: </label><%#Eval("favgame")%><br />
                            
                       </div>
                    </div>
                  </ul>
                </div>

          <br />

          <div id="comment" style="margin-left: 30px; width: 400px;">
              <asp:label runat="server" Text='<%#Eval("c1")%>'></asp:label> <br />
               <%#Eval("datemonth")%>/<%#Eval("dateday")%>/<%#Eval("dateyear")%></div>

          <br />
          <br />


          <div id="toolbox" style="margin-left: 80px; width: 600px;">
              
               <asp:linkbutton ID="upbutton" ClientIDMode="AutoID" UseSubmitBehavior="false" CommandName="Button1" CommandArgument='<%#Eval("id")%>'   runat="server" cssclass="like"   herf="#">Thumbs Up
			   <span>
				<%#Eval("thumbssup")%>
			   </span>
			   </asp:linkbutton> |
			   <asp:hyperlink ID="downbutton" NavigateUrl='<%#"WebForm33.aspx?id=" + Eval("id").ToString + "&email=" + email1.Text%>' runat="server" cssclass="unlike"  herf="#"> Thumbs Down
			   <span>
				<%#Eval("thumbsdown")%>
			   </span>
			   </asp:hyperlink> |
               <asp:linkbutton ID="Hyperlink10" ClientIDMode="AutoID" UseSubmitBehavior="false" CommandName="Button1ae" cssclass="unlike"  NavigateUrl='<%#"WebForm33.aspx?id=" + Eval("id").ToString + "&email=" + email1.Text%>' runat="server"  herf="#"> Comment
			   </asp:linkbutton>
			   
					</div>
				<br />
                <br />
                <br />
                <br />
			   <asp:Panel runat="server" visible="false" ID="coolness_panel">
                <asp:Label runat="server" ID="label_id" Visible="false" Text='<%#Eval("id")%>'></asp:Label>
                
                <asp:Repeater ID="Repeater2asdfqwer"   runat="server">
                    <ItemTemplate>
                    <div style=" width: 370px; margin-left: 80px; border: 2px solid #e2e2e2;
	background-color: white;
                    margin-top: 1px;
                    padding: 4px;">
								<div class="comments" style="margin: 0 auto; min-height: 55px; width: 370px;">
									<div style=" border-color: red;width: 50px; height: 50px; float: left; overflow: hidden;" id="Div1">
										
									</div>
									<div style=" float: right; width: 300px; min-height: 50px; color:black;"id="Div2">
										<label><%#Eval("fname")%> <%#Eval("Lname")%></label><br />
										<label style="color: #999;">$ <%#Eval("c1")%></label>
									</div>
								</div>
	                    </div>
                    </ItemTemplate>
                </asp:Repeater>
                	                    
                       <div runat="server"  style="   width: 370px; margin-left: 80px;  border: 2px solid #e2e2e2;
	background-color: white;
                    margin-top: 1px;
                   padding: 4px;">
			                    <div style=" font-size: 11px; width: 325px; float: right;">
			                    <asp:button runat="server" id="Button1" ClientIDMode="AutoID" usesubmitbehavior="false" commandname="Button1a" commandargument='<%#Eval("id")%>'  class="btnsearch" style="width: 50px; height: 32px; float: right;" Text="$" ></asp:button>
			                    <asp:textbox  EnableVIewState="true" rows="1" runat="server"  id="commentbox" class="input"  style="width: 250px; height: 17px;" ></asp:textbox>
		                    </div>

		                    <div style="width:  32px; height: 32px; overflow: hidden; ">
			                    <asp:Image runat="server" id="Img1" ImageUrl='<%#Eval("hometown")%>' style="width: 100%;  "></asp:Image>
		                    </div>
	                    </div>
                </asp:Panel>
          </div>
</div>
       
       <br />
    
       <br />
<br />
<br />

<br />


       <br />
                
            </ItemTemplate>

          </asp:Repeater>
                 
          
                      </ContentTemplate> 
       </asp:UpdatePanel> 
      </div>
      
</div>

<asp:Label ID="Label11" runat="server" Text="Label" style="display:none;"  ></asp:Label>
    <asp:Label ID="Label21" runat="server" Text="Label" style="display:none;"></asp:Label>

<asp:Label ID="Label31" runat="server"  Text="Label" style="display:none;"></asp:Label>
<asp:Label ID="Label1" runat="server" Text="Label" style="display:none;"></asp:Label>
<asp:label ID="email1" runat="server" style="display:none;"></asp:label>

</asp:Content>