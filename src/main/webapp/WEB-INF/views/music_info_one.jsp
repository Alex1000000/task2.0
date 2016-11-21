

<html>
<head><title>First JSP</title></head>
<body>
<%
    double num = Math.random();
    if (num > 0.95) {
%>
<h2>You'll have a luck day!</h2><p>(<%= num %>)</p>
<%
} else {
%>
<h2>Well, life goes on ... </h2><p>(<%= num %>)</p>
<%
    }
%>
<a href="${pageContext.request.contextPath}/getMusicInfo/">please, click to continue!</a>
<tr>
<td colspan = "2"><input type = "submit" value = "Start test"/></td>
</tr>
</body>
</html>