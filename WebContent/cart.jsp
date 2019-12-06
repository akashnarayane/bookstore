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
	Integer id =(Integer)session.getAttribute("id");
	String bid =(String)session.getAttribute("bookid");
	String qty = (String)request.getParameter("qty");
	int bookid = Integer.parseInt(bid);
	int bQty = Integer.parseInt(qty);
	
	 int i = BookDAO.addToCart(id, bookid, bQty);
	 if(i>0)
	 {
		 %>
		 <h3>Product added to cart</h3>
		 	<jsp:forward page="UserPage.jsp">
		    <jsp:param name="message" value="Product added to cart, Continue Shopping"/>
			</jsp:forward>
		 <%
		 
	 }
	 else
	 {
		 out.print("Please try Sometime");
	 }
%>
	
		
		 
		 
</body>
</html>