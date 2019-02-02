<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Documents</title>
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
	font-style: italic;
}
.style6 {color: #FF0000; font-weight: bold; }
-->
</style>
<script type='text/javascript'>
function loadFileAsText()
{
	var fileToLoad = document.getElementById("file").files[0];

	var fileReader = new FileReader();
	fileReader.onload = function(fileLoadedEvent) 
	{
		var textFromFileLoaded = fileLoadedEvent.target.result;
		document.getElementById("textarea").value = textFromFileLoaded;
	};
	fileReader.readAsText(fileToLoad, "UTF-8");
}
</script>
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
       
		<h2 class="style3" >Add Document Details </h2>
        
          <form action="adddocs1.jsp" method="post" name="form1">
              
			      <table width="633" height="288">
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style6">Category </span></td>
                      <td width="437"><input id="tname" name="dc" type="text" /></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style6">Select Document </span></td>
                      <td><input name="file" type="file" id="file"  onchange="loadFileAsText()" size="29"></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style6">Document Name </span></td>
                      <td><input id="duse" name="dname" type="text" /></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style6">Document Use </span></td>
                      <td><input id="dname" name="duse" type="text" /></td>
                    </tr>
                    
                    <tr>
                      <td width="184" height="44" align="left" valign="middle" bgcolor="#FFFF00"><span class="style6">Description</span></td>
                      <td><label>
                          <textarea name="textarea" id="textarea" cols="50" rows="20"></textarea>
                      </label></td>
                    </tr>
                    <tr>
                      <td height="44" align="left" valign="middle" bgcolor="#FFFF00"><p class="style6">&nbsp;
                        </p>
                        <p class="style6">&nbsp;</p></td>
                      <td align="center" valign="middle"><div align="right">
                        <p>&nbsp;</p>
                        <p align="left"><a href="adminmain.jsp"></a>
                          <input name="submit" type="submit" value="Encrypt and Upload" />
                        </p>
                      </div></td>
                    </tr>
            </table>
		  </form>

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
            <li><a href="clientmain.jsp">Home</a></li>
            <li><a href="clientlogin.jsp">Logout</a></li>
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