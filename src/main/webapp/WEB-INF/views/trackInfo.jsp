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
    <form action="${pageContext.request.contextPath}/postSearchTrakInfo" method="post" onsubmit="return check()">
        <label >Please, enter trackName: </label>
        <input name="trackName" id="nameTrack" type="text">
        <label >Please, enter Artist: </label>
        <input name="artistName" id="nameArtist" type="text">
        <h4>You have entered TrackName= <c:out value="${trackName}"/> ; Artist= <c:out value="${artistName}"/></h4>
        <label>Here is the track Info</label>
        <h4>Album = <c:out value="${trackAlbum}"/></h4>
        <h3> Info: <c:out value="${fmInfo}"/></h3>
        <h3> Summary: <c:out value="${words}"/></h3>
        <h3> someAbout: <c:out value="${someAbout}"/></h3>
        <label> The songs from this album discribed below:</label>
        <ul>
            <c:forEach var="entry" items="${trackNames}">
                <li><b><c:out value="${entry}"/></b>: </li>
            </c:forEach>
        </ul>

        <button style="background: #d612c9" >
            GetInfo
        </button>
    </form>
    <form action="${pageContext.request.contextPath}/postSearchMusicInfoFromApi" method="post">
        <button>
            getSimilar
        </button>
    </form>

</fieldset>
</body>
</html>