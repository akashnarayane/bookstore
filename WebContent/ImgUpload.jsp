<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		
<form action="upload.jsp" method="post" enctype="multipart/form-data">

	<%
		int id = (Integer)session.getAttribute("bid");
		out.print("Inside imgupload : "+id);
		session.setAttribute("bid", id);
	%>

<input type="text" name="bookId" value=<%=id%>>
<br />
<input type="file" name="file" size="50" />
<input type="submit" value="Upload File" />
</form>
</body>
</html>