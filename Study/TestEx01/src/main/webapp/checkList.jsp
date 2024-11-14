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
	String brands[] = request.getParameterValues("item");
	out.print("당신이 좋아하는 명품 브랜드는 ");
	if(brands == null) {
		out.print("없습니다.");
	} else if(brands.length < 2) {
		out.print("<b>" + brands[0] + "</b>입니다.");
	} else {
		for(int i = 0; i < brands.length; i++) {
				out.print("<b>" + brands[i] + "</b>");
			if(i != brands.length-1) {
				out.print(", ");
			} else {
				out.print("입니다.");
			}
		}
	}
	%>
	
	<br>
	<b><a href='javascript:history.go(-1)'>뒤로가기</a></b>
</body>
</html>