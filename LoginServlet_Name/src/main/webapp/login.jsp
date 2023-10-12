<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Servlet</title>
</head>
<body>
	<h1>ĐĂNG NHẬP</h1>

	<%
	String path = request.getContextPath();
	%>
	<form action="<%=path%>/login" method="post">
		<table>
			<tr>
				<td><label for="ten">Tên: </label></td>
				<td><input type="text" name="ten" id="ten"
					placeholder="Nhập tên" /></td>
			</tr>
			<tr>
				<td><label for="username">Username: </label></td>
				<td><input type="text" name="username" id="username"
					placeholder="Nhập username" required /></td>
			</tr>
			<tr>
				<td><label for="password">Password: </label></td>
				<td><input type="password" name="password" id="password"
					placeholder="Nhập password" required /></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<button type="submit">Thêm sinh viên</button>
				</td>
		</table>
	</form>
</body>
</html>