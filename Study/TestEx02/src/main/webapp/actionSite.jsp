<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String site = request.getParameter("selectSite");
	
	if(site.equals("구글")) {
		response.sendRedirect("https://www.google.com/");
	} else if (site.equals("네이버")) {
		response.sendRedirect("https://www.naver.com/");
	} else if (site.equals("다음")) {
		response.sendRedirect("https://www.daum.net/");
	} else {
		response.sendRedirect("https://www.nate.com/");
	}
	%>
</body>
</html>