<%@page import="com.bookstore.Book"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>

</head>
<body>
<%@page import="com.bookstore.BookDAO"%>  

<jsp:useBean id="b" class="com.bookstore.Book"></jsp:useBean>  
<jsp:setProperty property="*" name="b"/>  

	<%  
		Integer bid;
		Book bk = new Book();
		int i=BookDAO.addBook(b);  
		if(i>0)
		{
			session.setAttribute("bid", bk.getId());
	%>
	<jsp:forward page="ImgUpload.jsp">
	<jsp:param name="message" value="Book Addedd.."/>
	</jsp:forward>  
	<%
		}	
		else
		{
	%>
		<jsp:forward page="addindex.jsp">
		<jsp:param name="message" value="Book Not Addedd.."/>
		</jsp:forward>  
	<%
		}
	%>
</body>
</html>
