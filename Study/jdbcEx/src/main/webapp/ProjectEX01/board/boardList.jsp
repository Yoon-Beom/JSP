<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@page import="com.jsp.board.BoardDTO"%>
<%@page import="com.jsp.board.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>나의 게시판</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        :root {
            --pastel-green: #a8e6cf;
            --pastel-green-dark: #8ed7be;
            --pastel-green-light: #d1f5e9;
        }
        body {
            background-color: #f8f9fa;
        }
        .container {
            max-width: 800px;
            margin-top: 50px;
        }
        .table {
            background-color: white;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.05);
        }
        .table thead {
            background-color: var(--pastel-green);
            color: #2c3e50;
        }
        .table-hover tbody tr:hover {
            background-color: var(--pastel-green-light);
        }
        .btn-write {
            margin-top: 20px;
            background-color: var(--pastel-green);
            border-color: var(--pastel-green);
            color: #2c3e50;
        }
        .btn-write:hover {
            background-color: var(--pastel-green-dark);
            border-color: var(--pastel-green-dark);
            color: #2c3e50;
        }
        a {
            color: #2c3e50;
        }
        a:hover {
            color: var(--pastel-green-dark);
        }
        .card {
            border-color: var(--pastel-green);
        }
        .title-column {
            width: 40%;
        }
        .table th, .table td {
            text-align: center;
            vertical-align: middle;
        }
        .search-write-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }
        .search-container {
            display: flex;
            gap: 10px;
        }
    </style>
</head>
<body>
    <%
    BoardDAO dao = BoardDAO.getInstance();
    ArrayList<BoardDTO> list = dao.boardList();
    request.setAttribute("dtos", list);
    
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    pageContext.setAttribute("sdf", sdf);
    %>

    <div class="container">
        <h1 class="text-center mb-4" style="color: #2c3e50;">나의 게시판</h1>
        
		<div class="search-write-container">
            <div class="search-container">
                <select id="searchType" class="form-select" style="width: auto;">
                    <option value="author">작성자</option>
                    <option value="title_content">제목, 내용</option>
                </select>
                <input type="text" id="searchInput" class="form-control" placeholder="검색어를 입력하세요" style="width: 200px;">
                <button id="searchButton" class="btn btn-outline-secondary">검색</button>
            </div>
            <a href="writeForm.jsp" class="btn btn-write">글작성</a>
        </div>
        
        <div class="card">
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>번호</th>
                            <th>이름</th>
                            <th class="title-column">제목</th>
                            <th>날짜</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody id="boardTableBody">
                        <c:forEach var="dto" items="${dtos}">
                            <tr>
                                <td>${dto.bId}</td>
                                <td>${dto.bName}</td>
                                <td class="title-column"><a href="contentView.jsp?bId=${dto.bId}" class="text-decoration-none d-block">${dto.bTitle}</a></td>
                                <td>${sdf.format(dto.bDate)}</td>
                                <td>${dto.bHit}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById('searchButton').addEventListener('click', function() {
        	console.log("검색 버튼이 클릭되었습니다.");
            performSearch();
        });

        document.getElementById('searchInput').addEventListener('keypress', function(e) {
            if (e.key === 'Enter') { // Enter key
            	console.log("Enter 키가 눌렸습니다.");
                performSearch();
            }
        });

        function performSearch() {
        	console.log(document.getElementById('searchType'), document.getElementById('searchInput'));
            var searchType = document.getElementById('searchType').value;
            var searchQuery = document.getElementById('searchInput').value;
            console.log("검색 타입: " + searchType + ", 검색어: " + searchQuery);
            
            var xhr = new XMLHttpRequest();
            xhr.open('GET', 'searchBoard.jsp?type=' + encodeURIComponent(searchType) + '&query=' + encodeURIComponent(searchQuery), true);

            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4) { // 요청 완료
                    if (xhr.status === 200) { // 성공
                        updateTable(JSON.parse(xhr.responseText));
                    } else {
                        console.error('Error occurred: ' + xhr.status);
                    }
                }
            };

            xhr.send();
        }

        function updateTable(data) {
            var tbody = document.getElementById('boardTableBody');
            tbody.innerHTML = ''; // 기존 내용을 지웁니다.

            data.forEach(function(item) {
                var row = '<tr>' +
                    '<td>' + item.bId + '</td>' +
                    '<td>' + item.bName + '</td>' +
                    '<td class="title-column"><a href="contentView.jsp?bId=' + item.bId + '" class="text-decoration-none d-block">' + item.bTitle + '</a></td>' +
                    '<td>' + item.bDate + '</td>' +
                    '<td>' + item.bHit + '</td>' +
                    '</tr>';
                tbody.innerHTML += row; // 새로운 행 추가
            });
        }
    </script>
</body>
</html>