<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/3 way/Site4.Master" CodeBehind="Frienwind.aspx.vb" Inherits="WebApplication12.WebForm31" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    #small
    {
            text-align:left;
            width: 500px;
            margin: 0 auto;
    }
.menubar, .menubar ul {
	margin: 0;
	padding: 0;
	list-style: none;
}
.menubar:before,
.menubar:after {
	content: "";
	display: table;
}

.menubar:after {
	clear: both;
}

.menubar {
	zoom:1;
}
.menubar li {
	float: left;
	border-right: 1px solid #222;
	-webkit-box-shadow: 1px 0 0 #444;
	position: relative;
	margin-right: 8px;
}

.menubar a {
	float: left;
	padding: 12px 20px;
	color: #999;
	text-transform: uppercase;
	font: bold 12px Arial, Helvetica;
	text-decoration: none;
	text-shadow: 0 1px 0 #000;
}

.menubar li:hover > a {
	color: #fafafa;
}

*html .menubar li a:hover { /* IE6 only */
	color: #fafafa;
}
.menubar ul {
	margin: 20px 0 0 0;
	_margin: 0; /*IE6 only*/
	opacity: 0;
	visibility: hidden;
	position: absolute;
	top: 38px;
	left: 0;
	z-index: 1;    
	background: #444;	
	-webkit-background: -webkit-linear-gradient(#444, #111);
	box-shadow: 0 -1px 0 rgba(255,255,255,.3);	
	border-radius: 3px;
	-webkit-transition: all .2s ease-in-out;  
}

.menubar li:hover > ul {
	opacity: 1;
	visibility: visible;
	margin: 0;
}

.menubar ul ul {
	top: 0;
	left: 150px;
	margin: 0 0 0 20px;
	_margin: 0; /*IE6 only*/
	box-shadow: -1px 0 0 rgba(255,255,255,.3);		
}

.menubar ul li {
	float: none;
	display: block;
	border: 0;
	_line-height: 0; /*IE6 only*/
	box-shadow: 0 1px 0 #111, 0 2px 0 #666;
}

.menubar ul li:last-child {   
	box-shadow: none;    
}

.menubar ul a {    
	padding: 10px;
	width: 120px;
	_height: 10px; /*IE6 only*/
	display: block;
	white-space: nowrap;
	float: none;
	text-transform: none;
}

.menubar ul a:hover {
	background-color: #0186ba;
	-webkit-background-image: -webkit-linear-gradient(#04acec, #0186ba);
}.menubar ul li:first-child > a {
	border-radius: 3px 3px 0 0;
}

.menubar ul li:first-child > a:after {
	content: '';
	position: absolute;
	left: 40px;
	top: -6px;
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	border-bottom: 6px solid #444;
}

.menubar ul ul li:first-child a:after {
	left: -6px;
	top: 50%;
	margin-top: -6px;
	border-left: 0;	
	border-bottom: 6px solid transparent;
	border-top: 6px solid transparent;
	border-right: 6px solid #3b3b3b;
}

.menubar ul li:first-child a:hover:after {
	border-bottom-color: #04acec; 
}

.menubar ul ul li:first-child a:hover:after {
	border-right-color: #0299d3; 
	border-bottom-color: transparent; 	
}

.menubar ul li:last-child > a {
	border-radius: 0 0 3px 3px;
}
#writebox
{
	margin: 0 auto;
  width: 500px;
  height: 150px;
  background: rgb(0,183,234); /* Old browsers */
  background: -moz-linear-gradient(top, rgba(0,183,234,1) 0%, rgba(0,158,195,1) 100%); /* FF3.6+ */
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,183,234,1)), color-stop(100%,rgba(0,158,195,1))); /* Chrome,Safari4+ */
  background: -webkit-linear-gradient(top, rgba(0,183,234,1) 0%,rgba(0,158,195,1) 100%); /* Chrome10+,Safari5.1+ */
  background: -o-linear-gradient(top, rgba(0,183,234,1) 0%,rgba(0,158,195,1) 100%); /* Opera 11.10+ */
  background: -ms-linear-gradient(top, rgba(0,183,234,1) 0%,rgba(0,158,195,1) 100%); /* IE10+ */
  background: linear-gradient(to bottom, rgba(0,183,234,1) 0%,rgba(0,158,195,1) 100%); /* W3C */
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00b7ea', endColorstr='#009ec3',GradientType=0 ); /* IE6-9 */
}
.input
{
  font-family:'lucida grande',tahoma,verdana,arial,sans-serif;
  width: 490px;
  height: 110px; 
  padding: 6px 4px;
  border: 1px solid #E1E1E1;
}
@-webkit-keyframes blackPulse {
	from { background-color: black; -webkit-box-shadow: 0 0 15px #444; }
	50% { background-color: black; -webkit-box-shadow: 0 0 23px #111; }
	to { background-color: black; -webkit-box-shadow: 0 0 15px #444; }
	
}
#buttonholder
{
  height: 40px;
  width: 500px;
  background-image: -webkit-linear-gradient(#444, #111);
  -webkit-animation-name: blackPulse;
  -webkit-animation-duration: 2s;
  -webkit-animation-iteration-count: infinite;
}
@-webkit-keyframes greenPulse {
	/*from { background-color: orange; -webkit-box-shadow: 0 0 20px #f60; } 
	from { background-color: orange; -webkit-box-shadow: 0 0 33px orange; }
	to { background-color: orange; -webkit-box-shadow: 0 0 20px #f60; } */
	from { background-color: #d45500; -webkit-box-shadow: 0 0 20px #333; }
	50% { background-color: #ff5c00; -webkit-box-shadow: 0 0 38px #ff5c00; }
	to { background-color: #d45500; -webkit-box-shadow: 0 0 20px #333; } 
	/*from { background-color: #bc330d; -webkit-box-shadow: 0 0 20px #333; }
	50% { background-color: #e33100; -webkit-box-shadow: 0 0 38px #e33100; }
	to { background-color: #bc330d; -webkit-box-shadow: 0 0 20px #333; } */
}

.update
{
	margin-top: 5px;
	margin-right: 2px;
	-webkit-animation-name: greenPulse;
	-webkit-animation-duration: 2s; 
	-webkit-animation-iteration-count: 1; 
	
  float: right;
  border-color: orange;
  border-width: 1px;
  border-radius: 3px;
  width:100px;
  height:30px;
  cursor: pointer;
  background: rgb(255,197,120); /* Old browsers */
  background: -moz-linear-gradient(top, rgba(255,197,120,1) 0%, rgba(251,157,35,1) 100%); /* FF3.6+ */
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(255,197,120,1)), color-stop(100%,rgba(251,157,35,1))); /* Chrome,Safari4+ */
  background: -webkit-linear-gradient(top, rgba(255,197,120,1) 0%,rgba(251,157,35,1) 100%); /* Chrome10+,Safari5.1+ */
  background: -o-linear-gradient(top, rgba(255,197,120,1) 0%,rgba(251,157,35,1) 100%); /* Opera 11.10+ */
  background: -ms-linear-gradient(top, rgba(255,197,120,1) 0%,rgba(251,157,35,1) 100%); /* IE10+ */
  background: linear-gradient(to bottom, rgba(255,197,120,1) 0%,rgba(251,157,35,1) 100%); /* W3C */
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffc578', endColorstr='#fb9d23',GradientType=0 ); /* IE6-9 */
}
#update:hover
{
  background: rgb(251,157,35); /* Old browsers */
  background: -moz-linear-gradient(top,  rgba(251,157,35,1) 0%, rgba(255,197,120,1) 100%); /* FF3.6+ */
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(251,157,35,1)), color-stop(100%,rgba(255,197,120,1))); /* Chrome,Safari4+ */
  background: -webkit-linear-gradient(top,  rgba(251,157,35,1) 0%,rgba(255,197,120,1) 100%); /* Chrome10+,Safari5.1+ */
  background: -o-linear-gradient(top,  rgba(251,157,35,1) 0%,rgba(255,197,120,1) 100%); /* Opera 11.10+ */
  background: -ms-linear-gradient(top,  rgba(251,157,35,1) 0%,rgba(255,197,120,1) 100%); /* IE10+ */
  background: linear-gradient(to bottom,  rgba(251,157,35,1) 0%,rgba(255,197,120,1) 100%); /* W3C */
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fb9d23', endColorstr='#ffc578',GradientType=0 ); /* IE6-9 */
}
#update:active
{
  -webkit-animation-delay: 0s;
  -webkit-animation-duration: 5s;
  -webkit-animation-iteration-count: 2;
  -webkit-animation-name: greenpulse;
}
#show_holder
{

  height: auto;
  overflow: inherit;
  font-family: 'GeogrotesqueSemiBold', helvetica, arial;
  font-size: 14px;
  text-transform: uppercase;
  font-weight: bold;
  color:#F60;
  float:left;
}

#image
{
  float: left;
  width: 50px;
  height: 100px;
}
#name
{
  margin-left: 5px;
  float: left;
  width: 450;
  font-family: 'GeogrotesqueSemiBold', helvetica, arial;
  font-size: 14px;
  text-transform: uppercase;
  font-weight: bold;
  color:#F60;

}
#manasdf
{

  text-decoration:none;
 padding-bottom:2px;
 background-size: 100% 2px;
 -moz-background-size: 100% 2px;
 background-repeat: no-repeat;
 background-position: 0 90%;
 cursor: pointer;
 color: White;
}

#comment
{
  margin-left: 5px;
  float: left;
 
  color: #BDBDBD;
  font-family: 'GeogrotesqueMedium', helvetica, arial;
  font-size: 11px;
  font-weight: normal;
  text-transform: none;
}
#toolbox
{
	cursor: pointer;
	color: #4B8DB5;
  margin-left: 5px;
  float: left;
  width: 600px;
  text-transform: none;
  font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
}
#like:hover
{
	border-bottom:1px solid #4B8DB5;
}
#unlike:hover
{
	border-bottom:1px solid #4B8DB5;
}
#commentasdf:hover
{
	border-bottom:1px solid #4B8DB5;
}
.sexy_line{
    display:block;
    border:none;
    color:white;
    height:3px;
    width:505px;
    float: left;
    background: -webkit-gradient(radial, 50% 50%, 0, 50% 50%, 250, from(#BCBCBC), to(#000000));
}
#cool
{
  width: 505px;
  height: 3px;
}
#preview-card
{
    position:relative;
}
.name
{
    font-weight:bold;
    position:relative;
    z-index:100; /*greater than details, to still appear in card*/
}
.details
{
    background:#fff ;
    border:solid 1px #ddd;
    position:absolute ;
    width:300px;
    left:-10px;
    top:-10px;
    z-index:50; /*less than name*/
    padding:2em 10px 10px; /*leave enough padding on top for the name*/
    display:none;
}
.details img
{
    width:70px;
    float:right;
    margin-top:-1em;
}
@-webkit-keyframes bluePulse {
  from { -webkit-box-shadow: 0 0 5px #333; }
  50% { -webkit-box-shadow: 0 0 10px #2daebf; }
  to { -webkit-box-shadow: 0 0 5px #333; }
}
.user {
  position: relative;
  margin-left: 5px;
  display: inline-block;
  vertical-align: baseline;
  zoom: 1;
  *display: inline;
  *vertical-align: auto;
}
.user:hover ul {
  visibility: visible;
  opacity: 1;
  padding: 4px 0 6px;
}
.user ul {
-webkit-animation-name: bluePulse;
-webkit-animation-duration: 2s;
-webkit-animation-iteration-count: infinite;
border-radius: 3px;
	background: #0054a6; /* Old browsers */
  visibility: hidden;
  opacity: 0;
  position: absolute;
  bottom: 100%;
  left: 0;
  right: 0;
  border-color: transparent;
  width:300px;
  height:70px;
  -webkit-transition-property: opacity, padding, visibility;
  -moz-transition-property: opacity, padding, visibility;
  -ms-transition-property: opacity, padding, visibility;
  -o-transition-property: opacity, padding, visibility;
  transition-property: opacity, padding, visibility;
  -webkit-transition: 0.2s ease-out;
  -moz-transition: 0.2s ease-out;
  -ms-transition: 0.2s ease-out;
  -o-transition: 0.2s ease-out;
  transition: 0.2s ease-out;
  -webkit-box-shadow: 0px 3px 5px gray;
-moz-box-shadow:    0px 3px 5px gray;
box-shadow: 0px 3px 5px gray;

}
.user ul:before, .user ul:after, .user li:first-child:after {
  display: block;
  content: '';
  width: 0;
  height: 0;
  position: absolute;
  left: 15px;
  border: 7px inset transparent;
}
.user ul:before {
  border-top: 7px solid #555 transparent;
  bottom: -14px;
}
.user ul:after {
  border-top: 7px solid #0054a6;
  bottom: -12px;
}
.like
{
  position: relative;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
	color: #4B8DB5;
  outline: none;
  font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
}

.like span
{
font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
color: white;
font-weight: bold;
	text-align: center;
  visibility: hidden;
  position: absolute;
  bottom: 30px;
  left: 50%;
  z-index: 999;
  width: 30px;
  margin-left: -26px;
  padding: 10px;
  border: 2px solid #ccc;
background: #00bfff;
}

.like:hover
{
  border-bottom:1px solid #4B8DB5;
}

.like:hover span
{
  visibility: visible;
}

.like span:before,
.like span:after
{
  content: "";
  position: absolute;
  z-index: 1000;
  bottom: -8px;
  left: 50%;
  margin-left: -8px;
  border-top: 8px solid #ddd;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-bottom: 0;
}
.Fontsys1
{
  	font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	font-size: 30px;
	font-weight: bold;
	color: white;
	padding-top: 20px;
	text-transform: uppercase;
}
.like span:before
{
  border-top-color: #ccc;
  bottom: -8px;
}
.unlike
{
  position: relative;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
	color: #4B8DB5;
  outline: none;
  font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
}

.unlike span
{
font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
color: white;
	text-align: center;
	font-weight: bold;
  visibility: hidden;
  position: absolute;
  bottom: 30px;
  left: 50%;
  z-index: 999;
  width: 30px;
  margin-left: -26px;
  padding: 10px;
  border: 2px solid #ccc;
background: #00bfff;

}

.unlike:hover
{
  border-bottom:1px solid #4B8DB5;
}

.unlike:hover span
{
  visibility: visible;
}

.unlike span:before,
.unlike span:after
{
  content: "";
  position: absolute;
  z-index: 1000;
  bottom: -8px;
  left: 50%;
  margin-left: -8px;
  border-top: 8px solid #ddd;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-bottom: 0;
}

.unlike span:before
{
  border-top-color: #ccc;
  bottom: -8px;
}
.commentasdf {
  position: relative;
  display: inline-block;
  vertical-align: baseline;
  zoom: 1;
  *display: inline;
  *vertical-align: auto;
}
.commentasdf:hover ul {
  visibility: visible;
  opacity: .9;
  padding: 4px 0 6px;
}
.commentasdf ul {
opacity: .9;
-webkit-animation-name: bluePulse;
-webkit-animation-duration: 2s;
-webkit-animation-iteration-count: infinite;
	background: #45484d; /* Old browsers */
background: -moz-linear-gradient(top, #45484d 0%, #000000 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#45484d), color-stop(100%,#000000)); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(top, #45484d 0%,#000000 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(top, #45484d 0%,#000000 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(top, #45484d 0%,#000000 100%); /* IE10+ */
background: linear-gradient(to bottom, #45484d 0%,#000000 100%); /* W3C */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#45484d', endColorstr='#000000',GradientType=0 ); /* IE6-9 */
  visibility: hidden;
  opacity: 0;
  position: absolute;
  bottom: 100%;
  left: 0;
  right: 0;
  border-color: transparent;
  border-radius: 5px;
  width:300px;
  height:200px;
  -webkit-transition-property: opacity, padding, visibility;
  -moz-transition-property: opacity, padding, visibility;
  -ms-transition-property: opacity, padding, visibility;
  -o-transition-property: opacity, padding, visibility;
  transition-property: opacity, padding, visibility;
  -webkit-transition: 0.2s ease-out;
  -moz-transition: 0.2s ease-out;
  -ms-transition: 0.2s ease-out;
  -o-transition: 0.2s ease-out;
  transition: 0.2s ease-out;
  -webkit-box-shadow: 0px 3px 5px gray;
-moz-box-shadow:    0px 3px 5px gray;
box-shadow: 0px 3px 5px gray;

}
.commentasdf ul:before, .commentasdf ul:after, .commentasdf li:first-child:after {
  display: block;
  content: '';
  width: 0;
  height: 0;
  position: absolute;
  left: 15px;
  border: 7px inset transparent;
}
.commentasdf ul:before {
  border-top: 7px solid #555 transparent;
  bottom: -14px;
}
.commentasdf ul:after {
  border-top: 7px solid black;
  bottom: -12px;
}
#topcomment_container
{
	position: abosolute;
}
#likecommentinner
{
  position: relative;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
    background: transparent;
    border:transparent;
	color: white;
  outline: none;
  font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
}

#likecommentinner span
{
font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
color: white;
font-weight: bold;
	text-align: center;
  visibility: hidden;
  position: absolute;
  bottom: 30px;
  left: 50%;
  z-index: 999;
  width: 30px;
  margin-left: -26px;
  padding: 10px;
  border: 2px solid #ccc;
  opacity: .9;
 background-image: -webkit-linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
background-image: -moz-linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
background-image: -ms-linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
background-image: -o-linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
background-image: linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
  -moz-border-radius: 4px;
  border-radius: 4px;
  -moz-box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;
  -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;
  box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;
  text-shadow: 0 1px 0 rgba(255,255,255,.4);
}

#likecommentinner:hover
{
  border-bottom:1px solid #4B8DB5;
}

#likecommentinner:hover span
{
  visibility: visible;
}

#likecommentinner span:before,
#likecommentinner span:after
{
  content: "";
  position: absolute;
  z-index: 1000;
  bottom: -8px;
  left: 50%;
  margin-left: -8px;
  border-top: 8px solid #ddd;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-bottom: 0;
}

#likecommentinner span:before
{
  border-top-color: #ccc;
  bottom: -8px;
}
#unlikecommentinner
{
  position: relative;
  display: inline-block;
  text-decoration: none;
  cursor: pointer;
    background: transparent;
    border:transparent;
	color: white;
  outline: none;
  font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
}

#unlikecommentinner span
{
font: 14px/1.4 "myriad-pro-1","myriad-pro-2","Lucida Grande",Sans-Serif;
color: white;
font-weight: bold;
	text-align: center;
  visibility: hidden;
  position: absolute;
  bottom: 30px;
  left: 50%;
  z-index: 999;
  width: 30px;
  margin-left: -26px;
  padding: 10px;
  border: 2px solid #ccc;
  opacity: .9;
 background-image: -webkit-linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
background-image: -moz-linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
background-image: -ms-linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
background-image: -o-linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
background-image: linear-gradient(rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
  -moz-border-radius: 4px;
  border-radius: 4px;
  -moz-box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;
  -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;
  box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;
  text-shadow: 0 1px 0 rgba(255,255,255,.4);
}

#unlikecommentinner:hover
{
  border-bottom:1px solid #4B8DB5;
}

#unlikecommentinner:hover span
{
  visibility: visible;
}

#unlikecommentinner span:before,
#unlikecommentinner span:after
{
  content: "";
  position: absolute;
  z-index: 1000;
  bottom: -8px;
  left: 50%;
  margin-left: -8px;
  border-top: 8px solid #ddd;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-bottom: 0;
}

#unlikecommentinner span:before
{
  border-top-color: #ccc;
  bottom: -8px;
}
#commentholderinner
{
	margin-top: 20px;
	padding: 20px;
	background-color: trasparent;
}
#commentbox
{
	width: 260px;
	resize:none;
}
#buttonpost
{
	background: #7abcff; /* Old browsers */
	background: -moz-linear-gradient(top, #7abcff 0%, #60abf8 44%, #4096ee 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#7abcff), color-stop(44%,#60abf8), color-stop(100%,#4096ee)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #7abcff 0%,#60abf8 44%,#4096ee 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #7abcff 0%,#60abf8 44%,#4096ee 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, #7abcff 0%,#60abf8 44%,#4096ee 100%); /* IE10+ */
	background: linear-gradient(to bottom, #7abcff 0%,#60abf8 44%,#4096ee 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7abcff', endColorstr='#4096ee',GradientType=0 ); /* IE6-9 */
	width:260px;
	margin-top:5px;
	border-radius: 3px;
	height: 30px;
	cursor: pointer;
}
#buttonpost:hover
{
	background: #4096ee; /* Old browsers */
	background: -moz-linear-gradient(top, #4096ee 0%, #60abf8 56%, #7abcff 100%); /* FF3.6+ */
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#4096ee), color-stop(56%,#60abf8), color-stop(100%,#7abcff)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(top, #4096ee 0%,#60abf8 56%,#7abcff 100%); /* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(top, #4096ee 0%,#60abf8 56%,#7abcff 100%); /* Opera 11.10+ */
	background: -ms-linear-gradient(top, #4096ee 0%,#60abf8 56%,#7abcff 100%); /* IE10+ */
	background: linear-gradient(to bottom, #4096ee 0%,#60abf8 56%,#7abcff 100%); /* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4096ee', endColorstr='#7abcff',GradientType=0 ); /* IE6-9 */
}
#imagebox1234
{
	width: 50px;
	height: 50px;
	float: left;
   overflow:hidden;
}
#discription
{
	font-size: 9px;
	width: 250px;
    margin-right: -10px;
    
	float: right;
	height: auto;
}
#nameinner
{
  text-decoration:none;
 padding-bottom:2px;
 background-size: 100% 2px;
 -moz-background-size: 100% 2px;
 background-repeat: no-repeat;
 background-position: 0 90%;
 cursor: pointer;
 font-size: 12px;
 color: White;
 margin-left: 5px;
 }
 .titlesof
 {
	margin-left: 5px;
	color: grey;
	font: 10;
	font-weight: bold;
}
 .input
		{
		  font-family:'lucida grande',tahoma,verdana,arial,sans-serif;
		  width: 481px;
		  height: 110px; 
		  padding: 6px 4px;
		  border: 1px solid #E1E1E1;
		  outline: none;
			resize: none;
		}
		::-webkit-input-placeholder {
		   font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
		}

		:-moz-placeholder {  
		    font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
		}

		:-ms-input-placeholder {  
		    font-family: 'lucida grande',tahoma,verdana,arial,sans-serif;
		}
		#asdf
		{
			background-color: #F2F2F2;
			border-top: 1px solid #E6E6E6;
			height: 40px;
		}
		.btnsearch
	{
    cursor: pointer;
    color: white;
    border-radius: 2px;
    border: 1px solid #3079ED;
                background: #7abcff; /* Old browsers */
            background: -moz-linear-gradient(top, #7abcff 0%, #60abf8 44%, #4096ee 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#7abcff), color-stop(44%,#60abf8), color-stop(100%,#4096ee)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, #7abcff 0%,#60abf8 44%,#4096ee 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, #7abcff 0%,#60abf8 44%,#4096ee 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, #7abcff 0%,#60abf8 44%,#4096ee 100%); /* IE10+ */
            background: linear-gradient(to bottom, #7abcff 0%,#60abf8 44%,#4096ee 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7abcff', endColorstr='#4096ee',GradientType=0 ); /* IE6-9 */
   -webkit-box-shadow: 0 5px 5px rgba(0, 0, 0, .1);
   cursor: pointer; 


	}
	.btnsearch:hover
	{
		 background: #4096ee; /* Old browsers */
            background: -moz-linear-gradient(top, #4096ee 0%, #60abf8 56%, #7abcff 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#4096ee), color-stop(56%,#60abf8), color-stop(100%,#7abcff)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(top, #4096ee 0%,#60abf8 56%,#7abcff 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(top, #4096ee 0%,#60abf8 56%,#7abcff 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(top, #4096ee 0%,#60abf8 56%,#7abcff 100%); /* IE10+ */
            background: linear-gradient(to bottom, #4096ee 0%,#60abf8 56%,#7abcff 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#4096ee', endColorstr='#7abcff',GradientType=0 ); /* IE6-9 */

	}
	.btnsearch:active
	{
	                   -moz-box-shadow:    inset 0 0 10px #000000;
               -webkit-box-shadow: inset 0 0 10px #000000;
               box-shadow:         inset 0 0 10px #000000;
	}
	.btnaddphoto{
		width:100px;
		height: 40px;
		background-color: #F2F2F2;
		border: 1px solid #E6E6E6;
		font-family:'lucida grande',tahoma,verdana,arial,sans-serif;
		cursor: pointer;
		}
	
	.btnaddphoto:hover
	{
		background-color: #E9E9E9;
	}
    .loading {padding-left: 30px;}

.loading span {
  display:inline-block;
  margin:0px 1px;
  width:10px;
  height:10px;
  background-color:orange;
}

.loading span:nth-child(1) {
  -webkit-animation:loading 0.5s infinite alternate 0s;
  -moz-animation:loading 0.5s infinite alternate 0s;
  -ms-animation:loading 0.5s infinite alternate 0s;
  -o-animation:loading 0.5s infinite alternate 0s;
  animation:loading 0.5s infinite alternate 0s;
}

.loading span:nth-child(2) {
  -webkit-animation:loading 0.5s infinite alternate 0.2s;
  -moz-animation:loading 0.5s infinite alternate 0.2s;
  -ms-animation:loading 0.5s infinite alternate 0.2s;
  -o-animation:loading 0.5s infinite alternate 0.2s;
  animation:loading 0.5s infinite alternate 0.2s;
}

.loading span:nth-child(3) {
  -webkit-animation:loading 0.5s infinite alternate 0.4s;
  -moz-animation:loading 0.5s infinite alternate 0.4s;
  -ms-animation:loading 0.5s infinite alternate 0.4s;
  -o-animation:loading 0.5s infinite alternate 0.4s;
  animation:loading 0.5s infinite alternate 0.4s;
}

.loading span:nth-child(4) {
  -webkit-animation:loading 0.5s infinite alternate 0.6s;
  -moz-animation:loading 0.5s infinite alternate 0.6s;
  -ms-animation:loading 0.5s infinite alternate 0.6s;
  -o-animation:loading 0.5s infinite alternate 0.6s;
  animation:loading 0.5s infinite alternate 0.6s;
}

@-webkit-keyframes loading {
  0%   {opacity:0.1;}
  100% {opacity:1;  }
}

@-moz-keyframes loading {
  0%   {opacity:0.1;}
  100% {opacity:1;  }
}

@-ms-keyframes loading {
  0%   {opacity:0.1;}
  100% {opacity:1;  }
}

@-o-keyframes loading {
  0%   {opacity:0.1;}
  100% {opacity:1;  }
}

@keyframes loading {
  0%   {opacity:0.1;}
  100% {opacity:1;  }
}
.Fontsys2
{
  	font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	font-size: 11px;
	font-weight: bold;
	color: white;
	padding-top: 20px;
    padding-left: 10px;
	text-transform: uppercase;
    text-decoration: none;
}
.Fontsys3
{
  	font-family: 'GeogrotesqueSemiBold', helvetica, arial;
	font-size: 14px;
	font-weight: bold;
	color: #7d7d7d;
	padding-top: 20px;
    padding-left: 10px;
	text-transform: uppercase;
    text-decoration: none;
}
</style>
<script>
    var dropbox = document.getElementById("dropbox")

    // init event handlers
    dropbox.addEventListener("dragenter", dragEnter, false);
    dropbox.addEventListener("dragexit", dragExit, false);
    dropbox.addEventListener("dragover", dragOver, false);
    dropbox.addEventListener("drop", drop, false);
    function dragEnter(evt) {
        evt.stopPropagation();
        evt.preventDefault();
    }
    function noopHandler(evt) {
        evt.stopPropagation();
        evt.preventDefault();
    }
    evt.stopPropagation();
    evt.preventDefault();
 
    var files = evt.dataTransfer.files;
    var count = files.length;
 
    // Only call the handler if 1 or more files was dropped.
    if (count &gt; 0)
    handleFiles(files);

    var file = files[0];
 
    document.getElementById("asdfasdf").innerHTML = "Processing " + file.name;
 
    var reader = new FileReader();
 
    // init the reader event handlers
    reader.onload = handleReaderLoad;
 
    // begin the read operation
    reader.readAsDataURL(file);

</script>
</asp:Content >
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div style ="width: 234px; margin-top: 30px; height: auto; float: left;">
 
        <div style="  width: 220px; margin: 0 auto;">
                <div id="imagebox1234" style="margin-left: 10px; overflow:hidden;">
                    <asp:Image alt="This guy" style="width: 100%" ID="Image1" runat="server" />
                    
                </div>
            <br />
            <asp:HyperLink cssclass="Fontsys2" ID="HyperLink8" runat="server">HyperLink</asp:HyperLink> 
            <asp:HyperLink style="padding-left: 0px;" cssclass="Fontsys2" ID="HyperLink9" runat="server">HyperLink</asp:HyperLink>
            <asp:Label ID="Label4" runat="server" cssclass="Fontsys2" Text="Label"></asp:Label>
            <br />
            <br />
            <br />

            <div style="margin-left: 65px;">
                <asp:Label ID="Label1as" CssClass="Fontsys3" runat="server"> My Links: </asp:Label>
                <br />
                <br />
                <asp:hyperlink ID="Hyperlink1" cssclass="Fontsys2" runat="server" Text="GameShack"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink2" cssclass="Fontsys2" runat="server" Text="Friends"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink3" cssclass="Fontsys2" runat="server" Text="Window"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink4" cssclass="Fontsys2" runat="server" Text="About Me"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink5" cssclass="Fontsys2" runat="server" Text="PhotoBooth"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink6" cssclass="Fontsys2" runat="server" Text="ClanVid"></asp:hyperlink>
                <br />
                <asp:hyperlink ID="Hyperlink7" cssclass="Fontsys2" runat="server" Text="Public Place"></asp:hyperlink>
                <br />
            </div>
        </div>
</div>
<div style="width: 511px; border-left: 1px solid #f8512f;  padding-top: 20px;  margin-left: 250px; height:inherit;">

    
    <asp:Label ID="Label2" runat="server" style="margin-left: 20px;" CssClass="Fontsys1">Share to the world...</asp:Label>
    <asp:Label ID="Label5" runat="server" Text="Label" style="display:none;"></asp:Label>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

   <ContentTemplate>
       
    <br />

   
	  		<div style="margin: 0 auto; width: 490px;border: 1px solid gray; margin-left: 30px; ">
			 <textarea id="inputbox" class="input" runat="server" font="Ariel" placeholder="Share your day" rows="7"></textarea>
             <div runat="server" id="dropbox" style="height: 30px; background-color: ghostwhite; border-style:dashed; border-color: lightslategray; border-width: thin; color: GrayText; text-align:center;">
                <asp:FileUpload ID="FileUpload1" BackColor="Transparent" BorderColor="Transparent"  runat="server" BorderStyle="Solid" Width="268px" />
             </div>
                  
			<div id="asdf">
					<button id="asdfe" onserverclick="SetAsCompleteButton_Click" runat="server" class="btnaddphoto">
						<span style="background: red; float: left; width: 18px; height: 18px; color: white; font-weight: bold; border-radius: 9px; ">
							+
						</span>

						<span>
						 IMAGE
						</span>

					</button>
                						

						
					<asp:button id="update" runat="server" cssclass="btnsearch" style="width:120px;height:31px; margin-top: 5px; margin-right: 5px; float: right;" 
                            text="Upload"></asp:button >
			</div>
		</div>
                               <asp:UpdateProgress style=" " ID="UpdateProgress1" runat="server">
                            <ProgressTemplate>
                                <div class='loading'>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                            </ProgressTemplate>
                            </asp:UpdateProgress>
      <br />
      <br />
              <hr style="border: 0;
    height: 1px;
    background: #f8512f;" />
      <br />

      </ContentTemplate>
      </asp:UpdatePanel>

      <div id="posts" style="" >
          <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
          </asp:ScriptManagerProxy>

                      <asp:Timer ID="Timer1" runat="server" Interval="100000" OnTick="Timer1_Tick" >
            </asp:Timer>
 
          <asp:UpdatePanel ID="UpdatePanel2" runat="server" ChildrenAsTriggers="true" UpdateMode="Conditional">

          <Triggers>
          <asp:AsyncPostBackTrigger ControlID="Timer1" 
        EventName="Tick" />
            
    </Triggers>
          <ContentTemplate>
          <asp:Repeater ID="Repeater1" onitemcommand="Repeater1_ItemCommand" runat="server"   >
          
            <ItemTemplate>
                
                <div class="show_holder1" style="padding-left: 20px; width: 500px; clear: both; height: inherit; overflow: hidden;
height: 1%;">
            <div id="show_holder" style=" clear:both;  width: 480px; overflow: hidden;
height: 1%;">
          <div style="	width: 50px;
	height: 50px;
	float: left;
   overflow:hidden;" >
              <img src="<%#Eval("hometown")%>" style="width: 100%"  alt="This guy"  />
          
          </div>
                <div class="user" style="margin-left: 30px;">
                    
                <a id="manasdf"  href="<%#"WebForm24.aspx?id=" + Eval("email")%>"> <%#Eval("fname")%> <%#Eval("Lname")%></a>
                    <asp:Label ID="Label3" runat="server" visible="false"> <%#Eval("email")%></asp:Label>
                        <ul id="coolasdfasdf" style="">
                    <div>
                       <div id="imagebox1234" style="margin-left: 10px; margin-top: 10px;">
                            <img src="<%#Eval("hometown")%>" style="width: 100%"  alt="This guy"  />
                       </div> 
                       <div id="discription" >
                           <br />
                           
                            <label id="nameinner"> <%#Eval("fname")%> <%#Eval("Lname")%></label>
                            <br />
                            <br />
                            <label class="titlesof"> Living: </label><%#Eval("favgame")%><br />
                            
                       </div>
                    </div>
                  </ul>
                </div>

          <br />
          <br />

          <div id="comment" style="margin-left: 30px; width: 400px;">
               <%#Eval("c1")%><br />
               <%#Eval("datemonth")%>/<%#Eval("dateday")%>/<%#Eval("dateyear")%></div>

          <br />
          <br />


          <div id="toolbox" style="margin-left: 80px; width: 600px;">
              
               <asp:linkbutton ID="upbutton" ClientIDMode="AutoID" UseSubmitBehavior="false" CommandName="Button1" CommandArgument='<%#Eval("id")%>'   runat="server" cssclass="like"   herf="#">Thumbs Up
			   <span>
				<%#Eval("thumbssup")%>
			   </span>
			   </asp:linkbutton> |
			   <asp:hyperlink ID="downbutton" NavigateUrl='<%#"WebForm33.aspx?id=" + Eval("id").ToString + "&email=" + email1.Text%>' runat="server" cssclass="unlike"  herf="#"> Thumbs Down
			   <span>
				<%#Eval("thumbsdown")%>
			   </span>
			   </asp:hyperlink> |
			   <asp:hyperlink ID="Hyperlink10" runat="server" class="commentasdf"  herf="#"> Comment
				<ul>
					<div id="topcomment_container">
						<div id="imageholder" style="height: 50px; width:50px; float: left; margin-left: 5px;">
							 <img src="<%#Eval("hometown")%>" style="width: 100%"  alt="This guy"  />
						</div>
						<div id="namecame" style="float:left; margin-left: 5px;font-family: 'GeogrotesqueSemiBold', helvetica, arial; font-size: 14px; text-transform: uppercase; font-weight: bold; color:white;">
							
						</div>
						 <div id="comment1" style=" margin-left: 5px; float: left; color: #BDBDBD; font-family: 'GeogrotesqueMedium', helvetica, arial; font-size: 11px; font-weight: normal; text-transform: none;">
							   What is up
						  </div>
						  <br />
						<div id="dateandlikeandunlike" style="margin-left: 5px; float: left; color: #BDBDBD; font-family: 'GeogrotesqueMedium', helvetica, arial; font-size: 11px; font-weight: normal; text-transform: none;">
							<label> 10/12/12 </label>
						</div>
						<div>
              <br />
                  <button id="likecommentinner">Like
                      <span>
                          55
                      </span>
                  </button> |
                  <button id="unlikecommentinner"> Unlike
                      <span>
                          0
                      </span>
                  </button>
                <br />
                <br />
                <div id="commentholderinner">
                <textarea id="commentbox" placeholder="Comment Here!" rows="2" type="textbox"></textarea>
                <button id="buttonpost" type="button">Comment</div>
                </div>
						</div>
					</div>
				</ul>
			   </asp:hyperlink>
                <asp:Repeater ID="Repeater2asdfqwer"   runat="server">
                    <ItemTemplate>
                    <div style="background-color: #00bcf2; width: 400px; margin-left: 80px; background-color: #f1f2f6;
                    margin-top: 1px;
                    padding: 4px;">
			                    <div style="font-size: 11px; width: 360px; float: right;">
			
			                    <label style="color: #3b5998;"></label>
			                    <label style="color: black;"><%#Eval("fname")%></label>
		                    </div>

		                    <div style="width:  32px; height: 32px; ">
			                    <img id="coolness" src="https://profile-a.xx.fbcdn.net/hprofile-snc6/261173_297955436961589_160931017_q.jpg" style="height: 100%;"></img>
		                    </div>
	                    </div>
                    </ItemTemplate>
                </asp:Repeater>
                	                    
                       <div style="background-color: #00bcf2; width: 400px; margin-left: 80px;  background-color: #f1f2f6;
                    margin-top: 1px;
                    padding: 4px;">
			                    <div style="font-size: 11px; width: 360px; float: right;">
			
			                    <textarea rows="1" class="input" placeholder="Share your comment..." style="width: 200px; height: 17px;"></textarea><button id="Button1" runat="server"></button>
		                    </div>

		                    <div style="width:  32px; height: 32px; ">
			                    <img id="Img1" src="https://profile-a.xx.fbcdn.net/hprofile-snc6/261173_297955436961589_160931017_q.jpg" style="height: 100%;"></img>
		                    </div>
	                    </div>

          </div>
</div>
       
       <br />
    
       <br />
<br />
<br />

<br />
   <hr style="   border: 0;
    height: 1px;
    background: #f8512f;" />

       <br />
                
            </ItemTemplate>

          </asp:Repeater>
                 
          
                      </ContentTemplate> 
       </asp:UpdatePanel> 
      </div>
      
</div>
    <asp:label runat="server" ID="Label1" Visible="false"></asp:label>
<asp:Label ID="Label11" runat="server" Text="Label" style="display:none;"  ></asp:Label>
    <asp:Label ID="Label21" runat="server" Text="Label" style="display:none;"></asp:Label>

<asp:Label ID="Label31" runat="server"  Text="Label" style="display:none;"></asp:Label>
<asp:Label ID="Label6" runat="server" Text="Label" style="display:none;"></asp:Label>
<asp:label ID="email1" runat="server" style="display:none;"></asp:label>
<asp:label ID="eamil12" runat="server" style="display:none;"></asp:label>
<asp:Label ID="Label2asdf" runat="server" Text="Label" Visible="False"></asp:Label>
</asp:Content>