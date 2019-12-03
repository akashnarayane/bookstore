<%@page import="com.bookstore.Users"%>
<%@page import="com.bookstore.BookDAO"%>
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
		
		Users usr = new Users();
		Integer id;
		int i = BookDAO.chkUser(uname, pass, usr);
		if(i==0)
		{
			session.setAttribute("id", usr.getId());
			session.setAttribute("name", usr.getName());
			response.sendRedirect("UserPage.jsp");
		}
		else
		{%>
			<jsp:forward page="index.jsp">
		    <jsp:param name="message" value="Invalid Username or password"/>
			</jsp:forward>
		<% 
		}
	%>
	
</body>
</html>