 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>keyword search results</title>
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
.style7 {font-size: 16px}
.style19 {
	color: #FF0000;
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
	   <%String admin=(String)application.getAttribute("admin");%>
        <ul>
          <li><a href="adminmain.jsp"><span>Home Page</span></a></li>
          <li  class="active"><a href="#"><span><%=admin%></span></a></li>
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
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
       
		<h2 class="style19" >  Graph Structure--- Keyword and Results </h2>
          <p class="infopost">
          
           <%@ include file="connect.jsp" %>
            <%
						int num=1;
			

		  try
		 {
			String sql="select distinct keyword from search_history";
			 Statement st=connection.createStatement();
		 	ResultSet rs=st.executeQuery(sql);			
			while(rs.next())
			{
			String keyword=rs.getString(1);
			%><p class="style12 style5"><%=num+". "+keyword%></p>
		
		<%
			
			
		 String sql2="select result,type from search_history where keyword='"+keyword+"'";		 		
		  Statement st2=connection.createStatement();
		 ResultSet rs2=st2.executeQuery(sql2);
		 while(rs2.next())
		 {
		  String result=rs2.getString(1);
		  String type=rs2.getString(2);
		 
		  out.print("<input type=\"radio\" name=\"key\" ");
		  if(type.equalsIgnoreCase("document")){
		
		 %>
		 <p class="style13"><a href="doc_details.jsp?name=<%=result%>"><span class="style15 style7"><%="  "+result%></span> </a></p>
     <%}
	 else{ %>
		 <p class="style13"><a href="image_details.jsp?name=<%=result%>"><span class="style15 style7"><%="  "+result%></span> </a></p>
     <%
	 }}
	 
		 num++;
	 }
         connection.close();
         }
         catch(Exception e)
         {
         out.println(e.getMessage());
         }
     %>
		  
          </p>
	    <div class="clr"></div></div>
				  <p>&nbsp;</p>  <p class="infopost">
	    <blockquote>
                    <div align="right"><a href="adminmain.jsp">Back</a></div>
                                </p>
        </blockquote>
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
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="userlogin.jsp">Logout</a></li>
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