<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@page import="com.jsp.board.BoardDTO"%>
<%@page import="com.jsp.board.BoardDAO"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>게시글 상세보기</title>
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
        .table th {
            background-color: var(--pastel-green);
            color: #2c3e50;
        }
        .btn-custom {
            background-color: var(--pastel-green);
            border-color: var(--pastel-green);
            color: #2c3e50;
        }
        .btn-custom:hover {
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
    </style>
</head>
<body>
    <%
    String strID = request.getParameter("bId");
    BoardDAO dao = BoardDAO.getInstance();
    BoardDTO dto = dao.contentView(strID);
    request.setAttribute("content_view", dto);
    %>

    <div class="container">
        <h1 class="text-center mb-4" style="color: #2c3e50;">게시글 상세보기</h1>

        <form action="modifyForm.jsp" method="post" accept-charset="UTF-8">
            <input type="hidden" name="bId" value="${content_view.bId}">
            <input type="hidden" name="bName" value="${content_view.bName}">
            <input type="hidden" name="bHit" value="${content_view.bHit}">
            <input type="hidden" name="bTitle" value="${content_view.bTitle}">
            <input type="hidden" name="bContent" value="${content_view.bContent}">

            <table class="table table-bordered">
                <tr>
                    <th scope="row">번호</th>
                    <td>${content_view.getbId()}</td>
                </tr>
                <tr>
                    <th scope="row">조회수</th>
                    <td>${content_view.getbHit()}</td>
                </tr>
                <tr>
                    <th scope="row">이름</th>
                    <td>${content_view.bName}</td>
                </tr>
                <tr>
                    <th scope="row">제목</th>
                    <td>${content_view.bTitle}</td>
                </tr>
                <tr>
                    <th scope="row">내용</th>
                    <td>
                        <p>${content_view.bContent}</p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">
                        <input type="submit" class="btn btn-custom" value="수정">
                        <a href="boardList.jsp" class="btn btn-secondary">목록보기</a>
                        <a href="delete.jsp?bId=${content_view.bId}" class="btn btn-danger">삭제</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>