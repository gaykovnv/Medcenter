<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 13.07.2020
  Time: 10:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>myApp</title>
</head>
<body>
<div align="center">
    <h1>New Address</h1>

    <%--@elvariable id="Address" type="java"--%>
    <form:form action="saveAddress" method="post" modelAttribute="Address">
        <table border="0" cellpadding="5">
            <tr>
                <td>Id:</td>
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
