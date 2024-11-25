<%@page import="com.guri.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<script type="text/javascript" src="script/member.js" ></script>
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
    .signup-container {
        background-color: #BECFE4;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(174, 198, 207, 0.3);
        width: 600px;
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
        vertical-align: top;
        position: relative;
    }
    input[type="text"], input[type="password"] {
        width: calc(100% - 20px);
        padding: 8px;
        border: 1px solid #9BAFD9;
        border-radius: 4px;
    }
    input[type="submit"], input[type="reset"], input[type="button"] {
        background-color: #7E9CD0;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
    }
    input[type="submit"]:hover, input[type="reset"]:hover, input[type="button"]:hover {
        background-color: #6A89C0;
    }
    .message {
        color: #4A6491;
        text-align: center;
        margin-top: 10px;
    }
    .required {
        color: #4A6491;
        font-size: 0.9em;
        margin-bottom: 10px;
    }
    .required-mark {
        color: red;
        position: absolute;
        top: 0;
        right: 5px;
    }
    .id-check {
        display: flex;
        align-items: center;
    }
    .id-check input[type="text"] {
        flex-grow: 1;
        
    }
</style>
</head>
<body>
<%
	MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
	int admin = mvo.getAdmin();
%>
<div class="signup-container">
<h2>회원 정보 수정</h2>
<p class="required">'*' 표시 항목은 필수 입력 항목입니다.</p>
<form action="memberUpdate.do" method="post" name="frm">
    <table>
        <tr>
            <td>
                이름
                <span class="required-mark">*</span>
            </td>
            <td>
                <input type="text" name="name" size="20" value="${loginUser.name}" readonly="readonly">
            </td>    
        </tr>
        <tr>
            <td>아이디
            <span class="required-mark">*</span>
            </td>
            <td class="id-check">
            <input type="text" name="userid" size="20" value="${loginUser.userid}" readonly="readonly">
            <input type="hidden" name="reid" size="20" value="${loginUser.userid}">
            </td>    
        </tr>
        <tr>
            <td>비밀번호
            <span class="required-mark">*</span></td>
            <td><input type="password" name="pwd" size="20"></td>    
        </tr>
        <tr>
            <td>비밀번호 확인
            <span class="required-mark">*</span></td>
            <td><input type="password" name="pwd_check" size="20"></td>    
        </tr>
        <tr>
            <td>이메일</td>
            <td><input type="text" name="email" size="20" value="${loginUser.email}"></td>    
        </tr>
        <tr>
            <td>전화번호</td>
            <td><input type="text" name="phone" size="20" value="${loginUser.phone}"></td>    
        </tr>
        <tr>
            <td>등급</td>
            <td>
                <input type="radio" name="admin" value="0" <%= admin == 0 ? "checked" : "" %>>일반회원
                <input type="radio" name="admin" value="1" <%= admin == 1 ? "checked" : "" %>>관리자
            </td>    
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="확인" onclick="return joinCheck()">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>
    <div class="message">${ message }</div>
</form>
</div>
</body>
</html>