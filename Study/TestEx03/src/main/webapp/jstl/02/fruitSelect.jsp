<%-- fruitSelect.jsp --%>
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
<c:choose>
	<c:when test="${ param.fruit == 1 }">
		<h1><span style="color:red;">사과</span></h1>
	</c:when>
	<c:when test="${ param.fruit == 2 }">
		<h1><span style="color:green;">메론</span></h1>
	</c:when>
	<c:when test="${ param.fruit == 3 }">
		<h1><span style="color:yellow;">바나나</span></h1>
	</c:when>
	<c:otherwise>
		<h1><span style="color:blue;">나머지 조건들</span></h1>
	</c:otherwise>
</c:choose>
</body>
</html>