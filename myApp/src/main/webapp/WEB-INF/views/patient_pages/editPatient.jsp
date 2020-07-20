<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 13.07.2020
  Time: 22:51
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
    <h1>Edit Patient</h1>
    <hr>
    <%--@elvariable id="patient" type="myApp"--%>
    <form:form action="savePatient" method="post" modelAttribute="patient">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID:</td>
                <td>
                    ${patient.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
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
                <td>Telephone:</td>
                <td><form:input path="telephone"/></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save"></td>
                <td><a href="patient">Back</a></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
