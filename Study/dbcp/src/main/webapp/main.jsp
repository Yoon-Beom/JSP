<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<c:if test="${ empty loginUser }">
	<jsp:forward page="login.do" />
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    .member-container {
        background-color: #BECFE4;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(174, 198, 207, 0.3);
        width: 500px;
    }
    h2 {
        color: #4A6491;
        text-align: center;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
    }
    td {
        padding: 10px;
        text-align: center;
    }
    input[type="submit"], input[type="button"] {
        background-color: #7E9CD0;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover, input[type="button"]:hover {
        background-color: #6A89C0;
    }
    p {
        color: #4A6491;
        text-align: center;
        margin-top: 10px;
    }
</style>
</head>
<body>
<div class="member-container">
<h2>회원 전용 페이지</h2>
<form action="logout.do">
    <table>
        <tr>
            <td>안녕하세요. ${loginUser.name}(${loginUser.userid})님</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="로그아웃"> &nbsp;&nbsp;
                <input type="button" value="회원 정보 변경" onclick="location.href='memberUpdate.do'"> &nbsp;&nbsp;
                <input type="button" value="회원 탈퇴" onclick="location.href='memberDelete.do'">
            </td>
        </tr>
    </table>
    <p>${ message }</p>
</form>
</div>
</body>
</html>