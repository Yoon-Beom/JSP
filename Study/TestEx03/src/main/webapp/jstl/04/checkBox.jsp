<%-- checkBox.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>명품 브랜드</h2>
관심 브랜드를 선택해주세요.<br>
<form action="paramValues.jsp">
	<input type="checkbox" name="item" value="Gucci"> Gucci
	<input type="checkbox" name="item" value="Prada"> Prada
	<input type="checkbox" name="item" value="Louis Vuitton"> Louis Vuitton
	<input type="checkbox" name="item" value="Dolce & Gabbana"> Dolce & Gabbana <br>
	<input type="checkbox" name="item" value="Ralph Lauren"> Ralph Lauren
	<input type="checkbox" name="item" value="Yves Saint Laurent"> Yves Saint Laurent
	<input type="checkbox" name="item" value="Loewe"> Loewe
	<input type="checkbox" name="item" value="Chanel"> Chanel <br>
	<input type="checkbox" name="item" value="Dior"> Dior
	<input type="checkbox" name="item" value="Cartier"> Cartier
	<input type="checkbox" name="item" value="Tiffany & Co."> Tiffany & Co.
	<input type="checkbox" name="item" value="Fendi"> Fendi <br>
	<input type="checkbox" name="item" value="Armani"> Armani
	<input type="checkbox" name="item" value="Balenciaga"> Balenciaga
	<input type="checkbox" name="item" value="Bvlgari"> Bvlgari
	<input type="checkbox" name="item" value="Calvin Klein"> Calvin Klein <br>
	<input type="checkbox" name="item" value="Burberry"> Burberry
	<input type="checkbox" name="item" value="Valentino"> Valentino
	<input type="checkbox" name="item" value="Hermès"> Hermès
	<input type="checkbox" name="item" value="Versace"> Versace <br>
	<input type="submit" value="전송">
</form>
</body>
</html>