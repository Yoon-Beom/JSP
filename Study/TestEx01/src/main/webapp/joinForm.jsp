<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form method="post" action="join.jsp">
		<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" placeholder="이름을 적어주세요" required></td>
			</tr>
			<tr>
				<td>주민등록번호</td>
				<td>
					<input
						type="text" 
						name="residentNumber1"
						maxlength="6"
						pattern="\d{6}"
						required
						placeholder="주민번호를 입력하세요">
					 - 
					<input
						type="password"
						name="residentNumber2"
						maxlength="7"
						pattern="\d{7}"
						required
						placeholder="주민번호를 입력하세요">
					</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input
						type="text"
						name="userid"
						pattern="^(?=.*[a-zA-Z])[-a-zA-Z0-9_.]{4,10}$"
						required
						placeholder="아이디를 입력하세요">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input
						type="password"
						name="password"
						pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+~`\-={}[\]:;'<>,.?/\\]).{10,}$"
						required
						placeholder="비밀번호를 입력하세요"
						>
				</td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td>
					<input
						type="password"
						name="confirmPassword"
						pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+~`\-={}[\]:;'<>,.?/\\]).{10,}$"
						required
						placeholder="비밀번호를 입력하세요"
						>
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>
					<input type="text" name="email" placeholder="이메일을 입력하세요">
					 @ 
					<input type="text" name="emailaddr" placeholder="직접 입력">
					<select name="emailSelect" size="1">
						<option value="">선택하세요</option>
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="nate.com">nate.com</option>
						<option value="yahoo.com">yahoo.com</option>
						<option value="custom">직접 입력</option>
					</select>
				 </td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="addrNumber" pattern="\d{5}" placeholder="우편번호를 입력하세요"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="addr1" placeholder="주소를 입력하세요"> <input type="text" name="addr2" placeholder="상세 주소를 입력하세요"></td>
			</tr>
			<tr>
				<td>핸드폰 번호</td>
				<td><input type="text" name="cellPhone" pattern="^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$" placeholder="핸드폰 번호를 입력하세요"></td>
			</tr>
			<tr>
				<td>직업</td>
				<td>
					<select name="job" size="1">
						<option value="">선택하세요</option>
						<option value="학생">학생</option>
						<option value="주부">주부</option>
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
			</tr>
			<tr>
				<td>메일/SMS 정보 수신</td>
				<td>
					<input type="radio" name="receive" value="동의" checked> 수신
					<input type="radio" name="receive" value="비동의"> 수신거부
				</td>
			</tr>
			<tr>
				<td>관심분야</td>
				<td>
					<input type="checkbox" name="interest" value="생두"> 생두
					<input type="checkbox" name="interest" value="원두"> 원두
					<input type="checkbox" name="interest" value="로스팅"> 로스팅
					<input type="checkbox" name="interest" value="핸드드립"> 핸드드립
					<input type="checkbox" name="interest" value="에스프레소"> 에스프레소
					<input type="checkbox" name="interest" value="창업"> 창업
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="제출"></td>
				<td><input type="reset" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>