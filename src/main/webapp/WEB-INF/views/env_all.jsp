<%--
  Created by IntelliJ IDEA.
  User: Саша
  Date: 14.11.2016
  Time: 0:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <head>
        <title>Hi there!</title>
        <style>
            fieldset {
                background: #c0ff9c;
                color: #1c1385;
                border: 15px ridge #9b146c;
                width: 50%;
                font-family: sans-serif;
                font-size: 120%;
                position: absolute;
                top: 12.5%;
            //bottom: 25%;
                left: 22.5%;
            //right: 2%;
            }
        </style>
    </head>
</head>
<body>
<form action="${pageContext.request.contextPath}/getMusicInfo/">
    <label for="name"><b>Empty_expr:</b></label>
    <input name="expr" id="name" type="text">
</form>
</body>
</html>
