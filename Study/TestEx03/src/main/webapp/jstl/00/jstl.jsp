<%-- jstl.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		JSTL : JSP Tag Library
				JSP에 사용하는 표준 태그 라이브러리
				
		기본 기능 (core)
				변수 선언, 실행, 흐름제어, 제어 이동
				uri="jakarta.tags.core"
				
		<c:out> 출력
		<c:set> 변수에 값을 저장
		<c:remove> 설정된 값을 제거
		<c:if> 조건 처리
		<c:choose> 여러 조건에 따라 처리
		<c:forEach> 반복 처리
		<c:import> 외부 파일을 url을 지정하여 가져다 사용
		<c:forTokens> 구분자로 분리된 각각 토큰을 처리
		
		<c:if> 태그는 자바처럼 else를 사용 할 수 없음
				그래서 두 가지 이상 경우 하나를 선택 할 때
				조건을 제시해야 하는 번거로움이 발생
				이럴 때 사용하는 것이 <c:choose> 태그
				
		<c:forTokens> 태그는 JSTL(Java Server Pages Standard Tag Library)의 core 라이브러리에 속한 태그로,
						문자열을 특정 구분자(delimiter)를 기준으로 분리하여 반복 처리 할 때 사용됩니다.
		
		
		JSTL fmt : JSTL
	 --%>
	 
<c:out value="hello" /><br>
<c:set var="msg" value="JSP" />

\${ msg } = ${ msg }<br>

<c:set var="age"> 30 </c:set>

\${ age } = ${age }<br>


<c:set var="member" value="<%= new com.guri.javabean.MemberBean() %>"></c:set>
<c:set target="${ member }" property="name" value="홍길동" />
<c:set target="${ member }" property="userid" >
	hong1234
</c:set>

\${ member.getName() } = ${ member.getName() }<br>
\${ member.getUserid() } = ${ member.getUserid() }<br>
\${ member } = ${ member }<br><hr>

<c:set var="add" value="${ 10 + 5 }" />
\${ add } = ${ add }<br>

<c:set var="flag" value="${ 10 < 5 }" />
\${ 10 < 5 } = ${ flag }<br>

<c:set var="flag" value="${ 10 > 5 }" />
\${ 10 > 5 } = ${ flag }<br>
</body>
</html>