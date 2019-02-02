 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>similar searched data</title>
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
.style8 {color: #00CC66; font-size: 16px; }
.style10 {color: #0066CC}
.style11 {font-size: 14px; color: #0066CC; }
.style14 {font-size: 14px; color: #00CC99; }
.style18 {font-size: 14px; color: #0033FF; font-weight: bold; }
.style19 {
	color: #FF0000;
	font-style: italic;
}
.style21 {color: #FF0000; font-size: 16px; }
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
       
		<h2 class="style19" >Search Results of Similar Group  </h2>
          <p class="infopost">
          
          <table width="464" border="1.0" align="left"  cellpadding="0" cellspacing="0" >
                <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
                <%@ page import="java.sql.*"%>
                <%@ include file="connect.jsp" %>
                <%@ page import="java.util.Date" %>
				 <%@ page import="java.util.Scanner" %>
		<%
		
		
		String s1,s2,i1,i2;
		int m=0,n=0;
		try{
			
			String sql2="select keyword,result from search_history where type='document'";
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(sql2);
			while(rs2.next())
			{
			s1=rs2.getString(1);
			s2=rs2.getString(2);
			if(m==0){
			%>
			<tr><td colspan="3"> <div align="center"><span class="style21">Similar Documents for Searched Keyword</span></div></td>
			</tr>
			<tr>
			<td><div align="left" class="style14 style7 style8 style10" style="margin-left:20px;"><span class="style18">Keyword</span></div></td>
			<td><div align="left" class="style14 style7 style8 style10" style="margin-left:20px;"><span class="style18">Document Name</span></td>
			</tr>
			<%}%>
			<tr >
                 
           
                  <td  width="203" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
				  <%out.print(s1);%></div></td>
                 <td  width="203" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
				  <%out.print(s2);%> </div></td>
			</tr>
			<%m=2;
				}%>
		  </table></p><div class="clr"></div></div>
				  <p>&nbsp;</p>  <p class="infopost">
				   <table width="507" border="1.0" align="left"  cellpadding="0" cellspacing="0" >
				  
			<%
			String sql3="select keyword,result from search_history where type='image'";
			Statement st3=connection.createStatement();
			ResultSet rs3=st3.executeQuery(sql3);
			while(rs3.next())
			{
			i1=rs3.getString(1);
			i2=rs3.getString(2);
			
			if(n==0){
			%>
			<tr><td colspan="3"> <div align="center"><span class="style21">Similar Images for Searched Keyword</span></div></td></tr>
			<tr>
			<td><div align="left" class="style14 style7 style8 style10" style="margin-left:20px;"><span class="style18">Keyword</span></div></td>
			<td><div align="left" class="style14 style7 style8 style10" style="margin-left:20px;"><span class="style18">Document Name</span></td>
			</tr>
			<%}%>
			  <tr >
                 
              
                <td  width="203" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                    <%out.println(i1);%></div></td>
                  <td  width="203" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
                    <%out.println(i2);%></div></td>
                </tr>
			
			
			<%
			n=2;
			
			}
		
		 connection.close();
		   }
		  
		   catch(Exception e)
		    {
            out.println(e.getMessage());
          }%>
	    </table>
		
                  <blockquote>
                    <p>
                    </p>
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
          <div class="clr"></div>
          <ul class="ex_menu">
            <li></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
      <div align="right"><a href="adminmain.jsp">Back</a></div>
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