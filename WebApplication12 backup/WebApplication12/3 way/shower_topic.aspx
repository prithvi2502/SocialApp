<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="shower_topic.aspx.vb" Inherits="WebApplication12.shower_topic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<link rel="stylesheet" type="text/css" href="apples_shower_one.css">
		<br />
		<br />
		<br />
		
		<div class="clearcut" style="padding-left: 230px;">
			<br />
			<br />
			<label class="grid_super">Public Grid - Games</label>
            <asp:label runat="server" ID="Label1" style="display:none;"></asp:label>
            <asp:Label runat="server" ID="email1" style="display:none;"></asp:Label>
			<br />
			<br />
			<br />
			<br />
			<div style=" width: 425px; float: right; clear: both; height: inherit; overflow: hidden;">
			<div class="tile1">
				<div style="padding: 5px; background-color: #526fa7; margin: -20px; clear:both;">
					<label style="color: white;">Search For Tabs</label>
				</div>
				<BR />
				<BR />
				<div>
					<div class="image_holder">
						<img alt="Profile Image" runat="server" id="image1" src="">
					</div>
					<div style="width: 290px; float: right;" id="name_info">
						<a runat="server" id="fname" class="links_link"> </a>
						<br />
						$<label runat="server" id="tab_person">I am checking our the pub</label>
					</div>
						<br />
						<br />
						<br />
					<div id="serach_bar">

						<label>Search Through Tabs</label>
						$<input runat="server" id="search_Box" class="textboxcool" placeholder="tabbity! tabbity! tabbity!" x-webkit-speech></input>
						<asp:button runat="server" id="search_button" class="button_cool" style="width: 63px; height: 30px;" Text="Search"></asp:button>
						<br />

					</div>
				</div>
			</div>

			<div class="tile1">
				<div style="padding: 5px; background-color: #a55252; margin: -20px; clear:both;">
					<label style="color: white;">Access</label>
				</div>
				<BR />
				<BR />
				<div>
					<a href="#" class="links_link">Hot</a>
					<br />
					<a href="#" class="links_link">Top Tabs</a>
					<br />
					<a href="#" class="links_link">Gaming</a>
					<br />
					<a href="#" Class="links_link">Edu Discussions</a>
					<br />
					<a href="#" class="links_link">Memer</a>
					<br />
					<a href="#" class="links_link">Friends</a>
					<br />
					<a href="#" class="links_link">Questions</a>
				</div>
			</div>
		</div>
			<div style=" width: 780px; margin-top: -475px; padding: 5px;float: left; clear: both; height: inherit; overflow: hidden;">
				<div class="huge_tile">
					<div style="padding: 5px; background-color: #526fa7; margin: -20px; clear:both;">
						<label style="color: white;" >$callofdutysike</label>
					</div>
					<br />
					<br />
					<div id="Ideal_Part" style="height: auto;">
						<div style="clear: both;">
							<div id="image_locate" style="width: 350px; overflow: hidden; float: left; border: 3px solid #e6e6e6;" >
								<img style="width: 100%; " src="http://callofduty.com/content/dam/activision/callofduty/elite/img/assets/Elite_thumb.png"/>
							</div>
							<div class="discription" style="width: 300px; height: 300px;  margin-right: 40px; float: right; ">

								<label style=" color: #24A0DA; float: left;">Topic-Admin:</label>
								<label runat="server" id="admin_name_storage" style="float: right;">Prithviraj Vishwakarma</label>
								<br />
								<br />
								<label style=" color: #24A0DA; float: left;">Topic Tab:</label>
								<label runat="server" id="topic_tab_storage" style="float: right;">$callofdutysike</label>
								<br />
								<br />
								<label style=" color: #24A0DA; float: left;">Topic Type:</label>
								<label runat="server" id="topic_type_shower" style="float: right;">Gaming</label>
								<br />
								<br />
								<label style=" color: #24A0DA; float: left;">Topic:</label>
								<label runat="server" id="topic_name_shower" style="float: right;">Cod Future</label>
								<br />
								<br />
								<label style=" color: #24A0DA; float: left;">Discription:</label>
								<br />
								<label runat="server" id="discription_shower" style="float: right; text-align: center;">Come join our clan chat as we talk about the latest and the coolest things in call of duty right now.
									We also discussions on the games future, which we currently are really concerend about.</label>

							</div>
						</div>

						<div style="height: auto; clear: both; ">
							<div Id="posts">
								<br />
								
								<label style="font-size: 15pt; padding-left: 0px;" class="grid_super">Tabs and Posts</label>
								<br />
								<br />
								<div style="padding: 20px;">
									<input class="textboxcool" runat="server" id="textboxcool" style="width: 500px;" placeholder="Share your ideas here!" x-webkit-speech></input>
									<asp:button runat="server" id="update" class="button_cool" style="float: left;" text="Upload"></asp:button>
								</div>
                                <asp:UpdatePanel ID="major_panel" runat="server" updatemode="Conditional">
                                    <ContentTemplate>
                                        <asp:repeater ID="conversation_grid" runat="server">
                                            <ItemTemplate>
									            <div class="post_section" style="clear: both; height: 8%;">
										            <div class="image_holder" style="float: left;">
										               <img style="width: 100%;" src='<%#Eval("image_src")%>'/>
										            </div>
										            <div style=" width: 620px; float: right;">
											            <a href="<%#"WebForm24.aspx?id=" + Eval("commenter_email")%>" class="links_link1"><%#Eval("commenter_fname")%> <%#Eval("commenter_lname")%></a>
											            <br/>
											            <label><%#Eval("comment_itself")%></label>
											            <br />
											            <label style="font-size: 9pt;">This comment has been tabed with </label> <a style=" font-size: 9pt;" href="<%#"shower_tab.aspx?topicname=" + Eval("topic_tab")%>" class="links_link2">$<%#Eval("topic_tab")%></a></div>
									            </div>
                                            </ItemTemplate>
                                        </asp:repeater>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
</asp:Content>
