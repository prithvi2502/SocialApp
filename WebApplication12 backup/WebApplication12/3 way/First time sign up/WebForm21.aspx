<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site5.Master" CodeBehind="WebForm21.aspx.vb" Inherits="WebApplication12.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" type="text/css" href="theme4.css">
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
			on certain topics. Also all of this information can be updated any time so</label><br /> <label class="Fontsys2">Stress yourself and have fun!</label>
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
			<div>
				<label class="Fontsys4" style="font-size: 25px;" id="titles"> Gamer Card: </label>
				<br />
				<br />
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Video Game Music: </label>
					<br />
					<asp:textbox runat="server" id="textybox" class="text_input" placeholder="Any kind of music that gets you pumped up about gamming?" ></asp:textbox>
                    <asp:Button ID="Button2" CssClass="button2" text="Enter" runat="server"/>
					<div style="height: 130px;">
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label ID="label5" runat="server"  class="Fontsys2">NA</asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label ID="label6" runat="server"  class="Fontsys2">NA</asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label ID="label7" runat="server"  class="Fontsys2">NA</asp:label>
						</div>
						<div style="float: left;">
							<img style="margin-left: 20px; margin-top: 10px;" src="http://www.musical-clipart.com/clipartcontent/03symb/sy11.jpg" alt="music symbol" height="100" width="100">
							<br />
							<asp:label ID="label8" runat="server"  class="Fontsys2">NA</asp:label>
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
					<label class="Fontsys3" id="titles"> What do video games have: </label>
					<br />
					<asp:textbox ID="textbox1" runat="server"  class="text_input" style="width: 600px;" placeholder="Why do you like video games?" ></asp:textbox>
				</div>
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> First Game: </label>
					<br />
					<asp:textbox ID="textbox2"  runat="server"  class="text_input" style="width: 600px;" placeholder="Your first game ever." ></asp:textbox>
				</div>
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Game system: </label>
					<br />
					<asp:textbox ID="textbox3"  runat="server"  class="text_input" style="width: 600px;" placeholder="What game system do you affiliate yourself with?" ></asp:textbox>
				</div>
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> A childhood game: </label>
					<br />
					<asp:textbox ID="textbox4"  runat="server"  class="text_input" style="width: 600px;" placeholder="That game that you couldn't put down as a kid." ></asp:textbox>
				</div>
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Genre of Game: </label>
					<br />
					<asp:textbox ID="textbox5"  runat="server"  class="text_input" style="width: 600px;" placeholder="What genre of game do you like(Example: Fps)." ></asp:textbox>
				</div>
				<br />
				<hr />
				<br />
				<br />
                <div id="Box_holder">
					<label class="Fontsys3" id="titles"> The Game: </label>
					<br />
					<asp:textbox ID="textbox6"  runat="server"  class="text_input" style="width: 600px;" placeholder="What is your favorite game?" ></asp:textbox>
				</div>
				<br />
				<hr />
				<br />
				<br />
				<div id="Box_holder">
					<label class="Fontsys3" id="titles"> Note: </label>
					<br />
					<label class="Fontsys2"> You gamercard will also include your statistics, but currently you have none so don't </label><label class="Fontsys2"> worry about it you eventually will :) </label>
				</div>
                               <asp:button ID="Button13" runat="server" cssclass="btnsearch" style="margin-top: 5px; margin-right: 0; margin-left: 700px; margin-top: 60px; float:left;" text="SAVE" ></asp:button>
			<asp:label runat="server" ID="Asdf" style="display:none;"></asp:label>
				<asp:button ID="Button1" runat="server" cssclass="btnsearch" style="margin-top: 5px; margin-right: 0; margin-right: 60px;  margin-top: 60px; float:right;"  Text="NEXT" PostBackUrl="~/3 way/window_new_Style.aspx"></asp:button>
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				<br />
				
		</div>
	</body>
        </label>
        </label>

</asp:Content>
