<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 15.07.2020
  Time: 11:16
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
    <h1>Edit prescription</h1>

    <hr>
    <%--@elvariable id="prescription" type="myApp"--%>
    <form:form action="savePrescription" method="post" modelAttribute="prescription">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID:</td>
                <td>
                    ${prescription.id}
                    <form:hidden path="id"/>
                </td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><form:input path="description"/></td>
            </tr>
            <tr>
                <td>Doctor:</td>
<%--                &lt;%&ndash;@elvariable id="doctor" type="myApp"&ndash;%&gt;--%>
<%--                <form:form action="saveDoctor" method="post" modelAttribute="doctor">--%>
<%--                <td><a href="editDoctor?specialty=${doctor.specialty}">Doctor</a></td>--%>
<%--                </form:form>--%>
            </tr>
            <tr>
                <td>DateCreate:</td>
                <td><form:input path="dateCreate"/></td>
            </tr>
            <tr>
                <td>Deadline:</td>
                <td><form:input path="deadline"/></td>
            </tr>
            <tr>
                <td>Priority:</td>
                <td><form:input path="priority"/></td>
            </tr>
            <tr>
                <td></td>
                <td><h5>(use priority: normal, cito , statim)</h5></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"/></td>
                <td><a href="prescription">Back</a></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
