<title>Adding  product  posts</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>



<%
					ArrayList list = new ArrayList();
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery\\");
					String paramname=null;
					String file=null;
					String a=null,b=null,c=null,d=null,image=null;
					String ee[]=null;
					String checkBok=" ";
					int ff=0;
					String bin = "";
					String dc=null;
					String dname=null;     
					String duse=null;
					String textarea=null;
					
					
					FileInputStream fs=null;
					File file1 = null;	
					String type=request.getParameter("type");
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("dc"))
							{
								dc=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("dname"))
							{
								dname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("duse"))
							{
								duse=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("textarea"))
							{
								textarea=multi.getParameter(paramname);
							}
													
							if(paramname.equalsIgnoreCase("pic"))
							{
								image=multi.getParameter(paramname);
							}
						
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1)
								 {
									if (i != -1) 
									{
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										// sb1.append(",");
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
											//System.out.print(bin);
										}
									}	
								}
							}		
						}
						FileInputStream fs1 = null;
						//name=dirName+"\\Gallery\\"+image;
						int lyke=0;
						int rk=0;
						//String as="0";
						//image = image.replace(".", "_b.");
						 
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt=strDate;
						String time =strTime;
         String keys = "ef50a0ef2c3e3a5f";
    	
		       byte[] keyValue = keys.getBytes();
      			Key key = new SecretKeySpec(keyValue, "AES");
      			Cipher c1 = Cipher.getInstance("AES");
      			c1.init(Cipher.ENCRYPT_MODE, key);
      			String enc = new String(Base64.encode(textarea.getBytes()));
		
		
					 
					   PreparedStatement ps=connection.prepareStatement("insert into document(category,dname,duse,content,date,time,image,rank) values(?,?,?,?,?,?,?,?)");
						ps.setString(1,dc);
						ps.setString(2,dname);
						ps.setString(3,duse);
						ps.setString(4,enc);
						ps.setString(5,dt);
						ps.setString(6,time);
						ps.setBinaryStream(7, (InputStream)fs, (int)(file1.length()));	
						ps.setInt(8,rk);
						
					
						int x=ps.executeUpdate();
						if(x>0)
						{
							request.setAttribute("msg","successfull");
							out.print("Document uploaded Successfully");
							
			%>
			<p><a href="adddocs.jsp">Back</a>         <a href="clientmain.jsp">Home</a> </p>

			
			<%
					   }
			   
		}
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
