<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Photobooth.aspx.vb" Inherits="WebApplication12.WebForm30" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="theme6.css">
    <link rel="stylesheet" type="text/css" href="instaphoto1.css">
	<div style=" width: 980px; margin: 0 auto; padding-left: 235px;">
		<div class="fontchange" style="margin: 0 auto; width: 978px; margin-top: 50px; background-color: #1e1e1e; border: 1px #1e1e4e solid; border-bottom: none;">
			<br />
			<br />
			<label style="font-size: 30px; color: white; margin-left: 20px;"> Screen Pic </label><asp:button runat="server" class="btnsearch" id="addphoto" Text="Upload A Photo" /> <asp:button runat="server" class="btnsearch" id="albumnew" Text="Create Album" /> <asp:button runat="server" class="btnsearch" id="collage" Text="Create A Collage"/> <asp:button runat="server" class="btnsearch" id="profile123" Text="Change Profile Pic"/> 
			<br />
			<br />
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
			<br />
			<hr />
			<br />
			<br />
			
		</div>
            <div>

            </div>
		    <div style="background-color: #1e1e1e; border: 1px #1e1e4e solid; border-top: none;">
					<div class="divcool">
						<div style="margin: 0 auto; width: 920px;">
						<br />
						<br />
						<label style="font-size: 20px; color: white;" class="fontchange"> All Photos </label>
						<br />
						<br />
			            <asp:button runat="server" class="btnsearch" id="Button5" Visible="false" Text="SlideShow" /> 
						<br />
                           
                        <asp:Repeater ID="Repeater1img" runat="server">
                        <ItemTemplate>
                            
                            		<div class="appear" id="demo-2">
			                        <div id="Bigbox"> 
			                        <div class="innerbox" style=" box-shadow: inset 0px 0px 1px #FFFFCC; border-radius: 5px;">
				                        <br />
				                        <div id="person_discription">
				                        <div style="margin: 0 auto;height: 40px; width: 420px;" id="comment">
						                        <div style=" border-color: red;width: 50px; height: 50px; float: left; overflow: hidden;" id="profileimg">
							                        <img style="height: 100%;" src="https://lh5.googleusercontent.com/-3DMijxwNX-Q/UPt4eJ3Ma9I/AAAAAAAAABk/QatragdoasA/s711/2013-01-19"></img>
						                        </div>
						                        <div style=" float: right; width: 350px; min-height: 50px;" id="contents">
							                        <label>Prithviraj<label><br />
							                        <label>This is real hockey</label>
						                        </div>
					                        </div>
				                        </div>
				                        <div id="imagebox">
					                        <img style="width: 100%; box-shadow: inset 0px 0px 1px #FFFFCC;" src='<%#"\imgs\" + Eval("img")%>'><img>
				                        </div>
				                        <div id="comments">
					                        <label>Comments:</label>
					                        <div class="comments" style="margin: 0 auto;height: 40px; width: 420px;">
						                        <div style=" border-color: red;width: 50px; height: 50px; float: left; overflow: hidden;" id="Div2">
							                        <img style="height: 100%;" src="https://lh5.googleusercontent.com/-3DMijxwNX-Q/UPt4eJ3Ma9I/AAAAAAAAABk/QatragdoasA/s711/2013-01-19"></img>
						                        </div>
						                        <div style=" float: right; width: 350px; min-height: 50px; color:black;"id="Div3">
							                        <label>Prithviraj<label><br />
							                        <label style="color: #999;">This is real hockey</label>
						                        </div>
					                        </div>
					                        <br />
					                        <hr class="line" />
					                        <br />
					                        <div class="comments" style="margin: 0 auto;height: 40px; width: 420px;">
						                        <div style=" border-color: red;width: 50px; height: 50px; float: left; overflow: hidden;" id="Div4">
							                        <img style="height: 100%;" src="https://lh5.googleusercontent.com/-3DMijxwNX-Q/UPt4eJ3Ma9I/AAAAAAAAABk/QatragdoasA/s711/2013-01-19"></img>
						                        </div>
						                        <div style=" float: right; width: 350px; min-height: 50px; color:black;"id="Div5">
							                        <label>Prithviraj<label><br />
							                        <label style="color: #999;">This is real hockey</label>
						                        </div>
					                        </div>
					                        <br />
					                        <hr class="line" />
					                        <br />
					                        <div class="comments" style="margin: 0 auto;height: 40px; width: 420px;">
						                        <div style=" border-color: red;width: 33px; height: 33px; float: left; overflow: hidden;" id="Div6">
							                        <img style="height: 100%;" src="https://lh5.googleusercontent.com/-3DMijxwNX-Q/UPt4eJ3Ma9I/AAAAAAAAABk/QatragdoasA/s711/2013-01-19"></img>
						                        </div>
						                        <div style=" float: right; width: 380px; min-height: 50px; color:black;"id="Div7">
							
							                        <label><input class="text" placeholder="Comment about the pic?"></input></label>
						                        </div>
					                        </div>
				                        </div>
				                        <br />
				                        <br />
			                        </div>
			                        </div>
                                    <br />
                                    <br />
		                        </div>  
                             
                        </ItemTemplate>
                        </asp:Repeater>
                                   
						<br />
						<br />
						<br />
						<br />
						<br />
						</div>
					</div>		
			</div>

            <cc1:modalpopupextender id="ModalPopupExtender1" runat="server" 
	            cancelcontrolid="btnCancel" okcontrolid="btnOkay" 
	            targetcontrolid="addphoto" popupcontrolid="Panel1" 
	            popupdraghandlecontrolid="PopupHeader" drag="true" 
	            backgroundcssclass="ModalPopupBG">
            </cc1:modalpopupextender>
        <asp:Panel ID="Panel1"  style=" background: black; width: 1000px; height: 500px;" runat="server">
            <div id="header" style="height: 43px; background:#ff7d1a;"><label class="Fontsys1"> Upload Image </label></div>
            <div style="height: 425px;">

                <br />
                <br />
                <br />
                <div style="width: 300px; float: left; margin-left: 50px;">                
                <asp:FileUpload ID="FileUpload1" runat="server"  
                    Height="45px" Width="234px" ForeColor="White" BackColor="Black" BorderColor="Black" />
                    
                    <asp:TextBox ID="TextBox1" runat="server"  CssClass="textbox" Height="103px" 
                        Width="289px" TextMode="MultiLine"></asp:TextBox>
                    </div>


                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Upload" class="btnsearch" />
            <input id="btnOkay" class="btnsearch" type="button" value="Done" />
            <input id="btnCancel" class="btnsearch" type="button" value="Cancel" />
        </asp:Panel>
            <cc1:modalpopupextender id="ModalPopupExtender2" runat="server" 
	            cancelcontrolid="Button4" okcontrolid="Button3" 
	            targetcontrolid="profile123" popupcontrolid="Panel2" 
	            popupdraghandlecontrolid="PopupHeader"  
	            backgroundcssclass="ModalPopupBG">
            </cc1:modalpopupextender>
        <asp:Panel ID="Panel2"  style="background: black; width: 1000px; height: 500px;" runat="server">
            <div id="Div1" style="height: 43px; background:#ff7d1a;"><label class="Fontsys1"> Upload Profile Pic </label></div>
            <div style="height: 425px;">

                <br />
                <br />
                <br />
                <div style="width: 300px; float: left; margin-left: 50px;">                
                <asp:FileUpload ID="FileUpload2" runat="server"  
                    Height="45px" Width="234px" ForeColor="White" BackColor="Black" BorderColor="Black" />
                    
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Height="103px" 
                        Width="289px" TextMode="MultiLine"></asp:TextBox>
                    </div>
               

                    </div>
            
                    <asp:Button ID="Button2" runat="server" Text="Upload" class="btnsearch" />
            <input id="Button3" class="btnsearch" type="button" value="Done" />
            <input id="Button4" class="btnsearch" type="button" value="Cancel" />
        </asp:Panel>





	</div>
</asp:Content>
