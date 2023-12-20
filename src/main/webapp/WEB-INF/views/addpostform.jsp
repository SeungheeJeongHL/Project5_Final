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
    <title>게시글 추가</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>
<form action="addok" method="POST">
    <table class="table table-bordered">
        <tr><td>식당 이름</td><td><input type="text" name="title"/></td></tr>
        <tr><td>식당 위치:</td><td><select name="writer" id="writer" name="writer">
            <option value="514 학생회관">514 학생회관</option>
            <option value="514 맘스키친">514 맘스키친</option>
            <option value="511 복지동">511 복지동</option>
            <option value="302 김영길 그레이스 스쿨">302 김영길 그레이스 스쿨</option></td></tr>
        <tr><td>메류 </td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <input type="hidden" name="regDate" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>">
    </table>
    <button type="submit" class="button">
         추가
    </button>
    <button type="button" class="button" onclick="location.href='list'">
        취소
    </button>
</form>
</body>
</html>
