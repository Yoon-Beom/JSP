<%@page import="java.util.Date"%>
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
<c:set var="now" value="<%= new Date() %>" />
톰캣 서버의 기본 로케일 : <%= response.getLocale() %> <br>

<hr><br>

<fmt:setLocale value="ja_JP" />
로케일을 일본으로 설정한 후 로케일 확인 : <%= response.getLocale() %> <br>
통화(currency) : <fmt:formatNumber value="1000" type="currency" /><br>
날짜 : <fmt:formatDate value="${ now }" /><br>

<br><hr><br>

<fmt:setLocale value="en_Us" />
로케일을 미국으로 설정한 후 로케일 확인 : <%= response.getLocale() %> <br>
통화(currency) : <fmt:formatNumber value="1000" type="currency" /><br>
날짜 : <fmt:formatDate value="${ now }" /><br>

<br><hr><br>

<fmt:setLocale value="en_Us" />
로케일을 미국으로 설정한 후 로케일 확인 : <%= response.getLocale() %> <br>
통화(currency) : <fmt:formatNumber value="1000" type="currency" /><br>
날짜 : <fmt:formatDate value="${ now }" /><br>

<br><hr><br>

<fmt:setLocale value="ko_kr" />
로케일을 한국으로 설정한 후 로케일 확인 : <%= response.getLocale() %> <br>
통화(currency) : <fmt:formatNumber value="1000" type="currency" /><br>
날짜 : <fmt:formatDate value="${ now }" /><br>
</body>
</html>