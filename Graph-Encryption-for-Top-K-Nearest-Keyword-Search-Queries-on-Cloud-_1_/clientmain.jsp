<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Client Main</title>
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
.style4 {color: #FF0000}
.style5 {font-weight: bold}
.style19 {	color: #FF0000;
	font-style: italic;
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
	   <%String Client=(String)application.getAttribute("client");%>
        <ul>
          <li><a href="clientmain.jsp"><span>Client Page::</span></a></li>
          <li  class="active"><a href="#"><span><%=Client%></span></a></li>
          <li><a href="clientlogin.jsp"><span>Logout</span></a></li>
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
       
		<h2 ><em><span class="style3">Welcome to::</span> <%=Client%></em></h2>
		<p >&nbsp;</p>
		<p align="center" class="infopost"><img src="images/Clouc.png" width="337" height="192" /></p>
          <p align="justify" class="style3">Driven by the growing security demands of data outsourcing applications in sustainable smart cities, encrypting clients’ data has been widely accepted by academia and industry. Data encryptions should be done at the client side before outsourcing, because clouds and edges are not trusted. Therefore, how to properly encrypt data in a way that the encrypted and remotely stored data can still be queried has become a challenging issue. Though keyword searches over encrypted textual data have been extensively studied, approaches for encrypting graph-structured data with support for answering graph queries are still lacking in the literature. In this paper, we specially investigate graph encryption method for an important graph query type, called top-k Nearest Keyword (kNK) searches. We design several indexes to store necessary information for answering queries and guarantee that private information about the graph such as vertex identifiers, keywords and edges are encrypted or excluded. Security and efficiency of our graph encryption scheme are demonstrated by theoretical proofs and experiments on real-world datasets, respectively.</p>
        </div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search Here" type="text" onblur="if(this.value=='') this.value='Search Here'" onfocus="if(this.value =='Search Here' ) this.value=''"/>
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="gadget">
          <h2 class="star style4"><strong>Client Main </strong></h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><span class="style4"><span class="style5"><a href="clientmain.jsp">Home</a></span></span></li>
            <li class="style3"><a href="adddocs.jsp">Add Documents</a></li>
            <li class="style3"><a href="addimages.jsp">Add Images</a></li>
            <li class="style3"><a href="alldocuments1.jsp">View All Documents </a></li>
            <li class="style3"><a href="allimages1.jsp">View All Images</a></li>
            <li class="style3"><a href="allusers_searchhistory.jsp">Users Search History</a></li>
            <li><span class="style3"><a href="adminlogin.jsp">Logout</a></span></li>
            <li></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
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