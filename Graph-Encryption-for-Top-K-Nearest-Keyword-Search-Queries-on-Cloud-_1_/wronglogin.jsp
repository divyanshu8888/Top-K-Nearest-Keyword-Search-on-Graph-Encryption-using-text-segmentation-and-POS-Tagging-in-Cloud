<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>wrong login page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #3366FF;
	font-size: 26px;
}
.style2 {font-size: 26px}
.style3 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li></li>
          <li><a href="adminlogin.jsp"></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1 class="style1 style2">Graph Encryption for Top-K Nearest Keyword Search Queries on Cloud</h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="940" height="310" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="940" height="310" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          
           <h2 class="style3">Login Failed...!</h2>
          <p><table width=405 height="267" border=0 align="center" cellpadding=0 cellspacing=0 bgcolor=#FFFFFF>
<tr>
<td width="405" height="189" align=center><font class=sb4>Sorry.</font><BR>
  <BR>
<font class=sb3>
Your login failed.<BR>
<TABLE cellSpacing=0 cellPadding=0 border=0 height="7"><TR><TD height=7></TD></TR></TABLE>
This happens due to - Incorrect Username / Incorrect password<BR>
<TABLE cellSpacing=0 cellPadding=0 border=0 width="10"><TR>
  <TD height=9 width="10"></TD></TR></TABLE>
In case you have forgotten your password,<BR>
<TABLE cellSpacing=0 cellPadding=0 border=0><TR><TD height=9></TD></TR></TABLE>
click&nbsp; here to re enter correct&nbsp; username or password on homepage.
<BR><BR>
<%
String type=(String)application.getAttribute("type");
if(type.equalsIgnoreCase("user")){
%>
<a href="userlogin.jsp">Click here to go back</a>		<a href="index.html"><span>Home Page</span></a>
</BR>
<%}
else{
%>
<a href="adminlogin.jsp">Click here to go back</a><BR><a href="index.html"><span>Home Page</span></a>
<%}%>
</font></td>
</tr>
</table>
          </p>
          <div class="clr"></div>
          <div class="img"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
