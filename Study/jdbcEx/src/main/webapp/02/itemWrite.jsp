<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "jsp";
	String pass = "1234";

	String sql = "select * from item";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table widh="800" border="1">
		<tr>
			<th>이름</th>
			<th>가격</th>
			<th>설명</th>
		</tr>
		<%
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, uid, pass);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					out.println("<tr>");
					out.println("<td>" + rs.getString("name") + "</td>");
					out.println("<td>" + rs.getInt("price") + "</td>");
					out.println("<td>" + rs.getString("description") + "</td>");
					out.println("</tr>");
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				if(rs != null) { rs.close(); }
				if(stmt != null) { stmt.close(); }
				if(conn != null) { conn.close(); }
			}
		%>
	</table>
</body>
</html>