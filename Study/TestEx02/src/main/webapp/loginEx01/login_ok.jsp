<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		if(id.equals("hong1234") && pwd.equals("1234")) {
			session.setAttribute("id", id);
			response.sendRedirect("index.jsp");
		} else if(id.equals("hong1234") || pwd.equals("1234")) {
			out.println("<script>alert('아이디 또는 비밀번호가 틀렸습니다.'); history.go(-1);</script>");
		} else {
			out.println("<script>alert('아이디와 비밀번호가 틀렸습니다.'); history.go(-1);</script>");
		}
	%>
</body>
</html>