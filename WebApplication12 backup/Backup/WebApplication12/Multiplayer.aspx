<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/GAMER.Master" CodeBehind="Multiplayer.aspx.vb" Inherits="WebApplication12.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            color: #FFFFFF;
        }
        .style8
        {
            color: #FFFF66;
        }
        .style9
        {
            text-align: left;
            color: #FFFFFF;
        }
        #cool
        {
            width:590px;
            height:60px;
            border:solid 1px #c0c0c0;
            background-color:#e1e1e1;
            font-size:11px;
            font-family:verdana;
            color:#000;
            padding:5px;
	        border-radius: 4px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        &nbsp;<asp:Label ID="Label13" runat="server" forecolor="White" Text="Label" 
            CssClass="style7"></asp:Label>
        <span class="style7">&nbsp;&#39;s game choice:</span>&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" ForeColor="White" Visible="False" 
            Text="Call Of Duty Multiplayer" runat="server"></asp:HyperLink>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink4" ForeColor="White" Visible="False" 
            Text="Call Of Duty Survival" runat="server"></asp:HyperLink>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink5" ForeColor="White" Visible="False" 
            Text="Call Of Duty Zombie" runat="server"></asp:HyperLink>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink6" ForeColor="White" Visible="False" 
            Text="Halo Reach" runat="server"></asp:HyperLink>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink7" ForeColor="White" Visible="False" 
            Text="Battlefield 3" runat="server"></asp:HyperLink>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink8" ForeColor="White" Visible="False" 
            Text="Combat Arms" runat="server"></asp:HyperLink>
&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink9" ForeColor="White" Visible="False" 
            Text="Minecraft" runat="server"></asp:HyperLink>
    &nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink10" ForeColor="White" Visbile="False"
        text="Assasins Creed" runat="server" ></asp:HyperLink></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p style="text-align: center">
<div id="cool" style="float:inherit">
<asp:TextBox ID="boolcool" runat="server" TextMode="MultiLine" Rows="5" 
        Height="54px" />
</div>
    </p>
    <p style="text-align: left">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label14" ForeColor="White" runat="server" Text="Label" 
            CssClass="style7"></asp:Label>
        <span class="style7">&#39;s Call Of Duty Multiplayer Game Status:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    </p>
    <p class="style9">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <span class="style8">_______________________________________________________________________________________________________________________________________________________</span>_</p>
    <p>
        &nbsp;</p>
    <p style="text-align: center">
        Info:</p>
    <p>
        Kill Death ratio:
    <p>
        Higest amount of Kill in one game:<asp:TextBox ID="TextBox11" ForeColor="green" BackColor="Black" runat="server"></asp:TextBox></p>
    <p>
        Higest amount of Deaths in on game:<asp:TextBox ID="TextBox12" ForeColor="green" BackColor="Black" runat="server"></asp:TextBox></p>
    <p>
        hjigest Killstreak:<asp:TextBox ID="TextBox13" ForeColor="green" BackColor="Black" runat="server"></asp:TextBox></p>
    <p>
        Favorite Assult rifele:<asp:TextBox ID="TextBox14" ForeColor="green" BackColor="Black" runat="server"></asp:TextBox></p>
    <p>
        Favorite Su Machine Gun:<asp:TextBox ID="TextBox15" ForeColor="green" Backcolor="Black" runat="server"></asp:TextBox></p>
    <p>
        Forite Sniper:<asp:TextBox ID="TextBox16" ForeColor="green" BackColor="Black" runat="server"></asp:TextBox></p>
    <p>
        Favorite Light Maching Gun:<asp:TextBox ID="TextBox17" ForeColor="green" BackColor="Black" runat="server"></asp:TextBox></p>
    <p>
        Favorite&nbsp; Map:<asp:TextBox ID="TextBox18" ForeColor="green" BackColor="Black" runat="server"></asp:TextBox></p>
    <p>
        Favorite Music to Kisten to While Playing Video Games:<asp:TextBox ID="TextBox19"
            Forecolor="green" BackColor="Black" runat="server"></asp:TextBox></p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
