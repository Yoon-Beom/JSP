<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>설문 조사 결과</h1>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		out.print("이름 : " + name + "<br>");
		
		String gender = request.getParameter("gender").equals("mail") ? "남성" : "여성";
		out.print("성별 : <b>" + gender + "</b><br>");
		
		String seasons[] = request.getParameterValues("season");
		out.print("당신이 좋아하는 계절은 : ");
		for(String s : seasons) {
			int n = Integer.parseInt(s);
			
			switch(n) {
			case 1:
				out.print("<b>봄</b> 입니다<br>");
				break;
			case 2:
				out.print("<b>여름</b> 입니다<br>");
				break;
			case 3:
				out.print("<b>가을</b> 입니다<br>");
				break;
			case 4:
				out.print("<b>겨울</b> 입니다<br>");
				break;
			}
		}
	%>
	
	<b><a href='javascript:history.go(-1)'>다시</a></b>
</body>
</html>