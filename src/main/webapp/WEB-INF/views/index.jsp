<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>myApp</title>
</head>
<body>
<div align="center">
    <h1>Medcenter Manager</h1>

<%--    <form method="get" action="search">--%>
<%--        <input type="text" name="keyword"/>--%>
<%--        <input type="submit" value="Search">--%>
<%--    </form>--%>
<%--    <h3><a href="newAddress">New address</a></h3>--%>
    <hr>

<%--    <table border="5px" cellpadding="5"> Addresss--%>
<%--        <tr>--%>
<%--            <th>ID</th>--%>
<%--            <th>Country</th>--%>
<%--            <th>City</th>--%>
<%--            <th>Street</th>--%>
<%--            <th>Patient</th>--%>
<%--            <td>Action</td>--%>
<%--        </tr>--%>
<%--        <c:forEach items="${addressList}" var="Address">--%>
<%--            <tr>--%>
<%--                <td>${Address.id}</td>--%>
<%--                <td>${Address.country}</td>--%>
<%--                <td>${Address.city}</td>--%>
<%--                <td>${Address.street}</td>--%>
<%--                <td><a href="editPatient?id=${patient.id}">patient</a></td>--%>
<%--                <td>--%>
<%--                    <a href="editAddress?id=${Address.id}">Edit</a>--%>
<%--                    &nbsp;&nbsp;&nbsp;&nbsp;--%>
<%--                    <a href="deleteAddress?id=${Address.id}">Delete</a> </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
    <h3><a href="patient">Patients</a></h3>
    <h3><a href="doctor">Doctors</a></h3>
    <h3><a href="prescription">Prescription</a></h3>
</div>

</body>
</html>