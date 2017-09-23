<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="WebForm41.aspx.vb" Inherits="WebApplication12.WebForm41" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="instaphoto2s.css">
    <style>
        body {
            -webkit-font-smoothing: antialiased;
            -moz-font-smoothing: antialiased;
            -o-font-smoothing: antialiased;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="top_part" style="margin: 3px;">
			<div id="top_part_coolner" style="width: auto;">
					<asp:Label ID="Label3" style="display:none;" runat="server"></asp:Label>
                    <asp:Label ID="Label4" style="display:none;" runat="Server"></asp:Label>
				<a runat="server" id="name_all" class="links_link">Prithviraj Vishwakarma</a>
				<button id="popup_control" runat="server" class="button_cool">+ Photo</button>
				<a id="A1" runat="server" style="text-align:center; text-decoration: none; display: inline-block; padding-top: 5px;height: 23px;"  class="button_cool" href="WebForm41.aspx">Photo Reel</a>
				<button  class="button_cool">Send an Image</button>
			</div>
		</div>
    <asp:label ID="Label1" runat="server" style="display:none;"></asp:label>
    <asp:Label ID="Label2" runat="server" Style="display:none;"></asp:Label>
    <br />
    <br />
    <br />
<asp:UpdatePanel runat="server" ID="updatepanel1" ChildrenAsTriggers="true" UpdateMode="conditional">
    <ContentTemplate>
    <asp:Repeater runat="server" ID="reapeater_show_data" onitemcommand="Repeater1_ItemCommand"  EnableVIewState="true" Onitemdatabound="Repeater1_ItemDataBound">
        <ItemTemplate>
    <div id="demo-2">
		<div class="image_holder" style="width: 70px; height: 70px; float: left;margin-left: 85px; overflow: hidden;">
			<img ID="Image3" runat="server" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg " style="width: 100%;"  alt="This guy"  />
	   </div> 
	
			<div class="innerbox" style=" width: 650px; margin: 0 auto; position:relative; ">
				
				<div id="imagebox" style="" >
                    <div style="position: absolute; top: 0px;  z-index: 4;" id="person_discription">
					    <div style="margin: 0 auto;height: 40px; width: 100%; padding: 20px;" id="comment">
						    <div style=" float: left; width: 300px; min-height: 50px;" id="contents">
							    <a runat="server" id="names" class="links_link" style="font-weight: 900; ">Prithviraj</a><br />
							    <label style=" color: white; font-weight: 500; "><%#Eval("discription")%></label>
						    </div>
					    </div>
				    </div>
					<img style="  border-top-left-radius: 3px; border-top-right-radius: 3px; width:100%; " src='<%#"\imgs\" + Eval("img")%>'><img>
				    
                </div>
				
				
				<div class="utilities" style="padding: 10px;  ">
					 <a style="font-size: 11pt; " class="links_link1">Thumbs Up</a>&nbsp;&nbsp;&nbsp;
					 <a style="font-size: 11pt; " class="links_link1">Thumbs Down</a>&nbsp;&nbsp;&nbsp;
					 <a style="font-size: 11pt; " class="links_link1">Comment</a>
				</div>
				
				<div id="comments" style="display:none;">
					
					
					<div class="comments" style="margin: 0 auto;height: 40px; width: 100%; ">
						<div class="image_holder" style=" width: 50px; height: 50px; float: left; overflow: hidden;" id="profileimg">
							<img style="height: 100%;" src="https://lh5.googleusercontent.com/-3DMijxwNX-Q/UPt4eJ3Ma9I/AAAAAAAAABk/QatragdoasA/s711/2013-01-19"></img>
						</div>
						<div style=" float: right; width: 540px; min-height: 50px; color:black;"id="Div1">
							<label>Prithviraj<label> . <label style="color: #999;">Likes</label><label style="color:#FFC880;" > 5</label>
							<br /><label style="color: #999;">This is real hockey</label>
						</div>
					</div>
					<br />
					
					
					<div class="comments" style="margin: 0 auto;height: 40px; width: 100%;">
						<div class="image_holder" style=" width: 50px; height: 50px; float: left; overflow: hidden;" id="Div2">
							<img style="height: 100%;" src="https://lh5.googleusercontent.com/-3DMijxwNX-Q/UPt4eJ3Ma9I/AAAAAAAAABk/QatragdoasA/s711/2013-01-19"></img>
						</div>
						<div style=" float: right; width: 540px; min-height: 50px; color:black;"id="Div3">
							
							<label><input class="text" placeholder="Comment about the pic?"></input></label><button class="button_cool1">$</button>
						</div>
					</div>
				</div>
				
			</div>				
		</div>
            <br />
            <br />
            <br />
            </ItemTemplate>
</asp:Repeater>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

