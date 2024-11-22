<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script type="text/javascript" src="script/member.js" ></script>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #E0E8F2;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .login-container {
        background-color: #BECFE4;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(174, 198, 207, 0.3);
    }
    h2 {
        color: #5D8AA8;
        text-align: center;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
    }
    td {
        padding: 10px;
    }
    input[type="text"], input[type="password"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #AEC6CF;
        border-radius: 4px;
    }
    input[type="submit"], input[type="reset"], input[type="button"] {
        background-color: #AEC6CF;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, input[type="button"]:hover {
        background-color: #89B3C9;
    }
    .message {
        color: #5D8AA8;
        text-align: center;
        margin-top: 10px;
    }
</style>
</head>
<body>
	<div class="login-container">
		<h2>로그인</h2>
		<form action="login.do" method="post" name="frm">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid" value="${ userid }"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pwd" value="${ pwd }"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
						<input type="reset" value="취소">&nbsp;&nbsp;
						<input type="button" value="회원가입" onclick="location.href='join.do'">
					</td>				
				</tr>
			</table>
			<div class="message">${ message }</div>
		</form>
	</div>
</body>
</html>