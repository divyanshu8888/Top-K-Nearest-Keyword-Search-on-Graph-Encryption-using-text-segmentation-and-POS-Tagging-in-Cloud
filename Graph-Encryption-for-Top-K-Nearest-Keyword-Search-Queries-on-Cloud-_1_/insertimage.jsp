<title>Adding  product  posts</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


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
					String iname=null;
					String des=null;     
					String color=null;
					String use=null;
					
					
					FileInputStream fs=null;
					File file1 = null;	
					String type=request.getParameter("type");
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("iname"))
							{
								iname=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("des"))
							{
								des=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("use"))
							{
								use=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("color"))
							{
								color=multi.getParameter(paramname);
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
						//String as="0";
						//image = image.replace(".", "_b.");
						 
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt=strDate;
						String time =strTime;
         
    	
					 
					   PreparedStatement ps=connection.prepareStatement("insert into images(imagename,description,uses,color,dt,time,image) values(?,?,?,?,?,?,?)");
						ps.setString(1,iname);
						ps.setString(2,des);
						ps.setString(3,use);
						ps.setString(4,color);
						ps.setString(5,dt);
						ps.setString(6,time);
						ps.setBinaryStream(7, (InputStream)fs, (int)(file1.length()));	
					
						int x=ps.executeUpdate();
						if(x>0)
						{
							request.setAttribute("msg","successfull");
							out.print("Image Posted Successfully");
							
			%>
			<p><a href="addimages.jsp">Back</a>         <a href="clientmain.jsp">Home</a> </p>

			
			<%
					   }
			   
		}
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
