<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean class="com.guri.javabean.MemberBean" id="member" />
	
	자바 빈 객체 생성 후 저장된 정보 출력하기 <br><br>
	이름 : <%= member.getName() %> <br>
	아이디 : <%= member.getUserid() %> <br><br>
	
	<hr><br>
	
	자바 빈 객체에 정보 저장 후 출력하기 <br><br>
	<%
		member.setName("홍길동");
		member.setUserid("hong0722s");
	%>
	
	<hr><br>
	
	
	자바 빈 객체 수정 후 저장된 정보 출력하기 <br><br>
	이름 : <%= member.getName() %> <br>
	아이디 : <%= member.getUserid() %> <br>
	
</body>
</html>