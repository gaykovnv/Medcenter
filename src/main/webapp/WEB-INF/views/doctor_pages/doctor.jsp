<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 14.07.2020
  Time: 16:21
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
    <h1>Doctor Manager</h1>

    <form method="post" action="filterDoctor">
        <input type="text" name="keyword"/>
        <input type="submit" value="Filter">
    </form>
    <hr>
    <h3><a href="newDoctor">New Doctor</a></h3>
    <table border="5" cellpadding="5"> Doctors
        <tr>
            <th>ID</th>
            <th>Fname</th>
            <th>Lname</th>
            <th>Patronymic</th>
            <th>Specialty</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listDoctor}" var="doctor">
            <tr>
                <td>${doctor.id}</td>
                <td>${doctor.fname}</td>
                <td>${doctor.lname}</td>
                <td>${doctor.patronymic}</td>
                <td>${doctor.specialty}</td>
                <td>
                    <a href="editDoctor?id=${doctor.id}">edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deleteDoctor?id=${doctor.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h3><a href="/myApp/">Main Page</a></h3>
</div>
</body>
</html>
