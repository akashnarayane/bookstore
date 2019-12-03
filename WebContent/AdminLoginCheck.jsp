<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>HELLO</h1>


	<% String uname= request.getParameter("username");%>
	<% String pass = request.getParameter("password");%>
	
	<%=uname %>
	<%=pass %>
	<%@page import="com.bookstore.BookDAO" %>
	<%
		int i = BookDAO.adminChk(uname,pass);
		if(i==0)
		{
			response.sendRedirect("AdminPage.jsp");
		}
		else
		{
			out.write("Username or password invalid");
		}
	%>
	
</body>
</html>