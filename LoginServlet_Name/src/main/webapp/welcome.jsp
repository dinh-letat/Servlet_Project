<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>
		Xin chào 
		<%= request.getAttribute("ten") %>
	</h1>
	<p>
		Tên tài khoản: 
		<%= request.getAttribute("username") %>
	</p>
	
	
</body>
</html>