<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
	<title>Page Title</title>	
	<link rel="stylesheet" type="text/css" href="index.css">
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

<script>
		// Set the date we're counting down to
		var countDownDate = new Date("Nov 12, 2019 15:37:25").getTime();
		
		// Update the count down every 1 second
		var x = setInterval(function() {
		
		  // Get today's date and time
		  var now = new Date().getTime();
			
		  // Find the distance between now and the count down date
		  var distance = countDownDate - now;
			
		  // Time calculations for days, hours, minutes and seconds
		  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
		  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
			
		  // Output the result in an element with id="demo"
		  document.getElementById("timer").innerHTML = days + "d " + hours + "h "
		  + minutes + "m " + seconds + "s ";
			
		  // If the count down is over, write some text 
		  if (distance < 0) {
			clearInterval(x);
			document.getElementById("timer").innerHTML = "EXPIRED";
		  }
		}, 1000);
		</script>
	
</head>
<body onload="captcha()" style=" background: url(homebackground.jpg);">

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog" style="background-color:rgba(50, 70, 66, 50%);">
				<div class="model-content" modal-dialog-centered" role="document">
					<div class="modal-header" style="color: azure;">
						<h1>Deal of the day</h1> </div>
					<div class="modal-body" style="color: azure;">
						<p>Get 20% off on Roasted Cashew &nbsp;&nbsp;&nbsp;<span id="timer" style="color: red;"></span> left</p>
							<div class="card" style="width: 28rem;">
									<img class="card-img-top" src="roast.jpg" alt="Card image cap">
									<div class="card-body">
									 
									  <p style="color:black;">Grab the exiting offer on SBI credit card on purchace 
										of 1000Rs and above. <a href="#">click here</a> to know more.</p>
									  <a href="#" class="btn btn-primary">Login for shopping</a>
									</div>
								  </div>
					</div>
					<div class="modal-footer" style="color: azure;">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

			<nav class="navbar navbar-expand-md bg-dark navbar-dark">
					<a href="" class="navbar-brand"><img src="cashewLogo.JPG" height="40px"></a>
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active">
							<a class="nav-link" href="#">Home</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="AdminLogin.jsp">Admin Login</a>
						
						</li>
						
					</ul>
				</nav>
		
				<h1 style="color:white">User Login</h1>
				<div class="loginBox">
					<img src="login.jpg" class="login">

					<form action="LoginCheck.jsp" method="get">
					
						<span style="color:red">${param["message"]}</span> 
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

						<div class="form-group"  align="center">
							<input type="submit" id="submit">
						</div>

						<div class="form-group">
							<a href="#" >forget password?</a>
							<br>
							<a href="UserRegister.jsp">New user? Register here</a>
						</div>
						
					</form>

				</div>

	</body>
</html>