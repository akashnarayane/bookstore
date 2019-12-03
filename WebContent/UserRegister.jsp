<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
	<script>
	
		function nameCheck(){
			var fname = document.getElementById("fName").value;
			if(fname==""){
				alert("First name field shouldn't left blank");
				return false;
			}	
			return true;
		}
		
		function userCheck(){
			var uname = document.getElementById("uName").value;
			if(uname==""){
				alert("Username field shouldn't left blank");
				return false;
			}	
			else if(uname.length<5){
				alert("Username should contain minimum 5 characters");
				return false;
			}
			return true;
		}
		
		
		
		
		function emailCheck(){
			var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			
			var email = document.getElementById("emailCheck").value;
			if(email==""){
				alert("Email field shouldn't left blank");
				return false;
			}	
			else if(emailId.value.match(mailformat)){
				
				return true;
			}
			else{
				alert("You have entered an invalid email address!");
				return false;
			}
			
		}
		
	</script>
	
</head>

<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
					<a href="" class="navbar-brand"><img src="Resources/images/cashewLogo.JPG" height="40px"></a>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="AdminLogin.jsp">Admin Login</a>
						
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#kokan">Kokan Cashew</a>
						</li>
					</ul>
				</nav>
	
	<br><br>

<form id="signupForm" action="adduser.jsp" method="get" enctype="multipart/form-data">
<table 
border="1" bgcolor="lavender" width="40%"
align="center"
>
<tr>
	<th colspan="2" align="center"> User Registration</th>
</tr>

<tr>
	<td>
	Name
	</td>
	
	<td>
	<input  type="text" name="name" required placeholder = "Enter Full Name" 
		onblur="nameCheck()" autofocus required
	/>
	</td>

</tr>
<tr>
	<td>
	Username
	</td>
	
	<td>
	<input type="text" id="uName" name="username" required placeholder = "Create Username" 
			onblur="userCheck()	"/>
	</td>

</tr>


<tr>
	<td>
	Password 
	</td>
	
	<td>
	<input type="password" name="password" required placeholder = "Create Password" />
	</td>

</tr>

<tr>
	<td>
	Confirm Password 
	</td>
	
	<td>
	<input type="password" name="confirmPass" required placeholder = "Re-enter Password" />
	</td>

</tr>


<tr>
	<td>
	Mobile
	</td>
	
	<td>
	<input type="number" name="mobile" placeholder = "Enter Mobile Number" maxlength="10"></input>
	</td>

</tr>

<tr>
	<td>
	Email
	</td>
	
	<td>
	<input type="input" id="emailCheck" name="email" onblur="emailCheck()" placeholder = "Enter Email "></input>
	</td>

</tr>


<tr>
	<td>
	Address
	</td>
	
	<td>
	<textarea type="textarea" name="address" placeholder = "Enter Address " ></textarea>
	</td>

</tr>

<tr>
	<td>
	City
	</td>
	
	<td>
	<input type="text" name="city" placeholder = "Enter City" ></textarea>
	</td>

</tr>

<tr>
	<td>
	Pin-Code
	</td>
	
	<td>
	<input type="number" name="pin_Code" maxlength="6" placeholder = "Enter Pin-code"></textarea>
	</td>

</tr>



<tr>
	<td  colspan="2" align="center">
	<button type="submit">Submit</button>
	<button type="reset">Reset</button>
	</td>
<tr>
</table>

</body>
</html>