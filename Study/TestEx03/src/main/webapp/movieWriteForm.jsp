<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>정보 등록</h1>
	<form method="post" action="movieWrite.jsp">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input type="number" name="price">원</td>
		</tr>
		<tr>
			<td>감독</td>
			<td><input type="text" name="director"></td>
		</tr>
		<tr>
			<td>출연 배우</td>
			<td><input type="text" name="actor"></td>
		</tr>
		<tr>
			<td>시놉시스</td>
			<td><textarea name="synopsis" rows="20" cols="80"></textarea></td>
		</tr>
		<tr>
			<td>장르</td>
			<td>
				<select name="genre">
					<option value="로맨스">로맨스</option>
					<option value="스릴러">스릴러</option>
					<option value="미스터리">미스터리</option>
					<option value="액션">액션</option>
					<option value="코미디">코미디</option>
					<option value="애니메이션">애니메이션</option>
				</select>
			</td>
		</tr>
	</table>
	<input type="submit" value="등록">
	<input type="reset" value="다시 작성">
	</form>
</body>
</html>