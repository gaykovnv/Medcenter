<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21.07.2020
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>myApp</title>
</head>
<body>
<div align="center">
    <h1>Result search</h1>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Fname</th>
            <th>Lname</th>
            <th>Patronymic</th>
            <th>Telephone</th>
        </tr>
        <c:forEach items="${result}" var="patient">
            <tr>
                <td>${patient.id}</td>
                <td>${patient.fname}</td>
                <td>${patient.lname}</td>
                <td>${patient.patronymic}</td>
                <td>${patient.telephone}</td>
            </tr>
        </c:forEach>
    </table>
    <a href="patient">Back</a>
</div>
</body>
</html>
