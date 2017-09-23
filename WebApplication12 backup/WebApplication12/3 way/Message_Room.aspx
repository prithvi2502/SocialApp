<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Message_Room.aspx.vb" Inherits="WebApplication12.Message_Room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="apples_messages.css">
	<body style="background: #fbfbfb;">
		<div  style="width: 980px; height: 800px; margin: 0 auto;  ">
			<label class="grid_super">Messages</label><button class="button_cool">Create Message</button>
			<br />
			<br />
			<div id="achievements_box" style="width: 530px; height: 570px;float: left; margin-top: -8px; ">
				<div style="height: 570px; overflow-y: scroll;">
					<label runat="server" id="person_name" class="grid_tiltle">Inbox</label>
                    <label runat="server" id="email_person" class="grid_title" style="color: #999; font-size: 12pt;"></label>
					<br />
					<br />
                    <asp:UpdatePanel runat="server" ID="update_panel_of_stuffs">
                        <ContentTemplate>
                            <asp:Repeater runat="server" ID="repeater_message">
                                <ItemTemplate>
					                <div class="chat_box_underbox" style="">	
						                <div class="image_holder" style="float: left;">
						                   <asp:Image runat="server" id="profile_img_center" style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
						                </div>
						                <div style="width: 440px; float: right;">
                                            <label runat="server" id="Label3"><%#Eval("email")%></label>
							                <a class="links_link1"><%#Eval("fname")%> <%#Eval("Lname")%></a><label style="float:right; color: #999; margin-right: 10px; font-size: 9pt;"><%#Eval("date_today")%></label>
							                <br />
							                <label>
								                <%#Eval("message")%>
							                </label>
						                </div>
					                </div> 
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

			<div id="achievements_box" style="width: 330px; height: 715px;float: right; margin-top: -8px;overflow-y: scroll; ">
				<label class="grid_tiltle">Friends</label>
				<br />
				<br />
				<div class="friends_box_underbox" style="">
                    <asp:UpdatePanel runat="server" ID="friend_message_box_repeater">
                        <ContentTemplate>
                            <asp:Repeater runat="server" ID="friends_message_box_repeater">
                                <ItemTemplate>
					                <div class="image_holder" style="float: left;">
					                   <img style="width: 100%;" src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-snc7/370385_100003464193070_1412615721_q.jpg "/>
					                </div>
					                <div style="width: 220px; float: right;">
						                <a class="links_link1">Prithviraj Vishwakarma</a>
						                <br />
						                <label>
							                Just got an awesome kd
						                </label>
						                <br />
						                <a style="font-size: 9pt;"class="links_link">Show Messages</a> <a style="font-size: 9pt;" class="links_link">Create Message</a>
					                </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ContentTemplate>
                    </asp:UpdatePanel>
				</div> 		
			 </div>
			  <div id="achievements_box" style="width: 530px; height: 95px;float: left; margin-top: 8px; ">
			  	<label>Send Prithviraj A Message</label>
			  	<textarea runat="server" id="input_link" placeholder="Message goes here" class="textboxcool" x-webkit-speech="x-webkit-speech" style=" width:500px; resize: none; height: 60px;" ></textarea><asp:button ID="upload" runat="server" class="button_cool_green" style="height:74px; width: 10px; margin: 0px; margin-top: 3px; float:right; "></asp:button>
			 </div>
		</div>
	</body>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
