<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Facts</title>
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

<body style="background-color: rgba(205,255,192,0.92)">
<%--<fieldset>--%>
    <p align="center"> <font size="7" color="#9b146c" face="Arial"><b>Facts!</b></font> </p>
    <form action="${pageContext.request.contextPath}/getMusicInfo/">
        <label for="name">Please, enter song name: </label>
        <input name="expr" id="name" type="text">
    </form>
    <h4>The expression is: <c:out value="${expr}"/></h4>

<%--</fieldset>--%>
</body>

</html>


<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"--%>
         <%--pageEncoding="ISO-8859-1"%>--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<%--<html>--%>
<%--<head>--%>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">--%>
    <%--<title>Plugin tester</title>--%>
<%--</head>--%>

<%--<body>--%>
<%--<h1>Servlet Classificator Demo(Enter a number, please)</h1>--%>
<%--<form action = "servlet-parameters" method = "GET">--%>
    <%--<table border = "0">--%>

        <%--<tr>--%>
            <%--<td><b>Parameter1</b></td>--%>
            <%--<td><input type = "text" name = "parameter1"--%>
                       <%--value = "0" size = "70"/></td>--%>
        <%--</tr>--%>

        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><b>Parameter2</b></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><input type = "text" name = "parameter2"&ndash;%&gt;--%>
        <%--&lt;%&ndash;value = "001" size = "65"/></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>

        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td>Parameter choice</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<select name = "possible-result">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<option value = "SUCCESS">Success</option>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<option value = "ERR-500">ERR-500 Technical error</option>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<option value = "ERR-1003">ERR-1003 Requested information is not available</option>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<option value = "ERR-1005">ERR-1005 Some other Error</option>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>

        <%--<tr>--%>
            <%--<td colspan = "2"><input type = "submit" value = "Start test"/></td>--%>
        <%--</tr>--%>
    <%--</table>--%>
    <%--<p>--%>
        <%--<a href="${pageContext.request.contextPath}/getMusicInfo/">please, click to continue!</a>--%>
    <%--</p>--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>



