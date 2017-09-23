<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Image_grid.aspx.vb" Inherits="WebApplication12.Image_grid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="apples_fo_images.css">
		<div id="top_part" style="margin: 3px;">
			<div id="top_part_coolner" style="width: auto;">
					<asp:Label ID="Label1" style="display:none;" runat="server"></asp:Label>
                    <asp:Label ID="Label2" style="display:none;" runat="Server"></asp:Label>
				<a runat="server" id="name_all" class="links_link">Prithviraj Vishwakarma</a>
				<button id="popup_control" runat="server" class="button_cool">+ Photo</button>
				<a runat="server" style="text-align:center; text-decoration: none; display: inline-block; padding-top: 5px;height: 23px;"  class="button_cool" href="WebForm41.aspx">Photo Reel</a>
				<button  class="button_cool">Send an Image</button>
			</div>
		</div>
        <cc1:modalpopupextender id="ModalPopupExtender1" runat="server" 
	            cancelcontrolid="btnCancel"  
	            targetcontrolid="popup_control" popupcontrolid="Panel1" 
	            popupdraghandlecontrolid="PopupHeader" drag="true" 
	            backgroundcssclass="ModalPopupBG">
        </cc1:modalpopupextender>
    
        <asp:Panel runat="server" ID="Panel1" style="-webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, .3); -moz-box-shadow: 0 3px 8px rgba(0, 0, 0, .3); -o-box-shadow: 0 3px 8px rgba(0, 0, 0, .3); box-shadow: 0 3px 8px rgba(0, 0, 0, .3);">
            <div id="mainfeature">
  	  	       <div id="popup_game" style="width: 700px; margin: 0 auto; height: 400px; overflow-y: scroll;">
           		    <label class="grid_super" >Upload A Picture</label>
           		    <button  id="btnCancel" class="button_cool_red" style="margin-top: 0px;">Close</button><button class="button_cool_green" runat="server" id="Upload_button" style="margin-top: 0px;">Upload</button>
           		    <Br />
           		    <Br />
           		    <br />
           		    <label>Pick your pic</label>
           		    <br />
                    <asp:FileUpload runat="server" cssclass="textboxcool" ID="FileUpload1" />
           		    <br />
           		    <br />
           		    <label>Discription</label>
           		    <br />
           		    <textarea class="textboxcool" runat="server" id="dsicription" style="height: 150px;" placeholder="Give it a good discription!"></textarea>
  	  	       </div>
          </div>
        </asp:Panel>
		<br />
    <div class="big_tile">
    <div style="padding: 10px; background-color: #526fa7;  clear:both;">
						<label style="color: white;">All Photos</label>
					</div>
        <br />
        <br />
		<div id="imageholder" style=" clear: both; height: inherit;  overflow: hidden;">	
            <asp:Repeater ID="Repeater1img" runat="server"   onitemcommand="Repeater1_ItemCommand"  EnableViewState="true" Onitemdatabound="Repeater1_ItemDataBound" >
                <ItemTemplate>
			        <div class="outer_tile" >
				        <div class="tile" style="margin: 30px;">
				            <asp:LinkButton id="open" runat="server" style="cursor: pointer;">
					            <img src='<%#"\imgs\" + Eval("img")%>' style="width: 100%;">
				            </asp:LinkButton>
                            <cc1:modalpopupextender id="ModalPopupExtender2" runat="server" 
	                                cancelcontrolid="btnCancel"  
	                                TargetControlId="open" popupcontrolid="Panel2" 
	                                popupdraghandlecontrolid="PopupHeader" drag="true" 
	                                backgroundcssclass="ModalPopupBG">
                            </cc1:modalpopupextender>
                            <asp:Panel ID="Panel2" runat="server">
                            <div id="big_box" style="width: 980px; border-radius: 5px; clear: both; height: inherit; overflow: hidden; margin: 0 auto; background-color: white;  -webkit-box-shadow: 0px 0px 10px rgba(0, 0, 0, .3);">
		                        <div style="width: 438px; float: right;">
			                        <div id="discription" style="width:438px;  float: right;  ">
				                        <div class="post_section1">
					                        <div class="outer_tile">
						                        <div class="tile" style=" width: 65px; height: 65px;">
						                        <a href="#" style="cursor: pointer;">
							                        <img runat="server" id="Image11"  style="width: 100%;">
						                        </a>
						                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
					                        </div>
					                        <div style=" width: 310px; float: right;">
						                        <asp:hyperlink runat="server" id="name" class="links_link1"></asp:hyperlink> <button id="btnCancel" class="button_cool_red">Close</button>
						                        <br/>
                                                
						                        <label><%#Eval("discription")%>.</label>
					                        </div>
				                        </div>
			                        </div>
			                        <Br />
			                        <br />
			                        <div id="image_comments" style="width:438px;  float: right; min-height: 300px; max-height: 600px; overflow: scroll; ">
				                      <asp:UpdatePanel runat="server" EnableViewState="true" childrenastriggers="true" UpdateMode="Conditional" ID="update_comment">  
                                       <ContentTemplate>
                                        <asp:Repeater ID="Repeater2asdfqwer" EnableViewState="true"  runat="server">
                                            <ItemTemplate>
                                                <div class="post_section">
					                                <div class="image_holder" >
						                                <img src="<%# "\imgs\" + Eval("hometown")%>">
					                                </div>
					                                <div style=" width: 340px; float: right;">
						                                <a href="#" class="links_link1"><%#Eval("fname")%> <%#Eval("lname")%></a>
						                                <br/>
						                                <label style="color: #999; "><%#Eval("c1")%></label>
					                                </div>
				                                </div>
                                            </itemtemplate>
                                        </asp:Repeater>
                                         <div class="post_section">
                                            <div class="image_holder">
                                                <img />
                                            </div>
                                            <div style="width: 340px; float: right;">
                                                <asp:button runat="server" id="Button1" EnableViewState="true" ClientIDMode="AutoID" usesubmitbehavior="false" commandname="Button_search" commandargument='<%#"\imgs\" + Eval("img")%>'  class="button_cool" style="width: 60px; height: 28px; float: right;" Text="$" ></asp:button>
			                                     <asp:textbox ViewStateMode="Enabled"  EnableViewState="true" rows="1" runat="server"  id="commentbox" class="input"  style="width: 250px; height: 17px;" ></asp:textbox>
                                            </div>
                                        </div>
                                       </ContentTemplate>    
                                      </asp:UpdatePanel>

			                        </div>
			                        </div>
			                        <div style="width: 500px;   height: auto; overflow: hidden;" id="image_container">
				                        <img runat="server" id="open_image_cool" style="width: 100%;" src='<%#"\imgs\" + Eval("img")%>'></img>
			                        </div>
		                        </div>
                            </asp:Panel>
				        </div>
			        </div>
                </ItemTemplate>
            </asp:Repeater>
		</div>
         </div>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
