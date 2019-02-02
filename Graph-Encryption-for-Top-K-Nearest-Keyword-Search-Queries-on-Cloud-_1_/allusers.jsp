 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All users List</title>
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
       
		<h2 ><em>All Users List </em></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
		 
		 

          <table width="632" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="86" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style9">Username</div></td>
              <td  width="88" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style9">Email</div></td>
              <td   width="54" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style9">status</div></td>
              <td  width="130" valign="baseline" style="color: #2c83b0;"><div align="center" class="style9">Secret Key</div></td>
              <td  width="69" valign="baseline" height="0" style="color: #2c83b0;"><div align="center" class="style9">View</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from user"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(4);
		s3=rs.getString(10);
		s4=rs.getString(11);
			%>
            <tr>
              <td  width="86" height="56" align="center" valign="middle" >&nbsp;&nbsp;
              <%out.println(s1);%></td>
              <td  width="88" height="56" align="center" valign="middle">&nbsp;&nbsp;
                <%out.println(s2);%></td>
              <%
						if(s3.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="54" height="56" align="center" valign="middle">&nbsp;&nbsp; <a href="conformuser.jsp?mid=<%=i%>">waiting&nbsp;</a></td>
              <%
						}
						else
						{
						%>
              <td  width="130" height="56" align="center" valign="middle">&nbsp;&nbsp;
              <%out.println(s3);%></td>
              <%
						}
						
						if(s4.equalsIgnoreCase("Generate Key"))
						{
						
						%>
              <td  width="69" height="56" align="center" valign="middle">&nbsp;&nbsp; <a href="generatekey.jsp?mid=<%=i%>">Generate Key&nbsp;</a></td>
              <%
						}
						else
						{
						%>
              <td  width="65" height="56" align="center" valign="middle">&nbsp;&nbsp;
              <%out.println(s4);%></td>
              <%
						}
						%>
              <td  width="120" valign="middle" height="56" style="color:#000000;"align="center"><a href="user_details.jsp?mid=<%=i%>">more info..&nbsp;</a></td>
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
            <p align="right"><a href="adminmain.jsp">Back</a></p>
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