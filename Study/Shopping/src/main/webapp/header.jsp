<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td {
	boarder: 1px solid black;
	width: 200px;
	text-align: center;
}

table.mainmenu td.login:hover {
	background-color: pink;
}

a {
	text-decoration: none;
}
</style>
</head>
<body>
	<table class="mainmenu" align="center">
		<c:if test="${empty loginUser }">
			<tr>
				<td></td>
				<td></td>
				<td class="login">
					<a href="login.do" name="login">로그인</a>
				</td>
				<td style="width: 250px">
					사원등록<br>
					<span style="color: red">(관리자로 로그인 후 사용 가능)</span>
				</td>
				<td>
					마이페이지<br> 
					<span style="color: red">(로그인 후 사용 가능)</span>
				</td>
			</tr>
		</c:if>
		<c:if test="${!empty loginUser }">
			<tr>
				<td>${loginUser.name}님, 반갑습니다.</td>
				<td>레벨 : ${loginUser.lev}</td>
				<td class="login"><a href="logout.do">로그아웃</a></td>
				<c:choose>
					<c:when test="${result==2}">
						<td><a href="custom.do">사원 등록</a></td>
					</c:when>

					<c:when test="${result==3}">
						<td style="width: 300px">사원등록<br> <span
							style="color: red">(관리자로 로그인 후 사용 가능)</span>
						</td>
					</c:when>
				</c:choose>

				<td class="login"><a href="mypage.do">마이 페이지</a></td>
			</tr>
		</c:if>
	</table>
</body>
</html>