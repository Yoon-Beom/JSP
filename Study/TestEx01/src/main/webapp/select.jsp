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
		String job = request.getParameter("job");
		String interests[] = request.getParameterValues("interest");
		
		out.print("당신의 직업은 <b>" + job + "</b>입니다.<br>");
		String str = "당신의 취미는 ";
		if(interests == null) {
			str += "없습니다. 취미를 가지도록 하세요.";
		} else if(interests.length == 1) {
			str += "<b>" + interests[0] + "</b>입니다.";
		} else {
			for(int i = 0; i < interests.length; i++) {
				str += "<b>" + interests[i] + "</b>";
				if(i != interests.length - 1) {
					str += ", ";
				} else {
					str += "입니다.";
				}
			}
		}
		
		out.print(str);
	%>
	<br>
	<b><a href="javascript:history.go(-1)">뒤로 가기</a></b>
</body>
</html>