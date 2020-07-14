<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 13.07.2020
  Time: 22:04
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
    <h1>Manager Patients</h1>

    <form method="get" action="search">
        <input type="text" name="keyword"/>
        <input type="submit" value="Search">
    </form>
    <h3><a href="newPatient">New Patient</a></h3>
    <hr>
    <table border="5" cellpadding="5"> Patients
        <tr>
            <th>ID</th>
            <th>Fname</th>
            <th>Lname</th>
            <th>Patronymic</th>
            <th>Telephone</th>
            <th>Address</th>
            <td>Action</td>
        </tr>
        <c:forEach items="${listPatients}" var="patient">
            <tr>
                <td>${patient.id}</td>
                <td>${patient.fname}</td>
                <td>${patient.lname}</td>
                <td>${patient.patronymic}</td>
                <td>${patient.telephone}</td>
                <th><a href="editAddress?id=${patient.id}">address</a></th>
                <th>
                    <a href="editPatient?id=${patient.id}">edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deletePatient?id=${patient.id}">delete</a>
                </th>
            </tr>
        </c:forEach>
    </table>
    <h3><a href="/myApp/">Addresss</a></h3>
</div>
</body>
</html>
