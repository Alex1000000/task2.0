<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Info From API</title>
    <style>
        fieldset {
            /*background: #e6a8ed;*/
            color: #0c0577;/*
            border: 5px ridge #cddbd8;
            width: 30%;*/
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
<body style="background: #b5d7ed">

    <fieldset>
        <h2>Here you can get similar bands</h2>
        <form action="${pageContext.request.contextPath}/postSearchMusicInfoFromApi" method="post" onsubmit="return check()">

            <label for="name">Please, enter something else: </label>
            <input name="expr" id="name" type="text">
            <h4>You have entered: <c:out value="${expr}"/></h4>
            <label>Here is the similar bands</label>
            <ul>
                <c:forEach var="entry" items="${simi}">
                    <li><b><c:out value="${entry}"/></b>: </li>
                </c:forEach>
            </ul>
            <h3> Summary: <c:out value="${infAbout}"/></h3>
            <ul>
                <c:forEach var="entry" items="${artistTags}">
                    <li><b><c:out value="${entry}"/></b>: </li>
                </c:forEach>
            </ul>

            <button>
                getSimilar
            </button>


        </form>
        <form action="${pageContext.request.contextPath}/postSearchTrakInfo" method="post">
            <button style="background: #d612c9"  >
                GetInfo
            </button>
        </form>

    </fieldset>

</body>
</html>