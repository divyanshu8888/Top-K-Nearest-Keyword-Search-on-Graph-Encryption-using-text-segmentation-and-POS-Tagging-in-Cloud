<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>

 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search results</title>
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
.style6 {
	color: #FF0000;
	font-style: italic;
}
.style7 {color: #FF0000}
.style8 {font-weight: bold}
.style9 {color: #FF0000; font-weight: bold; }
.style10 {font-weight: bold}
.style11 {color: #0000FF}
.style12 {color: #0000FF; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
	   <%String user=(String)application.getAttribute("user");%>
        <ul>
          <li><a href="usermain.jsp"><span>Home Page</span></a></li>
          <li  class="active"><a href="#"><span><%=user%></span></a></li>
          <li><a href="userlogin.jsp"><span>Logout</span></a></li>
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
       
		<h2 class="style6" > Top-K Nearest Keyword Searched Results<br />
		</h2>
		<p class="style6" >&nbsp;</p>
		<table width="562" border="0" align="left"  cellpadding="0" cellspacing="0" >
                <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
                <%@ page import="java.sql.*"%>
                <%@ include file="connect.jsp" %>
                <%@ page import="java.util.Date" %>
				 <%@ page import="java.util.Scanner" %>
		<%
	
		String keyword=request.getParameter("keyword");
		
		 String keys = "ef50a0ef2c3e3a5f";
    	
		       byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c1 = Cipher.getInstance("AES");
      			c1.init(Cipher.ENCRYPT_MODE, key);
      			String keyword1 = new String(Base64.encode(keyword.getBytes()));
		
		
		String s1,s2,i1,i2,result=null;;
		int cmplt_doc=0,cmplt_img=0,m=0,n=0,doc_count=0,img_count=0;
		try{
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						Date now = new Date();
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt=strDate+""+strTime;
						String time =strTime;
		
		
			String sql1="select count(*) from document";
			Statement st1=connection.createStatement();
			ResultSet rs1=st1.executeQuery(sql1);
			if(rs1.next())
			{
			doc_count=rs1.getInt(1);
			}
			String sql2="select * from document where (category like '%"+keyword+"%' || dname like '%"+keyword+"%' || duse like '%"+keyword+"%' || content like '%"+keyword1+"%' )";
			Statement st2=connection.createStatement();
			ResultSet rs2=st2.executeQuery(sql2);
			while(rs2.next())
			{
				int j=rs2.getInt(1);
				s2=rs2.getString(3);
				
				
				
				cmplt_doc=cmplt_doc+1;
				if(m==0)
				{
			%>
			<tr><td colspan="4"> <div align="center"><span class="style12">Search results of Documents</span></div></td>
			</tr>
			<%}%>
			<tr >
                  <td width="134" ><div class="style7" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="admin1"%>" style="width:100px; height:100px;"/>                 </div></td>
           
                  <td  width="155" valign="middle" height="30" style="color: #666666;">
				  <div align="left" class="style14 style7 style8 style10" style="margin-left:20px;"><span class="style9 style7">Document Name</span></div></td>
                 <td  width="203" valign="middle" height="30"><div align="left" class="style11" style="margin-left:20px;">
				  <a class="#" id="img1" href="viewdoc_details.jsp?id=<%=j%>" ><%out.print(s2);%></a> </div></td>
			</tr>
			<%m=2;
			String sql6="insert into search_history(username,keyword,type,result,dt) values('"+user+"','"+keyword+"','document','"+s2+"','"+dt+"')";
						Statement st6=connection.createStatement();
						st6.executeUpdate(sql6);
			
			}%>
	    </table></p><div class="clr"></div></div>
				  <p>&nbsp;</p>  <p class="infopost">
				   <table width="562" border="1.0" align="left"  cellpadding="0" cellspacing="0" >
				  
			<%
			String sql4="select count(*) from images";
			Statement st4=connection.createStatement();
			ResultSet rs4=st4.executeQuery(sql4);
			if(rs4.next())
			{
			img_count=rs4.getInt(1);
			}
			String sql3="select * from images where (imagename like '%"+keyword+"%' || description like '%"+keyword+"%' || uses like '%"+keyword+"%')";
			Statement st3=connection.createStatement();
			ResultSet rs3=st3.executeQuery(sql3);
			while(rs3.next())
			{
				int i=rs3.getInt(1);
				i1=rs3.getString(2);
				cmplt_img=cmplt_img+1;
				if(n==0){
			%>
			<tr><td colspan="4"> <div align="center"><span class="style12">Search results of images</span></div></td>
			</tr>
			<%}%>
			  <tr >
                  <td width="134"><div class="style7" style="margin:10px 13px 10px 13px;" >
                  <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&name=<%=i1%>&type=<%="admin"%>" style="width:100px; height:100px;"/>                 </div></td>
              
                <td  width="155" valign="middle" height="143" style="color: #666666;"><div align="left" class="style14 style7 style8 style10" style="margin-left:20px;">Name</div></td>
                  <td  width="203" valign="middle" height="143"><div align="left" class="style11" style="margin-left:20px;">
                    <a class="#" id="img1" href="viewimg_details.jsp?id=<%=i%>" ><%out.println(i1);%></a></div></td>
                </tr>
			
			
			<%
			n=2;
			String sql7="insert into search_history(username,keyword,type,result,dt) values('"+user+"','"+keyword+"','image','"+i1+"','"+dt+"')";
						Statement st7=connection.createStatement();
						st7.executeUpdate(sql7);
			}
			
						
				int incmplt_doc=doc_count-cmplt_doc;
				int incmplt_img=img_count-cmplt_img;
				String sql5="insert into search_result(username,keyword,complete_doc,incomplete_doc,total_doc,complete_img,incomplete_img,total_img,dt) values('"+user+"','"+keyword+"','"+cmplt_doc+"','"+incmplt_doc+"','"+doc_count+"','"+cmplt_img+"','"+incmplt_img+"','"+img_count+"','"+dt+"')";
						Statement st5=connection.createStatement();
						st5.executeUpdate(sql5);
						
						
			
			
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
      <div align="right"><a href="search.jsp">Back</a></div>
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