<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <title>Info From API</title>
</head>
<body>

<h2>Submitted Song Information</h2>
<form action="${pageContext.request.contextPath}/postMusicInfoFromApi" method="post">
    <label for="name">Please, enter something else: </label>
    <input name="expr" id="name" type="submit">
    <h4>The expression is: <c:out value="${expr}"/></h4>
</form>
</body>
</html>