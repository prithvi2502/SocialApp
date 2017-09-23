<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site5.Master" CodeBehind="WebForm20.aspx.vb" Inherits="WebApplication12.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="theme3.css">
	<body>
		<div id="contentbox">
			<br />
			<br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
			<br />
			<label class="Fontsys1" id="title"> Your Likes and Intresets:</label>
			<br />
			<label class="Fontsys2" id="discription"> On This part you can just put in all of your likes and interests
			on certain topics. Also all of this information can be updated any time so</label><br /> <label class="Fontsys2"> don't Stress yourself and have fun!</label>
			<br />
			<br />
			<hr />
			<br />
			<div>
				<div id="Progresser_bar" style=" width:640px; margin: 0 auto;">
				<div id="Basic_info">
					<br/>
					<label id="impt">Basic Information</label>
				</div>
				<div id="Likes">
					<br/>
					<label id="impt1">Likes</label>
				</div>
				<div id="gamer_man">
					<br/>
					<label id="impt2">Gamer Card</label>
				</div>
				<div id="gamer_info">
					<br/>
					<label id="impt3">Game Info</label>
				</div>
				</div>
				<br />
				<br />
				<br />
				<br />
			</div>
			<br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
			<div>
				<label class="Fontsys4" style="font-size: 25px;" id="titles"> Likes And Interesets: </label>
				<br />
				<br />
                <asp:label ID="label45" runat="server" Text = "Email: " CssClass="Fontsys3"></asp:label>
                <asp:label ID="labelel" runat="server" CssClass="Fontsys3"></asp:label>
				<br />
                <br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Music: </label>
					<br />
					<asp:textbox ID="textbox1" class="text_input" runat="server" 
                        placeholder="What kind of music, artists and songs do you like?" Width="293px" ></asp:textbox>
                    <asp:Button ID="Button12" CssClass="button2" text="Enter" runat="server"/>
              
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label1" runat="server" Text="NA" class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label2" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label3" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label4" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Movies: </label>
					<br />
					<asp:textbox runat="server" id="textbox2" class="text_input" 
                        placeholder="What movies you like?" Width="307px"></asp:textbox>
                    <asp:Button ID="Button2" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label5" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label6" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label7" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label8" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Books: </label>
					<br />
					<asp:textbox runat="server" ID="textbox3" class="text_input" 
                        placeholder="Have any books you like?" Width="310px" ></asp:textbox>
                    <asp:Button ID="Button3" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label9" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label10" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label11" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label12" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder" style="width: 750px;">
					<label class="Fontsys3" id="titles"> Games: </label>
					<br />
					<asp:textbox ID="textbox4" runat="server" class="text_input" style="width: 600px;" placeholder="Go ahead put in your game intresets in a website partially about games?" ></asp:textbox>
                    <asp:Button ID="Button4" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label13" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label14" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label15" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label16" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Athlete: </label>
					<br />
					<asp:textbox ID="textbox5" runat="server" class="text_input" placeholder="What athletes do you like?" ></asp:textbox>
                    <asp:Button ID="Button5" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label17" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label18" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label19" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label20" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Sports: </label>
					<br />
					<asp:textbox ID="textbox6" runat="server" class="text_input" placeholder="What kind of sports do you like?" ></asp:textbox>
                    <asp:Button ID="Button6" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label21" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label22" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label23" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label24" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Sports Team: </label>
					<br />
					<asp:textbox runat="server" ID="textbox7" class="text_input" placeholder="What is your favorite sports team, name any?" ></asp:textbox>
                    <asp:Button ID="Button7" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label25" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label26" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label27" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label28" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Activities: </label>
					<br />
					<asp:textbox ID="textbox8" runat="server" class="text_input" placeholder="Got any activites youl like to do?" ></asp:textbox>
                    <asp:Button ID="Button8" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label29" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label30" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label31" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label32" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
								<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> People Who Inpire you: </label>
					<br />
					<asp:textbox runat="server" ID="textbox9" class="text_input" placeholder="Those people that make you chase your dreams." ></asp:textbox>
                    <asp:Button ID="Button9" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label33" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label34" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label35" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label36" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Interests: </label>
					<br />
					<asp:textbox ID="textbox10" runat="server" class="text_input" placeholder="Got any interests in some thing?" ></asp:textbox>
                    <asp:Button ID="Button10" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label37" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label38" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label39" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label40" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Speacial to you: </label>
					<br />
					<asp:textbox ID="textbox11" runat="server" class="text_input" placeholder="What is special to you?" ></asp:textbox>
                    <asp:Button ID="Button11" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label41" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label42" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label43" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label id="Label44" runat="server" Text="NA"  class="Fontsys2"></asp:label>
						</div>
					</div>
					
				</div>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                Loading...
                </ProgressTemplate>
                </asp:UpdateProgress>
                <asp:button ID="Button13" runat="server" cssclass="btnsearch" style="margin-top: 5px; margin-right: 0; margin-left: 700px; margin-top: 60px; float:left;" text="SAVE" ></asp:button>
				<asp:button ID="Button1" runat="server" cssclass="btnsearch" style="margin-top: 5px; margin-right: 0; margin-right: 60px;  margin-top: 60px; float:right;" Text="NEXT" PostBackUrl="~/3 way/First time sign up/WebForm21.aspx"></asp:button>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
			</div>
            </ContentTemplate>
            </asp:updatepanel>
		</div>
	</body>
</asp:Content>
