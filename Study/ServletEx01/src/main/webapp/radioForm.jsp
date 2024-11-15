<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<form method="get" action="RadioServlet">
		<table>
			<tr>
				<td>성별 : </td>
				<td><input type="radio" name="gender" value="남자" checked="checked">남자</td>
				<td><input type="radio" name="gender" value="여자">여자</td>
			</tr>
			<tr>
				<td>메일 정보 수신 여부 : </td>
				<td><input type="radio" name="chk_mail" value="동의" checked="checked">동의</td>
				<td><input type="radio" name="chk_mail" value="비동의">비동의</td>
			</tr>
			<tr>
				<td colspan="3">간단한 자기 소개를 해주세요 ~ !</td>
			</tr>
			<tr>
				<td colspan="3">
					<textarea rows="4" cols="40" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="전송"></td>
			</tr>
		</table>
	</form>
</body>
</html>