<%-- colorSelect.jsp --%>
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

	<c:if test="${ param.color == 1 }">
		<h1>
			<span style="color: red;">빨강</span>
		</h1>
	</c:if>
	<c:if test="${ param.color == 2 }">
		<h1>
			<span style="color: green;">초록</span>
		</h1>
	</c:if>
	<c:if test="${ param.color == 3 }">
		<h1>
			<span style="color: blue;">파랑</span>
		</h1>
	</c:if>

</body>
</html>