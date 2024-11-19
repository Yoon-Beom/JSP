<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	기존 방식
	<br>
	<%
	int num1 = (Integer) request.getAttribute("num1");
	int num2 = (Integer) request.getAttribute("num2");
	int sum = (Integer) request.getAttribute("sum");
	%>
	<%= num1 %> + <%= num2 %> = <%= num1 + num2 %>
	
	<hr>
	
	EL 방식 <br>
	${num1 } + ${num2 } = ${sum }
</body>
</html>