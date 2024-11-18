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

	int num = Integer.parseInt(request.getParameter("number"));
%>

	<h1>1부터 <%= num %>까지 자연수 합 구하기</h1><br>

<%
	String str = "";
	int sum = 0;
	
	for (int i = 1; i <= num; i++) {
		if(i == num) {
			sum += i;
			str += i + " = " + sum;		
		} else {
			sum += i;
			str += i + " + ";
		}
		if(i % 10 == 0) {
			str += "<br>";
		}
	}
	
	out.print(str);
	%>
</body>
</html>