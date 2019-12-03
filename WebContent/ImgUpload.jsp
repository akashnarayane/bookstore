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
		String id = request.getParameter("id");
		int bid = Integer.parseInt(id);
	%>

<input type=text name="bookId" value=<%=bid%>>
<br />
<input type="file" name="file" size="50" />
<input type="submit" value="Upload File" />
</form>
</body>
</html>