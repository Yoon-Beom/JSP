<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Select Form 예제</h1>
	<form method="post" action="select.jsp">
		직 업 :
		<select id="job" name="job" size="1">
			<option value="">선택하세요</option>
			<option value="teacher">교사</option>
			<option value="doctor">의사</option>
			<option value="engineer">엔지니어</option>
			<option value="designer">디자이너</option>
			<option value="programmer">프로그래머</option>
			<option value="accountant">회계사</option>
			<option value="lawyer">변호사</option>
			<option value="chef">요리사</option>
			<option value="nurse">간호사</option>
			<option value="salesperson">영업사원</option>
			<option value="etc">기타</option>
		</select>
		<br>
		관심분야 :
		<select id="interest" name="interest" size="4" multiple>
			<option value="longboard">롱보드</option>
			<option value="skateboard">스케이트보드</option>
			<option value="piano">피아노</option>
			<option value="swimming">수영</option>
			<option value="reading">독서</option>
			<option value="cooking">요리</option>
			<option value="photography">사진 촬영</option>
			<option value="hiking">등산</option>
			<option value="gardening">원예</option>
			<option value="painting">그림 그리기</option>
			<option value="yoga">요가</option>
			<option value="fishing">낚시</option>
			<option value="dancing">춤</option>
			<option value="cycling">자전거 타기</option>
			<option value="gaming">게임</option>
			<option value="writing">글쓰기</option>
			<option value="knitting">뜨개질</option>
			<option value="singing">노래 부르기</option>
			<option value="traveling">여행</option>
			<option value="meditation">명상</option>
			<option value="chess">체스</option>
			<option value="woodworking">목공예</option>
		</select>
		
		<br>
		<input type="submit" value="확인">
		<input type="reset" value="취소">
	</form>
</body>
</html>