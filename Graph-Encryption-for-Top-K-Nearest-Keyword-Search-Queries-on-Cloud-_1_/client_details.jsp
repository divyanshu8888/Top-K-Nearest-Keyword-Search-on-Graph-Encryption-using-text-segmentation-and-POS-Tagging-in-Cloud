 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Client details</title>
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
.style3 {color: #FF0000}
.style4 {color: #FF0000; font-weight: bold; }
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
       
		<h2 class="style4" ><em>Client Profile Details </em></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
		<table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
	
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String id = request.getParameter("mid");
					//	String user=(String )application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from client where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);

					%>
					<tr>
					<td width="230" rowspan="7"><div class="style7" style="margin:10px 13px 10px 13px;" >
				 <input  name="image" type="image" src="profile_pic1.jsp?id=<%=i%>&type=<%="client"%>" style="width:200px; height:200px;"/></div></td>
					</tr>
					
					<tr>
					  <td  width="127" valign="middle" height="50" style="color: #00CC99;"><div align="left" class="style8 style7 style14 style4 style3" style="margin-left:20px;"><strong>Name</strong></div></td>
	  <td  width="182" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="127" valign="middle" height="48" style="color: #00CC99;"><div align="left" class="style3 style8 style7 style14" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="182" valign="middle" height="48" ><div align="left" class="style11" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					<tr>
					  <td  width="127" valign="middle" height="51" style="color: #00CC99;"><div align="left" class="style3 style8 style7 style14" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="182" valign="middle" height="51"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					<tr>
<td  width="127" align="left" valign="middle" height="46" style="color: #00CC99;"><div align="left" class="style3 style8 style7 style14" style="margin-left:20px;"><strong>Date Of Birth</strong></div> </td>                    	
<td  width="182" align="left" valign="middle" height="46"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					<tr>
					  <td  width="127" align="left" valign="middle" height="59" style="color: #00CC99;"><div align="left" class="style3 style8 style7 style14" style="margin-left:20px;"><strong>Address</strong></div></td>
					  <td  width="182" align="left" valign="middle" height="59"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s5);%></div></td>
					</tr>
					
					 
				<%
					
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		  </table>
        
          <div class="post_content">
            <p align="right"><a href="allclients.jsp">Back</a></p>
          </div>
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
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
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