<%@page import="com.bookstore.Book"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.bookstore.Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="index.css">

<script src="https://kit.fontawesome.com/a440a73979.js" crossorigin="anonymous"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%
	String sId = (String)session.getAttribute("name");
	   if(sId == null)
	   {
	      response.sendRedirect("index.jsp");
	   }
%>
<meta charset="ISO-8859-1">
<title>BookStore</title>
</head>
<body >

	<%@page import="java.util.*" %>
	<script>
	
	/* ******************************************************************************** */
	
	jQuery(function ($) {

    $(".sidebar-dropdown > a").click(function() {
  $(".sidebar-submenu").slideUp(200);
  if (
    $(this)
      .parent()
      .hasClass("active")
  ) {
    $(".sidebar-dropdown").removeClass("active");
    $(this)
      .parent()
      .removeClass("active");
  } else {
    $(".sidebar-dropdown").removeClass("active");
    $(this)
      .next(".sidebar-submenu")
      .slideDown(200);
    $(this)
      .parent()
      .addClass("active");
  }
});

$("#close-sidebar").click(function() {
  $(".page-wrapper").removeClass("toggled");
});
$("#show-sidebar").click(function() {
  $(".page-wrapper").addClass("toggled");
});

});
	
	/* ******************************************************************************** */
	
	function go() {
	window.location.replace("UsrLogout.jsp",'window','toolbar=1,location=1,directories=1,status=1,menubar=1,scrollbars=1,resizable=1');
	self.close()
	}
	</script>
	<%
	String sessId = (String)session.getId();
	String name = (String)session.getAttribute("name");
	Integer id =(Integer)session.getAttribute("id");
	%>
<div class="page-wrapper chiller-theme toggled">	
 <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
  </a>
<nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
      <div class="sidebar-brand">
        <a href="#">pro sidebar</a>
        <div id="close-sidebar">
          <i class="fas fa-times"></i>
        </div>
      </div>
      <div class="sidebar-header">
        <div class="user-pic">
          <img class="img-responsive img-rounded" src="https://raw.githubusercontent.com/azouaoui-med/pro-sidebar-template/gh-pages/src/img/user.jpg"
            alt="User picture">
        </div>
        <div class="user-info">
          <span class="user-name">
            <strong><%=name %></strong>
          </span>
          <span class="user-role">User</span>
          <span class="user-status">
            <i class="fa fa-circle"></i>
            <span>Online</span>
          </span>
        </div>
      </div>
      <!-- sidebar-header  -->
      <div class="sidebar-search">
        <div>
          <div class="input-group">
            <input type="text" class="form-control search-menu" placeholder="Search...">
            <div class="input-group-append">
              <span class="input-group-text">
                <i class="fa fa-search" aria-hidden="true"></i>
              </span>
            </div>
          </div>
        </div>
      </div>
      <!-- sidebar-search  -->
      <div class="sidebar-menu">
        <ul>
          <li class="header-menu">
            <span>General</span>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-tachometer-alt"></i>
              <span>Dashboard</span>
              <span class="badge badge-pill badge-warning">New</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">Dashboard 1
                    <span class="badge badge-pill badge-success">Pro</span>
                  </a>
                </li>
                <li>
                  <a href="#">Dashboard 2</a>
                </li>
                <li>
                  <a href="#">Dashboard 3</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-shopping-cart"></i>
              <span>E-commerce</span>
              <span class="badge badge-pill badge-danger">3</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">Products

                  </a>
                </li>
                <li>
                  <a href="#">Orders</a>
                </li>
                <li>
                  <a href="#">Credit cart</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="far fa-gem"></i>
              <span>Components</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">General</a>
                </li>
                <li>
                  <a href="#">Panels</a>
                </li>
                <li>
                  <a href="#">Tables</a>
                </li>
                <li>
                  <a href="#">Icons</a>
                </li>
                <li>
                  <a href="#">Forms</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-chart-line"></i>
              <span>Charts</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">Pie chart</a>
                </li>
                <li>
                  <a href="#">Line chart</a>
                </li>
                <li>
                  <a href="#">Bar chart</a>
                </li>
                <li>
                  <a href="#">Histogram</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="sidebar-dropdown">
            <a href="#">
              <i class="fa fa-globe"></i>
              <span>Maps</span>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#">Google maps</a>
                </li>
                <li>
                  <a href="#">Open street map</a>
                </li>
              </ul>
            </div>
          </li>
          <li class="header-menu">
            <span>Extra</span>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-book"></i>
              <span>Documentation</span>
              <span class="badge badge-pill badge-primary">Beta</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-calendar"></i>
              <span>Calendar</span>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-folder"></i>
              <span>Examples</span>
            </a>
          </li>
        </ul>
      </div>
      <!-- sidebar-menu  -->
    </div>
    <!-- sidebar-content  -->
    <div class="sidebar-footer">
      <a href="#">
        <i class="fa fa-bell"></i>
        <span class="badge badge-pill badge-warning notification">3</span>
      </a>
      <a href="#">
        <i class="fa fa-envelope"></i>
        <span class="badge badge-pill badge-success notification">7</span>
      </a>
      <a href="#">
        <i class="fa fa-cog"></i>
        <span class="badge-sonar"></span>
      </a>
      <a href="#">
        <i class="fa fa-power-off"></i>
      </a>
    </div>
  </nav>


