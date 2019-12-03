<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>	
	<meta charset='utf-8'>
	<title>Page Title</title>	
	<link rel="stylesheet" type="text/css" href="admin1.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" ></script>
		
		<script>
			$(document).ready(function()
			{
				$('#myModal').modal('hide')
			});
		</script>

	<script>
		function captcha()
		{
			var arr = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N',
			'O','P','Q','R','S','T','U','V','W','X','Y','Z',1,2,3,4,5,6,7,8,9,0,
			'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q',
			'r','s','t','u','v','w','x','y','z'];
			
			
			var a = Math.floor((Math.random()*62));
			var b = Math.floor((Math.random()*62));
			var c = Math.floor((Math.random()*62));
			var d = Math.floor((Math.random()*62));

			var cap = arr[a]+' '+arr[b]+' '+arr[c]+' '+arr[d];
			document.getElementById('capBtn').value=cap;
		}

		function checkCaptcha()
		{
			var orgCap = removeSpace(document.getElementById('capBtn').value);
			var entCap = removeSpace(document.getElementById('cap').value);

				if(entCap != orgCap || entCap== '')
				{
					document.getElementById('msg').innerHTML = "Invalid Captcha";
					document.getElementById('msg').style.color ='red';
					captcha();
				}
				else
				{
					document.getElementById('msg').innerHTML = "Correct";
				}
		}

		function removeSpace(str)
		{
			return str.split(' ').join('');
		}

	</script>

	</head>

	<body onload="captcha()"  style='background: url(adminbackground.jpg);
									background-repeat: no-repeat;				    
								    '>
	
			
			<nav class="navbar navbar-expand-md bg-dark navbar-dark">
					<a href="" class="navbar-brand"><img src="Resources/images/cashewLogo.JPG" height="40px"></a>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a class="nav-link" href="index.html">Home</a>
						</li>
						
		
					</ul>
				</nav>
		<h1 style="color:white">Admin Login</h1>

				<div class="loginBox">
					<img src="login.jpg" class="login">

					<form action="AdminLoginCheck.jsp" method="post">
						<div class="form-group">
							<label for="userInput">Username</label>
							<input type="text" class="form-control" placeholder="Enter Username" id="uname" name="username">
						</div>

						<div class="form-group">
							<label for="password">Password</label>
							<input type="password" class="form-control" placeholder="Enter password" id="pass" name="password">
						</div>

						<div class="form-group" >
							<label for="captcha">Captcha</label>
							<input type="button" class="btn btn-success" id="capBtn">
							
						</div>

						<P id="arr"></P>
						<div class="form-group">
								<input type="text" class="form-control" placeholder="Enter Captcha" id="cap" onblur="checkCaptcha()">
								<span id="msg"></span>
						</div>	

						<div class="form-group">
							<input type="submit" id="submit">
						</div>

						<div class="form-group">
							<a href="#" >forget password?</a>
							<br>
						</div>
						
					</form>

				</div>

	</body>

</html>