<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<ul>
			<li><a class="active" href="#home">Home</a></li>
			
			<li><a href="#contact">My Account</a></li>
			<li><a href="#contact">Order</a></li>
			
			
			<input type="text" placeholder="Search for Book">
		
		</ul>
	<div class="lefter">
		<div id="sidebar">
			<div class="sidebar_top"></div><!--we added images in css -->
			<div class="sidebar_bottom"></div>
			<nav>
			<a class="active" href="addindex.jsp">Add Book</a><br>
			
		
			<a class="active" href="#">Order</a>	<br>
			
		   </nav>
		 </div>
	</div>
	
	
	
</body>
<style>
body{

margin: 0 0;/* header is attached close to body */}


ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
	position: fixed;/*fix the position of header means dont chane it whenever we scroll */
	width: 100%;}
li {
    float: left;
    border-right:1px solid #bbb;
}
li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
li a:hover {
    background-color: #4CAF50;
}
input
{
height: 25px;
margin-left: 50px;
margin-top: 10px;
padding-left: 20px;
background-color: khaki;

}

#sidebar {
	float: left;
	position: absolute;
	width:  220px;
	margin: 30px 0;
	padding: 15px 22px 15px 24px;
	background: url(img/sidebar_middle.png) repeat-y;
}

#sidebar .sidebar_top {
	position: absolute;
	width: 266px;
	height: 13px;
	top: -13px;
	left: 0;
	background: url(img/sidebar_top.png) no-repeat;
}

#sidebar .sidebar_bottom {
	position: absolute;
	width: 266px;
	height: 13px;
	bottom: -13px;
	left: 0;
	background: url(img/sidebar_bottom.png) no-repeat;
}



.lefter
{
margin-top: 46px;
background-color: #48D1CC;
width:300px;
height: 100%;
float: left;	
padding: 5px;
position: fixed;

}

#righter
{
margin-top: 46px;
margin-left:310px;
background-color: pink;
width:500px;
height: 100%;
float: left;	
padding: 5px;
position: relative;

}
nav{

}
nav a{
text-transform: uppercase;
text-decoration: none;
display: block;
}

</style>
</html>
