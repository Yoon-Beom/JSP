<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>당신의 정보는 해킹당했습니다</h1>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		out.print("당신의 이름은 <b>" + name + "</b>이고, <br>");
		
		String addr = request.getParameter("addr");
		out.print("당신의 주소는 <b>" + addr + "</b>입니다. <br>");
		out.print("곧 <b>FBI</b>가 그곳을 찾아갈 것입니다.");
	%>
	
	<b><a href='javascript:history.go(-1)'>다시</a></b>
</body>
</html>