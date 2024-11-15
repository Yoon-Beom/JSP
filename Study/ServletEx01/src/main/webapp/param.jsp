<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check() {
		if(document.frm.id.value == "") {
			alert("아이디는 필수 항목입니다.");
			document.frm.id.focus();
			return false;
		} else if(document.frm.age.value == "") {
			alert("나이를 입력해주세요.");
			document.frm.age.focus();
			return false;
		} else if(isNaN(document.frm.age.value)) {
			alert("나이는 반드시 숫자로 입력하셔야합니다.");
			document.frm.age.value = "";
			document.frm.age.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form method="get" action="paramServlet" name="frm">
		<table>
			<tr>
				<td>아이디 :</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>나이</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td><input type="submit" value="전송" onclick="return check();"></td>
			</tr>
		</table>
	</form>
</body>
</html>