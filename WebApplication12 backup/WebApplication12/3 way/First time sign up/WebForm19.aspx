<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site5.Master" CodeBehind="WebForm19.aspx.vb" Inherits="WebApplication12.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="theme2.css">
<body>
		<div id="contentbox">
			<div>
			<br />
			<br />
			<br />
			<label class="Fontsys1" id="title"> Basic Information:</label>
			<br />
			<label class="Fontsys2" id="discription"> This is just a place where you can put in your basic informatio
			n. Remember to keep this updated, for it is going to be your status update</label><br /> <label class="Fontsys2">.Have fun! And remember you don't have to fill out everything.</label>
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
			<div id="work_edu">
				<br />
				<label class="Fontsys4"> Education and Carrier:</label>
				<br />
				<br />
				<label class="Fontsys2"> Tell us about your school and work. </label>
				<br />
				<br />
				<asp:textbox ID="textbox1" runat="server" class="text_input" placeholder="What kind of work do you do?" type="textbox"> </asp:textbox>
				<br />
				<br />
				<asp:textbox ID="textbox2" runat="server" class="text_input" placeholder="What High School did you go to?" type="textbox"> </asp:textbox>
				<br />
				<br />
				<asp:textbox ID="textbox3" runat="server" class="text_input" placeholder="What College did you attend?" type="textbox"> </asp:textbox>
			</div>			
			<div id="work_edu1">
				<br />
				<label class="Fontsys4"> Living:</label>
				<br />
				<br />
				<label class="Fontsys2"> Where do ya live? </label>
				<br />
				<br />
				<asp:textbox ID="textbox4" runat="server" class="text_input" placeholder="Current City" type="textbox"> </asp:textbox>
				<br />
				<br />
				<asp:textbox ID="textbox5" runat="server" class="text_input" placeholder="Hometown" type="textbox"> </asp:textbox>
			</div>
			<div id="work_edu2">
				<br />
				<label class="Fontsys4"> Family:</label>
				<br />
				<br />
				<label class="Fontsys2"> Tell us about relatives. </label>
				<br />
				<br />
				<asp:textbox ID="textbox6" runat="server" class="text_input" placeholder="Yo Mom!" type="textbox"> </asp:textbox>
				<br />
				<br />
				<asp:textbox ID="textbox7" runat="server" class="text_input" placeholder="Yo Dad!" type="textbox"> </asp:textbox>
				<br />
				<br />
				<asp:textbox ID="textbox8" runat="server" class="text_input" placeholder="Yo Sibilings!" type="textbox"> </asp:textbox>
			</div>
			<div id="work_edu1">
				<br />
				<label class="Fontsys4"> Born On:</label>
				<br />
				<br />
				<label class="Fontsys2"> When and Where were you born. </label>
				<br />
				<br />
				<asp:textbox ID="textbox9" runat="server" class="text_input" placeholder="When were you born?" type="textbox"> </asp:textbox>
				<br />
				<br />
				<asp:textbox ID="textbox10" runat="server" class="text_input" placeholder="Where were you born?" type="textbox"> </asp:textbox>
			</div>
			<div id="work_edu2">
				<br />
				<label class="Fontsys4"> About You:</label>
				<br />
				<br />
				<label class="Fontsys2"> Write about your self homie. </label>
				<br />
				<br />
				<asp:textbox ID="textarea1" runat="server" cssclass="text_input" placeholder="Write right here." rows="10"></asp:textbox>
			</div>
			<div id="work_edu1">
			<br />
				<label class="Fontsys4"> Basic Stuff:</label>
				<br />
				<br />
				<label class="Fontsys2"> Just write down some stuff about yo self. </label>
				<br />
				<br />
				<asp:textbox ID="textbox11" runat="server" class="text_input" placeholder="Sex" type="textbox"> </asp:textbox>
				<br />
				<br />
				<asp:textbox ID="textbox12" runat="server" class="text_input" placeholder="Political Views" type="textbox"> </asp:textbox>
			</div>
			<div id="work_edu2">
			<br />
				<label class="Fontsys4"> Contacts:</label>
				<br />
				<br />
				<label class="Fontsys2"> Just write down some connections. </label>
				<br />
				<br />
				<asp:textbox ID="textbox13" runat="server" class="text_input" placeholder="Email" type="textbox"> </asp:textbox>
				<br />
				<br />
				<asp:textbox ID="textbox14" runat="server" class="text_input" placeholder="Phone(only if you want to)" type="textbox"> </asp:textbox>
			</div>
			<div id="work_edu1">
			<br />
				<label class="Fontsys4"> Quotes:</label>
				<br />
				<br />
				<label class="Fontsys2"> Your favourite quote: </label>
				<br />
				<br />
				<asp:textbox ID="textbox15" runat="server" class="text_input" placeholder="Quotes" type="textbox"> </asp:textbox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:button ID="Button1" runat="server" cssclass="btnsearch" style="margin-top: 5px; float: right;" text="SAVE"
                     onclick="Unnamed6_Click"></asp:button>
			</div>
                
			<asp:button runat="server" cssclass="button" Text="NEXT" PostBackUrl="~/3 way/First time sign up/WebForm20.aspx"></asp:button>
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
		</div>
	</body>
</asp:Content>
