<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="loginAction.jsp">
	<table>
		<tr>
			<td>아이디 : </td>
			<td><input type="text" name="userid"></td>
		</tr>
		<tr>
			<td>비밀번호 : </td>
			<td><input type="password" name="pwd"></td>
		</tr>
	</table>
	<input type="radio" name="userClass" value="user" checked="checked">사용자
	<input type="radio" name="userClass" value="manager">관리자<br>
	<input type="submit" value="로그인">
</form>
</body>
</html>