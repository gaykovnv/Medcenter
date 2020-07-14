<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 13.07.2020
  Time: 10:14
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
    <h1>New Address</h1>

    <%--@elvariable id="address" type="java"--%>
    <form:form action="saveAddress" method="post" modelAttribute="address">
        <table border="0" cellpadding="5">
            <tr>
                <td>ID:</td>
                <td><form:input path="id"/></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><form:input path="country"/></td>
            </tr>
            <tr>
                <td>City:</td>
                <td><form:input path="city"/></td>
            </tr>
            <tr>
                <td>Street:</td>
                <td><form:input path="street"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"/></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
