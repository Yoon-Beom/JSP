<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시판 글쓰기</h1>
	<form method="post" action="boardWrite.jsp">
	<table>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="name"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pass"> (게시물 수정 삭제시 필요합니다.) </td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><input type="email" name="email"></td>
		</tr>
		<tr>
			<td>글 제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>글 내용</td>
			<td><textarea name="content" rows="20" cols="80"></textarea></td>
		</tr>
	</table>
	<input type="submit" value="등록">
	<input type="reset" value="다시 작성">
	</form>
</body>
</html>