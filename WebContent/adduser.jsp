
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.bookstore.BookDAO" %>
<jsp:useBean id="u" class="com.bookstore.Users"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>

<%
	
%>

<% 
 int i = BookDAO.addUsers(u);
	if(i>0){  
	response.sendRedirect("RegSuccess.jsp");  
	}else{  
		out.print("Sorry, Unable to register. Please try again");  
	}
%>

</body>
</html>