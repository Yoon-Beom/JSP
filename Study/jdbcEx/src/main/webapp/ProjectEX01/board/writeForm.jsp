<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>게시글 작성</title>
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
            max-width: 600px;
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
        .btn-submit {
            background-color: var(--pastel-green);
            border-color: var(--pastel-green);
            color: #2c3e50;
        }
        .btn-submit:hover {
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
        .form-control:focus {
            border-color: var(--pastel-green);
            box-shadow: 0 0 0 0.2rem rgba(168, 230, 207, 0.25);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center mb-4" style="color: #2c3e50;">게시글 작성</h1>

        <form action="writeCheck.jsp" method="post" accept-charset="UTF-8">
            <table class="table table-bordered">
                <tr>
                    <th scope="row">이름</th>
                    <td><input type="text" class="form-control" name="bName"></td>
                </tr>
                <tr>
                    <th scope="row">제목</th>
                    <td><input type="text" class="form-control" name="bTitle"></td>
                </tr>
                <tr>
                    <th scope="row">내용</th>
                    <td><textarea class="form-control" name="bContent" rows="10"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">
                        <input type="submit" class="btn btn-submit" value="입력">
                        <a href="boardList.jsp" class="btn btn-secondary">목록보기</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>