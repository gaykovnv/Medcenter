<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 14.07.2020
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>myApp</title>
</head>
<body>
<div align="center">
    <h1>New Doctor</h1>
    <hr>

    <%--@elvariable id="doctor" type="myApp"--%>
    <form:form action="saveDoctor" method="post" modelAttribute="doctor">
        <table border="0" cellpadding="5">
            <tr>
                <td>Fname:</td>
                <td><form:input path="fname"/></td>
            </tr>
            <tr>
                <td>Lname:</td>
                <td><form:input path="lname"/></td>
            </tr>
            <tr>
                <td>Patronymic:</td>
                <td><form:input path="patronymic"/></td>
            </tr>
            <tr>
                <td>Specialty:</td>
                <td><form:input path="specialty"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
                <td><a href="doctor">Back</a></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
