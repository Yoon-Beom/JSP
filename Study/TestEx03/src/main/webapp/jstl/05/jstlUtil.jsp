<%-- jstlUtill.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>안녕하세요</h1>
<c:import url="http://localhost:8080/TestEx03/jstl/05/forTokens.jsp" />

<br><hr><br>

<c:url value="1.jpg" var="pic" />
<h3>${ pic }</h3> <br>

<img src="${ pic }" width="40%"	height="40%">

<br><hr><br>

<%-- <c:redirect url="jstlUtil.jsp" /> --%>

</body>
</html>