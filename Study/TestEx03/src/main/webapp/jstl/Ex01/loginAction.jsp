<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${ param.userClass == 'user' }">
		<span><b>${ param.userid }</b>님 사용자로 로그인하셨습니다.</span>
	</c:when>
	<c:otherwise>
		<span><b>${ param.userid }</b>님 관리자로 로그인하셨습니다.</span>
	</c:otherwise>
</c:choose>

</body>
</html>