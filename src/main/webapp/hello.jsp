<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Post Or Get</title>
    <style>
        fieldset {
            background: #e6a8ed;
            color: #4f6aff;
            border: 5px ridge #cddbd8;
            width: 30%;
            font-family: sans-serif;
            font-size: 100%;
            position: absolute;
            top: 5%;
            /*bottom: 20%;*/
            left: 30%;
            /*right: 20%;*/
        }
    </style>
</head>

<body>
<fieldset>
    <p align="center">
    <h1>Enter Something</h1>
    </p>
    <form action="${pageContext.request.contextPath}/postSearchMusicInfoFromApi" method="post" onsubmit="return check()">
    <%--<form method="post">--%>
        <label for="name">Please, enter Artist name: </label>
        <input name="expr" id="name" type="text">

        <button >get similar</button>
    </form>
    <form action="${pageContext.request.contextPath}/postSearchTrakInfo" method="post" onsubmit="return check()">

        <button >go To get Info</button>
    </form>

</fieldset>

</body>

</html>





