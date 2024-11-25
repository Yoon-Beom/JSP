<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<script type="text/javascript" src="script/member.js" defer></script>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #E6F3FF;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .check-container {
        background-color: #BECFE4;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(174, 198, 207, 0.3);
        width: 400px;
        text-align: center;
    }
    h2 {
        color: #4A6491;
        margin-bottom: 15px;
    }
    input[type="text"] {
        width: calc(60% - 22px);
        padding: 8px;
        border: 1px solid #9BAFD9;
        border-radius: 4px;
        margin-right: 5px;
        margin-bottom: 10px;
    }
    input[type="submit"], input[type="button"] {
        background-color: #7E9CD0;
        color: white;
        border: none;
        padding: 8px 15px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
        top: 1px;
    	position: relative;
    }
    input[type="submit"]:hover, input[type="button"]:hover {
        background-color: #6A89C0;
    }
    .message {
        color: #4A6491;
        margin-top: 10px;
    }
</style>
</head>
<body>
<div class="check-container">
	<h2>아이디 중복 확인</h2>
	<form name="frm" action="idCheck.do" method="get">
		아이디 : <input type="text" name="userid" value="${userid}">
		<input type="submit" value="중복체크">
	</form>
	<br>
	<div class="message">
		<c:if test="${result == 1}">
			<script type="text/javascript">
				opener.document.frm.userid.value="";
			</script>
			${userid}는 이미 사용 중인 아이디 입니다.
		</c:if>
		<c:if test="${result == -1}">
			${userid}는 사용 가능한 아이디 입니다.
			<input type="button" value="사용" class="cancel" onclick="idok(`${userid}`)">
		</c:if>
	</div>
</div>
</body>
</html>