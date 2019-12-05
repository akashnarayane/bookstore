<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.bookstore.BookDAO"%>  
	<%
		String id = request.getParameter("bookId");
		int bid = Integer.parseInt(id);
		out.print("Book id is : "+bid);
		
		
	%>
</body>
</html>