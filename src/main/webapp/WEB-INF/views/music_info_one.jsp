<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Student Information</h2>
<form:form method="POST" action="/postMusicInfoFromApi">
    <table>
        <tr>
            <td><form:label path="name">Name</form:label></td>
            <td><form:input path="name" /></td>
        </tr>
        <tr>
            <td><form:label path="age">Age</form:label></td>
            <td><form:input path="age" /></td>
        </tr>
        <tr>
            <td><form:label path="id">id</form:label></td>
            <td><form:input path="id" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>

<%--<html>--%>
<%--<head><title>First JSP</title></head>--%>
<%--<body>--%>
<%--<%--%>
    <%--double num = Math.random();--%>
    <%--if (num > 0.95) {--%>
<%--%>--%>
<%--<h2>You'll have a luck day!</h2><p>(<%= num %>)</p>--%>
<%--<%--%>
<%--} else {--%>
<%--%>--%>
<%--<h2>Well, life goes on ... </h2><p>(<%= num %>)</p>--%>
<%--<%--%>
    <%--}--%>
<%--%>--%>
<%--<a href="${pageContext.request.contextPath}/getMusicInfo/">please, click to continue!</a>--%>
<%--<tr>--%>
<%--<td colspan = "2"><input type = "submit" value = "Start test"/></td>--%>
<%--</tr>--%>
<%--</body>--%>
<%--</html>--%>