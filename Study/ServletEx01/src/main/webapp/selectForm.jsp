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
	<form method="post" action="SelectServlet">
		<table>
			<tr>
				<td>
					직 업 :	
				</td>
				<td>
					<select id="job" name="job" size="1">
						<option value="">선택하세요</option>
						<option value="학생">학생</option>
						<option value="무직">무직</option>
						<option value="교사">교사</option>
						<option value="의사">의사</option>
						<option value="엔지니어">엔지니어</option>
						<option value="디자이너">디자이너</option>
						<option value="프로그래머">프로그래머</option>
						<option value="회계사">회계사</option>
						<option value="변호사">변호사</option>
						<option value="요리사">요리사</option>
						<option value="간호사">간호사</option>
						<option value="영업사원">영업사원</option>
						<option value="기타">기타</option>
					</select>
				</td>
				<td></td>
				<td>
					관심분야 :					
				</td>
				<td rowspan="4" style="height: 40px;">
					<select id="interest" name="interest" size="4" multiple>
						<option value="롱보드">롱보드</option>
						<option value="스케이트보드">스케이트보드</option>
						<option value="피아노">피아노</option>
						<option value="수영">수영</option>
						<option value="독서">독서</option>
						<option value="요리">요리</option>
						<option value="사진 촬영">사진 촬영</option>
						<option value="등산">등산</option>
						<option value="원예">원예</option>
						<option value="그림 그리기">그림 그리기</option>
						<option value="요가">요가</option>
						<option value="낚시">낚시</option>
						<option value="춤">춤</option>
						<option value="자전거 타기">자전거 타기</option>
						<option value="게임">게임</option>
						<option value="글쓰기">글쓰기</option>
						<option value="뜨개질">뜨개질</option>
						<option value="노래 부르기">노래 부르기</option>
						<option value="여행">여행</option>
						<option value="명상">명상</option>
						<option value="체스">체스</option>
						<option value="목공예">목공예</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<input type="submit" value="확인">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>