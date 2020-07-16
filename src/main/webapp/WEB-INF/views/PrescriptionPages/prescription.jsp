<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 14.07.2020
  Time: 21:56
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
    <h1>Manager Prescription</h1>

    <form method="get" action="search">
        <input type="text" name="keyword"/>
        <input type="submit" value="Search">
    </form>
    <hr>
    <h3><a href="newPrescription">New prescription</a></h3>
    <table border="5" cellpadding="5"> Prescription
        <tr>
            <th>ID</th>
            <th>Description</th>
            <th>Doctor</th>
            <th>DateCreate</th>
            <th>Deadline</th>
            <th>Priority</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${listPrescription}" var="prescription">
            <tr>
                <td>${prescription.id}</td>
                <td>${prescription.description}</td>
                <td> </td>
                <td>${prescription.dateCreate}</td>
                <td>${prescription.deadline}</td>
                <td>${prescription.priority}</td>
                <td>
                    <a href="editPrescription?id=${prescription.id}">edit</a>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="deletePrescription?id=${prescription.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h3><a href="/myApp/">Main Page</a></h3>
</div>
</body>
</html>
