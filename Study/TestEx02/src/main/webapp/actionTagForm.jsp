<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="actionTagTest.jsp">
		아이디 : <input type="text" name="id"><br>
		비밀번호 : <input type="password" name="pwd"><br>
		<input type="radio" name="loginCheck" value="user" checked="checked">사용자
		<input type="radio" name="loginCheck" value="manager">관리자<br>
		<input type="submit" value="로그인">
		
	
	</form>
</body>
</html>