<main class="page-content">
    <div class="container-fluid">
<!-- --------------------------------------------------------------------------------------- -->
		
		<%
			BookDAO.tempTable(id);
		
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
						<li class="nav-item ">
							<a class="nav-link" href="myCart.jsp">Cart</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="javascript:go()">Logout</a>
						
						</li>
						
					</ul>
				</nav>	
				
				 <span style="color:red"><%=request.getParameter("message") %></span> 
<section id="Books" class="pb-5">
	<div class="container">
		<h5 class="section-title h1">Books</h5>
			<div class="row">
			<!-- **************** -->
			
			<%@page import="com.bookstore.BookDAO"%> 
			
			<%
				
				ArrayList<Integer> bid = new ArrayList<Integer>();
				ArrayList<String> title = new ArrayList<String>();
				ArrayList<Integer> price = new ArrayList<Integer>();
				ArrayList<String> author = new ArrayList<String>();
				ArrayList<String> desc = new ArrayList<String>();
				ArrayList<String> imgPath = new ArrayList<String>();
				
				ResultSet booklist = BookDAO.getBooks();
				
				while(booklist.next())
				{
					bid.add(booklist.getInt(1));
					title.add(booklist.getString(3));
					price.add(booklist.getInt(4));
					author.add(booklist.getString(5));
					desc.add(booklist.getString(6));
					imgPath.add(booklist.getString(7));	
				}
				int[] bookId = new int[bid.size()];
				String[] bTitle = new String[title.size()];
				int[] bPrice = new int[price.size()];
				String[] bAuthor= new String[author.size()];
				String[] bDesc = new String[desc.size()];
				String[] path = new String[imgPath.size()];
				
				
				for(int j=0; j<imgPath.size(); j++)
				{
					bookId[j] = bid.get(j);
					bTitle[j] = title.get(j);
					bPrice[j] = price.get(j);
					bAuthor[j] = author.get(j);
					bDesc[j] = desc.get(j);
					path[j] = imgPath.get(j);
					
				}	
				

				
			%>
			<br>
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[0]%>" >
                                    <h4 class="card-title"><%=bTitle[0]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[0] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                    
                                    <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[0]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[0] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[1]%>" >
                                    <h4 class="card-title"><%=bTitle[1]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[1] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[1]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[1] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				
				
				<!-- ***************************** -->
				
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[2]%>" >
                                    <h4 class="card-title"><%=bTitle[2]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[2] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[2]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[2] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				
				
			
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[3]%>" >
                                    <h4 class="card-title"><%=bTitle[3]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[3] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[3]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[3] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[4]%>" >
                                    <h4 class="card-title"><%=bTitle[4]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[4] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[4]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[4] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[5]%>" >
                                    <h4 class="card-title"><%=bTitle[5]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[5] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[5]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[5] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[6]%>" >
                                    <h4 class="card-title"><%=bTitle[6]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[6] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[6]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[6] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[7]%>" >
                                    <h4 class="card-title"><%=bTitle[7]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[7] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[7]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[7] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[8]%>" >
                                    <h4 class="card-title"><%=bTitle[8]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[8] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[8]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[8] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[9]%>" >
                                    <h4 class="card-title"><%=bTitle[9]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[9] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[9]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[9] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[10]%>" >
                                    <h4 class="card-title"><%=bTitle[10]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[10] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[10]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[10] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
				
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="image-flip" ontouchstart="this.classList.toggle('hover');">
						<div class="mainflip">
						  <div class="frontside">
                            <div class="card">
                                <div class="card-body text-center">
                                    <img src="<%=path[11]%>" >
                                    <h4 class="card-title"><%=bTitle[11]%></h4>
                                    <p class="card-text">Author : <%=bAuthor[11] %></p>
                         
                                </div>
                            </div>
                        </div>
                        
                        <div class="backside">
                            <div class="card">
                                <div class="card-body text-center">
                                     <br><br><br>
                                     <h4 class="card-title">Book Price</h4>
                                    <h2 class="card-text"><%=bPrice[11]%>&#8377;</h2>
                                    <br><br><br>
                                    <a href="productPage.jsp?bookId=<%=bookId[11] %>"
                                     class="btn btn-primary btn-sm">View Details</a>
                                </div>
                            </div>
                        </div>
						</div>
					</div>
				</div>
				<!-- ***************************** -->
		</div>
	</div>
	
</section>		 		
<!-- --------------------------------------------------------------------------------------- -->

</div>		
	<% if (session.getAttribute("name").equals(""))
	{
	%>
		<a href="index.jsp"><b>Login</b></a>
		<%
	}
%>

<!-- page-wrapper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    
</body>
</html>