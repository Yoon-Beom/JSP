<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법</title>
</head>
<body>
	<h1>스크립트릿(Scriptlet) 예제</h1>
	<%
	int num1 = 20;
	int num2 = 30;
	int add = num1 + num2;
	out.print(num1 + " + " + num2 + " = " + add);
	%>

	<hr>

	<h1>선언문(Declaration) 예제</h1>
	<%!String str = "안녕하세요";
	int a = 5, b = -5;

	public int abs(int n) {
		if (n < 0) {
			n = -n;
		}

		return n;
	}%>

	<%
	out.print(str + "<br>");
	out.print(a + "의 절대 값 : " + abs(a) + "<br>");
	out.print(b + "의 절대 값 : " + abs(b) + "<br>");
	%>

	<br>
	<br>

	<h1>지역변수와 전역변수 비교</h1>

	<%
	String s = "재미있는 JSP";
	%>

	<%
	out.print(s);
	%>

</body>
</html>
<%--
	<% %> 스크립트릿(Scriptlet)
		<% %> 태그 안에 자바 코드를 작성할 수 있습니다.
	
	<%! %> 선언부(Declaration)
		<%! %> 태그를 사용하여 변수나 메서드를 선언할 수 있습니다. 함수, 변수(전역 변수)
		
	<%= %> 표현식(Expression)
		<%= %> 태그를 사용하여 변수나 메서드의 결과값을 출력할 수 있습니다.
		
	<%@ %> 지시어(Directive)
		<%@ %> 태그를 사용하여 페이지의 속성을 설정합니다.
		
	<% -- -- %> 주석(Comment)
		<% -- -- %> 태그를 사용하여 JSP 주석을 작성할 수 있습니다.
	
	<jsp: /> 액션 태그(Action Tags)
		JSP 페이지에서 특정 작업을 수행하기 위해 사용됩니다.
		<jsp:include /> <jsp:useBean />
	
	${ } EL(Expression Language)
		${ } 를 사용하여 간단한 표현식을 작성할 수 있습니다.
	
	JSTL(JSP Standard Tag Library)
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<c:forEach var="i" begin="1" end="5">
--%>
