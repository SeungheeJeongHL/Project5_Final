<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>게시판</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">


    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #ffa5a5;
            color: #000000;
        }
    </style>
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

</head>
<body>

<br>
<table id ="list" class="table table-bordered text-center">
    <th class="table-header col-1">번호</th>
    <th class="table-header col-2">식당 이름</th>
    <th class="table-header col-2">식당 위치</th>
    <th class="table-header col-4">메뉴</th>
    <th class="table-header col-2">Regdate</th>
    <th class="table-header col-2">Action</th>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regDate}</td>

            <td>
                <button type="button" class="button" onclick="location.href='editform/${u.seq}'">
                    수정
                </button>
                <button type="button" class="button" onclick="delete_ok('${u.seq}')">
                    삭제
                </button>
                <button type="button" class="button"  onclick="location.href='view/${u.seq}'">
                    보기
                </button>
            </td>
        </tr>
    </c:forEach>
</table>

<button type="button" onclick="location.href='add'" class="button">
    <i class="fa fa-plus"></i> 새로운 식단 추가
</button>
</body>
</html>
<script>
    function delete_ok(seq){
        if(confirm("정말 삭제하시겠습니까?")){
            location.href="deleteok/"+seq;
        }
    }
</script>
