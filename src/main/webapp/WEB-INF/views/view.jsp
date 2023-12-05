
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <style>
        .button {
            background-color: #ffa5a5;
            border: none;
            color: #000000;
            padding: 15px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }
    </style>
    <title>게시글 상세보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>
<div class="container mt-3">
    <h2 class="mb-4">메뉴 상세보기</h2>
    <div class="card">
        <div class="card-header">
            <h5 class="card-title">${board.title}</h5>
        </div>
        <div class="card-body">
            <p class="card-text">식당 위치: ${board.writer}</p>
            <p class="card-text">메뉴: ${board.content}</p>
            <p class="card-text">작성일: ${board.regDate}</p>
        </div>
        <div class="card-footer">
            <button type="button" class="button" onclick=" history.back()">
                목록으로
            </button>
        </div>
    </div>
</div>
</body>
</html>
