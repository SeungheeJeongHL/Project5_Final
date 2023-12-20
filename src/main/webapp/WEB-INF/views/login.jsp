<%--
  Created by IntelliJ IDEA.
  User: eunda
  Date: 2023/12/16
  Time: 8:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPEhtml>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <style>
        img, label {
            display: inline-block;
        }

        label {
            width: 130px
        }

        button {
            background-color: #ffa5a5;
            color: #000000;
            font-size: 15px
        }
    </style>
</head>
<body>
<div style='width:100%;text-align:center;padding-top:100px'>
    <form method="post" action="loginOk">
        <div><label>ID: </label>
            <input type='text' name='userid'/></div>
        <div><label>Password: </label>
            <input type='password' name='password'/></div>
        <br><br>
        <button type='submit'>login</button>
    </form>
</div>
</body>
</html>
