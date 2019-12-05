<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="index.css">

<script src="https://kit.fontawesome.com/a440a73979.js" crossorigin="anonymous"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



<style>
html, body {
  height: 100%;
  margin: 0;
}

.full-height {
  height: 100%;
  background: yellow;
}
</style>

</head>
<body>
<%@page import="com.bookstore.BookDAO"%>  
	<%
		String id = request.getParameter("bookId");
		int bid = Integer.parseInt(id);
		out.println("Book id is : "+bid);
		
		
		String sessId = (String)session.getId();
		String name = (String)session.getAttribute("name");
		Integer userid =(Integer)session.getAttribute("id");	
		out.println("Welcome : "+name);
		out.println("Your id : "+userid);
		
		
		ResultSet res = BookDAO.getBookInfo(bid);
		
		
		int bookId =0;
		String bTitle = null;
		int bPrice = 0;
		String bAuthor = null;
		String bDesc = null;
		String path = null;
		while(res.next())
		{
			bookId = res.getInt(1);
			bTitle = res.getString(3);
			bPrice = res.getInt(4);
			bAuthor= res.getString(5);
			bDesc = res.getString(6);
			path = res.getString(7);
		}
		
		out.print("Selected book : "+bookId);
		
	%>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
					<a href="" class="navbar-brand"><img src="Resources/images/cashewLogo.JPG" height="40px"></a>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<h5 style=color:red>Welcome <%out.print(name); %> </h5>
						</li>
					
						<li class="nav-item active">
							<a class="nav-link" href="#">Home</a>
						</li>
						<li class="nav-item ">
							<a class="nav-link" href="#">Cart</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="javascript:go()">Logout</a>
						
						</li>
						
					</ul>
				</nav>	
<!-- <div class="container">

  <div class="row">
    <div class="col" style="background-color:lightblue ;height:100%" >
     	
    </div>
    <div class="col-md-auto">
      Variable width content
    </div>
    <div class="col col-lg-2">
      3 of 3
    </div>
  </div>
</div> -->

<div style="height: 100%; background-color: rgba(255,0,0,0.1);">

  <div class="h-75 d-inline-block" style="width:33.33% ; background-color: rgba(0,0,255,.1)">
  	<%
  		/* int bId = (Integer)session.getAttribute("bookid");
  		String bTitle = (String)session.getAttribute("bTitle");
  		int bPrice = (Integer)session.getAttribute("bPrice");
  		String bAuthor = (String)session.getAttribute("bAuthor");
  		String bDesc = (String)session.getAttribute("bDesc");
  		String path = (String)session.getAttribute("path");
  		out.print(bId); */
  		/* out.print(bTitle);
  		out.print(bPrice);
  		out.print(bAuthor);
  		out.print(bDesc);
  		out.print(path); */
  	%>
  	
  	
  	
	
  </div>
  <div class="h-100 d-inline-block" style="width: 39%; background-color: rgba(0,0,255,.1)">
  	Height 75%
  </div>
  <div class="h-100 d-inline-block" style="width: 26.67%; background-color: rgba(0,0,255,.1)">
  	Height 100%
  </div>
</div>
</body>
</html>