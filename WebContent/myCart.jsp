<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="index.css">

<script src="https://kit.fontawesome.com/a440a73979.js" crossorigin="anonymous"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
function go() {
	window.location.replace("UsrLogout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
	self.close()
	}
	</script>
</head>
<body>
<%@page import="com.bookstore.BookDAO" %>

	<%
		Integer id =(Integer)session.getAttribute("id");		
		String name = (String)session.getAttribute("name");	
	
		ArrayList<Integer> bid = new ArrayList<Integer>();
		ArrayList<Integer> qty = new ArrayList<Integer>();
		ArrayList<String> title = new ArrayList<String>();
		ArrayList<Integer> price = new ArrayList<Integer>();
		ArrayList<String> imgPath = new ArrayList<String>();
		
		ResultSet res = BookDAO.getCart(id);
		while(res.next())
		{
			bid.add(res.getInt(2));
			qty.add(res.getInt(3));
		}
		
		ResultSet bDetails = null;
			
		for(int i=0; i<bid.size(); i++)
		{
			bDetails = BookDAO.getBookInfo(bid.get(i));

			while(bDetails.next())
			{
				title.add(bDetails.getString(3)) ;
				price.add(bDetails.getInt(4));
				imgPath.add(bDetails.getString(7));		
			}			
		}
	%>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
					<a href="" class="navbar-brand"><img src="Resources/images/cashewLogo.JPG" height="40px"></a>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<h5 style=color:red>Welcome <%out.print(name); %> </h5>
						</li>
					
						<li class="nav-item active">
							<a class="nav-link" href="UserPage.jsp">Home</a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link" href="javascript:go()">Logout</a>
						
						</li>
						
					</ul>
				</nav>
				<br><br>
				<h2>Your Cart</h2>
				<br><br>
	<table border="1" width="100%">  
	<tr>
		<th>Image</th><th>Title</th><th>Price</th><th>Quantity</th>  
		<th>Total Price</th><th>Buy Now</th><th>Delete</th>
	</tr>	
		<%
			for(int i = 0; i<bid.size(); i++)
			{
				%>
				<tr>
					<td><img src="<%=imgPath.get(i)%>" height="100px" width="75px"></td>
					<td><%=title.get(i) %></td>
					<td><%=price.get(i) %></td>
					<td><%=qty.get(i) %></td>
					<td><%=qty.get(i)*price.get(i) %></td>
					<td><a href="#">Place Order</a></td>
					<td><a href="#">Delete Order</a></td>
				</tr>
							
				<%
			}
		%>
		
	 
</table>
</body>
</html>