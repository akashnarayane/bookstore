<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>

		<ul>
			<li><a class="active" href="#">Home</a></li>
			
			<li><a href="#contact">My Account</a></li>
			<li><a href="#contact">Order</a></li>
			<input type="text" name="bname" placeholder="Search for Book">
		</ul>
			
		
		
	<div class="lefter">
		<div id="sidebar">
			<div class="sidebar_top"></div><!--we added images in css -->
			<div class="sidebar_bottom"></div>
			<nav>
			<a class="active" href="addbook.jsp">Add Book</a><br>
			
		
			<a class="active" href="#">Order</a>	<br>
			
		   </nav>
		 </div>
	</div>
	
	<div id="righter">
	
	
	<form  action="addbook.jsp" method="get" enctype="multipart/form-data" >
<table>
<tr>
	<td>Select Book:</td>
	<td><select name="name" style="width:155px">  
	<option>Java</option>  
	<option>C++</option>  
	<option>.NET</option>  
	<option>OS</option>  
	<option>DS</option>  
	</select>  
	</td>
</tr>
<tr>
	<td>Book Title</td>
	<td><input name="btitle" type="text"></td>
</tr> 
<tr>
  <td>Book id: </td>
  <td><input name="id" type="number"></td>
</tr>
<tr>
  <td>Price:</td>
  <td><input name="price" type="text"></td>
</tr>
<tr>
	<td>Author Name:</td>
  <td><input name="auther" type="text" ></td>
</tr>
<tr>
	<td>Description:</td>
	<td><textarea name="descp" cols="35" rows="6"></textarea></td>
</tr>

<tr>
	<td  colspan="2" align="center"><input type="submit" value="Add Book">
	</td>
</tr>
</table>

	
	
	
 <span style="color:red">
<%= request.getParameter("message")%>


</span>
</form>

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
    background-color: pink;
}
input
{
height: 25px;
margin-left: 50px;
margin-top: 10px;
padding-left: 20px;
background-color: khaki;

}
textarea
{background-color: khaki;
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
width:100%	;
height: 100%;
float: left;	
padding: 5px;
position:fixed;


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
</body>
</html>
