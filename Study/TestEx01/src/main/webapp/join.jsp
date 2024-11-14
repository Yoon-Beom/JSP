<%@page import="javax.swing.Spring"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String residentNumber1 = request.getParameter("residentNumber1");
	String residentNumber2 = request.getParameter("residentNumber2"); 
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	String confirmPassword = request.getParameter("confirmPassword");
	String email = request.getParameter("email");
	String emailaddr = request.getParameter("emailaddr");
	String emailSelect = request.getParameter("emailSelect");
	String addrNumber = request.getParameter("addrNumber");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String cellPhone = request.getParameter("cellPhone");
	String job = request.getParameter("job");
	String receive = request.getParameter("receive");
	String[] interests = request.getParameterValues("interest");
	%>
	
	<table>
		<tr>
			<td>
				이름 : 
			</td>
			<td>
				<b><%= name %></b>
			</td>
		</tr>
		<tr>
			<td>
				주민번호 : 
			</td>
			<td>
				<b><%= residentNumber1 %>-<%= residentNumber2 %></b>
			</td>
		</tr>
		<tr>
			<td>
				아이디 : 
			</td>
			<td>
				<b><%= userid %></b>
			</td>
		</tr>
		<tr>
			<td>
				비밀번호 : 
			</td>
			<td>
				<b><%= password %>, <%= confirmPassword %></b>
			</td>
		</tr>
		<tr>
			<td>
				이메일 : 
			</td>
			<td>
				<b><%
					out.print(email);
					if(emailaddr == null) {
						out.print(emailSelect);
					} else {
						out.print(emailaddr);
					}
				%></b>
			</td>
		</tr>
		<tr>
			<td>
				우편번호 : 
			</td>
			<td>
				<b><%= addrNumber %></b>
			</td>
		</tr>
		<tr>
			<td>
				주소 : 
			</td>
			<td>
				<b><%= addr1 %> <%= addr2 %></b>
			</td>
		</tr>
		<tr>
			<td>
				핸드폰 번호 : 
			</td>
			<td>
				<b><%= cellPhone %></b>
			</td>
		</tr>
		<tr>
			<td>
				직업 : 
			</td>
			<td>
				<b><%= job %></b>
			</td>
		</tr>
		<tr>
			<td>
				메일/SMS 정보 수신 : 
			</td>
			<td>
				<b><%= receive %></b>
			</td>
		</tr>
		<tr>
			<td>
				관심분야 : 
			</td>
			<td>
				<b><%
					if(interests == null) {
						out.print("관심 분야 없음");
					} else {
						for(int i = 0; i < interests.length; i++) {
							out.print(interests[i] + " ");
						}
					}
				%></b>
			</td>
		</tr>
		<tr>
			<td>
				<b><a href="javascript:history.go(-1)"></a></b>
			</td>
		</tr>
	</table>
</body>
</html>