<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="backNoWork.js" type="text/javascript"></script>
</head>
<body>
	
	<%session.invalidate();%>
	<h3>You have logged out. Please <a href="index.jsp"><b>Login</b></a></h3>
	
	
</body>
</html>