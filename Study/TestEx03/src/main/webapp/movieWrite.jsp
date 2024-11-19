<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean class="com.guri.javabean.MovieBean" id="movie" />
    <jsp:setProperty property="*" name="movie" />
    
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
			<td>제목</td>
			<td><jsp:getProperty property="title" name="movie" /></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><jsp:getProperty property="price" name="movie" />원</td>
		</tr>
		<tr>
			<td>감독</td>
			<td><jsp:getProperty property="director" name="movie" /></td>
		</tr>
		<tr>
			<td>출연배우</td>
			<td><jsp:getProperty property="actor" name="movie" /></td>
		</tr>
		<tr>
			<td>시녹시스</td>
			<td><textarea rows="20" cols="80"><jsp:getProperty property="synopsis" name="movie" /></textarea></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><jsp:getProperty property="genre" name="movie" /></td>
		</tr>
	</table>
</body>
</html>