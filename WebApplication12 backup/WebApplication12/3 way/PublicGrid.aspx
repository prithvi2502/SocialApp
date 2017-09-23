<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="PublicGrid.aspx.vb" Inherits="WebApplication12.PublicGrid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
       <link rel="stylesheet" type="text/css" href="apples_publicgrid.css">
		<br />
		<br />
		<br />
		
		<div class="clearcut" style="padding-left: 230px;">
			<br />
			<br />
			<label class="grid_super">Public Grid</label><button runat="server" id="start_topic" class="button_cool">Start A Topic</button>
            <asp:label runat="server" ID="Label1" style="display:none;"></asp:label>
            <asp:Label runat="server" ID="email1" style="display:none;"></asp:Label>
			<br />
			<br />
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
	           		            <label style="color: #e53434;">Pick a Topic Name</label>
	           		            <br />
	           		            <input runat="server" id="topic_name" placeholder="Make sure it's a good one!" class="textboxcool"></input>
	           		            <br />
	           		            <br />
	           		            <label placeholder="Make sure it's a good one!" style="color: #e53434;">The type of topic</label>
	           		            <br />
	           		            <select runat="server" id="type_topic" class="textboxcool1">
					              <option value="volvo">General Topic</option>
					              <option value="saab">Gaming Topic</option>
					              <option value="mercedes">Meme</option>
					              <option value="audi">Question</option>
					              <option value="edu">Intelligent or Educational</option>
					            </select>
					            <br />
					            <br />
					            <label style="color: #e53434;">A tab for your topic</label><label style="color: #999;">(Don't worry about the "$")</label>
					            <br />
					            $<input class="textboxcool" runat="server" id="tab_topic" placeholder="Make sure it's a good one too!"></input>
					            <br /><br />
					            <label style="color: #e53434;">Discription:</label>
					            <br />
					            <textarea class="textboxcool" runat="server" id="discription_var_input" placeholder="Make it thorough and discriptive!" style="width: 400px; height: 200px;"></textarea>
				            </div>
  	  	               </div>
                  </div>
            </asp:Panel>
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
						<asp:button runat="server" id="search_button" class="button_cool" style="width: 56px; height: 30px;" Text="Search"></asp:button>
						<br />

					</div>
				</div>
			</div>

			<!--<div class="tile1">
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
			</div>-->
		</div>
		<div style=" width: 780px; margin-top: -243px; padding: 5px;float: left; clear: both; height: inherit; overflow: hidden;">
			<label style="font-size: 15pt; padding: 30px; color: #999;">Recent Tabs and Topics</label>
            <br />
            <br />
            <asp:UpdatePanel runat="server" ID="Public_grid_updatepanel">
                <ContentTemplate>
                    <asp:Repeater ID="Public_grid_Repeater" runat="server">
                        <ItemTemplate>
                            <div class="wide_tile">
				                <a href="<%#"shower_topic.aspx?topicname=" + Eval("topic_name")%>" style="font-size: 15pt;" class="links_link">$<%#Eval("topic_name")%></a><Br /><label style="margin-left: 10px; color: #999; font-size: 10pt; "><%#Eval("discription")%></label><br/><label style="margin-left: 10px; color: #999; font-size: 10pt;">Created on <%#Eval("date_day")%>/<%#Eval("date_month")%>/<%#Eval("date_year")%>by <a class="links_link" style="font-size: 10pt;"> <%#Eval("admin_fname")%> <%#Eval("admin_lname")%></a></label>
				                <br />
				                <label style="margin-left: 15px; color: #999; font-size: 10pt;"> <%#Eval("num_comments")%> comments, </label> <a href="<%#"shower_tab.aspx?topicname=" + Eval("topic_tab")%>" class="links_link">$<%#Eval("topic_tab")%></a></div>
                        </ItemTemplate>
                    </asp:Repeater>
                </ContentTemplate>
            </asp:UpdatePanel>
		</div>
		</div>	
</asp:Content>
