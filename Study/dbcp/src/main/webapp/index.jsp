<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 집</title>
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

.container {
    text-align: center;
    background-color: #BECFE4;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(174, 198, 207, 0.3);
}

h1 {
    color: #4A6491;
    margin-bottom: 20px;
}

a {
    text-decoration: none;
    color: white;
    background-color: #7E9CD0;
    padding: 10px 20px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

a:hover {
    background-color: #6A89C0;
}
</style>
</head>
<body>
	<div class="container">
        <h1>나의 집</h1>
        <a href="login.do">로그인 페이지로 이동</a>
    </div>
</body>
</html>