 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Similar Search User</title>
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
.style19 {color: #3333FF}
.style20 {color: #0066FF}
.style21 {
	color: #FF0000;
	font-style: italic;
	font-weight: bold;
}
.style23 {
	color: #FF0000;
	font-size: 16px;
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
       
		<h2 class="style21" >Search Results of Similar Group  </h2>
        </div>
        <blockquote>
                    <p>
                    </p>
                                </p>
                                <table width="426" border="2" align="left" >
                                  <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
                                  <%@ page import="java.sql.*"%>
                                  <%@ include file="connect.jsp" %>
                                  <%@ page import="java.util.Date" %>
                                  <%@ page import="java.util.Scanner" %>
                                  <%
		
		
		String s1,s2,i1,i2;
		int m=0,n=0;
		try{
			String sql="select distinct username,type from search_history";
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				String uname=rs.getString(1);
				String type=rs.getString(2);
				if(type.equalsIgnoreCase("document"))
				{
				
			%>
			 <tr>
				<td colspan="3"><div align="center"><span class="style23">Document Searched Result of </span><span class="style19"> <strong> <%=uname%></strong> </span></div></td>
			</tr>
              <%
			
			String sql1="select distinct(result) from search_history where username='"+uname+"' and type='"+type+"'";
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			while(rs1.next())
			{
			//String type=rs1.getString(1);
			String result=rs1.getString(1);
			
			String sql2="select id from document where dname='"+result+"'";
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(sql2);
			if(rs2.next())
			{
				int i=rs2.getInt(1);
			%>
             <tr>
				<td width="171"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&amp;type=<%="admin1"%>" align="middle"/></td>
                  <td  width="237" height="30" align="center" valign="middle"> <a href="doc_details.jsp?doc_id=<%=i%>"> <%out.print(result);%> </a></td>
				   </tr>
			<%
				}}}
				else if(type.equalsIgnoreCase("image")){
				%>
			 <tr>
				<td colspan="3"><div align="center"><span class="style23">Image Searched Result of </span><span class="style19"><strong><%=uname%> </strong> </span></div></td>
			</tr>
              <%}
			
			String sql1="select distinct(result) from search_history where username='"+uname+"' and type='"+type+"'";
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			while(rs1.next())
			{
			//String type=rs1.getString(1);
			String result=rs1.getString(1);
			
			String sql2="select id from images where imagename='"+result+"'";
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(sql2);
			if(rs2.next())
			{
				int j=rs2.getInt(1);
			%>
             <tr>
				<td width="171"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=j%>&amp;type=<%="admin"%>" align="middle"/></td>
                  <td  width="237" height="30" align="center" valign="middle"> <span class="style20"><a href="image_details.jsp?img_id=<%=j%>" ><%=result%> </a></span></td>
				   </tr>
				<%
				}}}
		 connection.close();
		   }
		  
		   catch(Exception e)
		    {
            out.println(e.getMessage());
          }%>
          </table>
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