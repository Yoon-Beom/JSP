<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>당신이 좋아하는 명품 브랜드를 골라주세요</h1>
	
	<form method="post" action="checkList.jsp">
		<input type="checkbox" name="item" value="Chanel"><b>Chanel</b>
		<input type="checkbox" name="item" value="Dior"><b>Dior</b>
		<input type="checkbox" name="item" value="Louis Vuitton"><b>Louis Vuitton</b>
		<input type="checkbox" name="item" value="Gucci"><b>Gucci</b><br>
		<input type="checkbox" name="item" value="Burberry"><b>Burberry</b>
		<input type="checkbox" name="item" value="Saint Laurent"><b>Saint Laurent</b>
		<input type="checkbox" name="item" value="Celine"><b>Celine</b>
		<input type="checkbox" name="item" value="Valentino"><b>Valentino</b><br>
		<input type="checkbox" name="item" value="Tiffany & Co."><b>Tiffany & Co.</b>
		<input type="checkbox" name="item" value="Bvlgari"><b>Bvlgari</b>
		<input type="checkbox" name="item" value="Salvatore Ferragamo"><b>Salvatore Ferragamo</b>
		<input type="checkbox" name="item" value="Loewe"><b>Loewe</b><br>
		<input type="checkbox" name="item" value="Fendi"><b>Fendi</b>
		<input type="checkbox" name="item" value="Prada"><b>Prada</b>
		<input type="checkbox" name="item" value="Givenchy"><b>Givenchy</b>
		<input type="checkbox" name="item" value="Bottega Veneta"><b>Bottega Veneta</b><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>