<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21.07.2020
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>MyApp</title>
</head>
<body>
<div align="center">
    <h1>Search Result</h1>
    <table border="1" cellpadding="5">
        <tr>
            <th>ID</th>
            <th>Fname</th>
            <th>Lname</th>
            <th>Patronymic</th>
            <th>Specialty</th>
        </tr>
        <c:forEach items="${result}" var="doctor">
            <tr>
                <td>${doctor.id}</td>
                <td>${doctor.fname}</td>
                <td>${doctor.lname}</td>
                <td>${doctor.patronymic}</td>
                <td>${doctor.specialty}</td>
            </tr>
            <a href="doctor">Back</a>
        </c:forEach>
    </table>
</div>
</body>
</html>
