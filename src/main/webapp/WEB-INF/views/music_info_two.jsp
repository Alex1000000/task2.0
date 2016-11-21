<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>

<h2>Music Information</h2>

<h4>The expression is: <c:out value="${expr}"/></h4>
<form action="${pageContext.request.contextPath}/postMusicInfoFromApi" method="post">
    <label for="name"><b>Enter Track Name:</b></label>
    <input name="expr" id="name" type="text">
    <%--<input name="expr" type="submit" value="requestmethod (post)">--%>
</form>
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