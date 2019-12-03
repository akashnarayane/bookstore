<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Store</title>
</head>
<body>
<%@page import="com.bookstore.BookDAO" %>
<%
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   // String filePath = "D:/img/";

	String filePath = "D:/img/";
   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File("c:\\temp"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      try{ 
         List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();
      
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )  {
                String fieldName = fi.getFieldName();
                String fileName = fi.getName();
                String format = "none";
               
                int index = fileName.lastIndexOf(".");
                if(index > 0)
                {
                    format = fileName.substring(index+1);
                    format = format.toLowerCase();
                }
                
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                file = new File( filePath + fileName) ;
                fi.write( file ) ;
                String imgPath = filePath + fileName;
                
              	int status = BookDAO.addImg(imgPath);
                if(status>0)
                {
                	out.println("Uploaded Filename: " + imgPath + "<br>");
                }
                else
                {
                	out.println("Failed To upload");
                } 
                
               	String path = BookDAO.getImg();
                out.print(path);
               
                out.print(" <img src=path height='250px' width='200px'>");      
                
            }
         }
       
      }catch(Exception ex) {
         System.out.println(ex);
      }
   }else{
      out.println("<p>No file uploaded</p>"); 
   }
%>
</body>
</html>