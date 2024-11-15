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

	<form method="post" action="checkList">
		<table>
			<tr>
				<td>
					<input type="checkbox" name="item" value="Chanel"><b>Chanel</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Dior"><b>Dior</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Louis Vuitton"><b>Louis Vuitton</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Gucci"><b>Gucci</b>
				</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" name="item" value="Burberry"><b>Burberry</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Saint Laurent"><b>Saint Laurent</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Celine"><b>Celine</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Valentino"><b>Valentino</b>
				</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" name="item" value="Tiffany & Co."><b>Tiffany & Co.</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Bvlgari"><b>Bvlgari</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Salvatore Ferragamo"><b>Salvatore Ferragamo</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Loewe"><b>Loewe</b>
				</td>
			</tr>
			<tr>
				<td>
					<input type="checkbox" name="item" value="Fendi"><b>Fendi</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Prada"><b>Prada</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Givenchy"><b>Givenchy</b>
				</td>
				<td>
					<input type="checkbox" name="item" value="Bottega Veneta"><b>Bottega Veneta</b></td>
			</tr>
		</table>
		<input type="submit" value="전송">
	</form>
</body>
</html>