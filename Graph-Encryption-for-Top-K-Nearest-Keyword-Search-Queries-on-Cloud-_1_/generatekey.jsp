<%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
<%@ include file="connect.jsp" %>
<html><title>generate secret key</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		int mid = Integer.parseInt(request.getParameter("mid"));
   		try {
	   		KeyPairGenerator kg=KeyPairGenerator.getInstance("RSA");
			Cipher encode=Cipher.getInstance("RSA");
			KeyPair kp=kg.generateKeyPair();
			PublicKey pubKey=kp.getPublic();
			byte[] pub=pubKey.getEncoded();
			String s=pub.toString();
				
       		Statement st1 = connection.createStatement();
       		String query1 ="update user set sk='"+s+"' where id="+mid+" ";
	   		st1.executeUpdate (query1);
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		response.sendRedirect("allusers.jsp");  
	%>
</body>
</html>