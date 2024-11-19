<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean class="com.guri.javabean.WriteInfo" id="write" />
<jsp:setProperty name="write" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>입력 완료된 정보</h1>
<table>
	<tr>
	<td>작성자</td>
	<td><jsp:getProperty property="name" name="write"/>
	</tr>
	<tr>
	<td>비밀번호</td>
	<td><jsp:getProperty property="pass" name="write"/>
	</tr>
	<tr>
	<td>이메일</td>
	<td><jsp:getProperty property="email" name="write"/>
	</tr>
	<tr>
	<td>글 제목</td>
	<td><jsp:getProperty property="title" name="write"/>
	</tr>
	<tr>
	<td>글 내용</td>
	<td><jsp:getProperty property="content" name="write"/>
	</tr>
</table>
</body>
</html>