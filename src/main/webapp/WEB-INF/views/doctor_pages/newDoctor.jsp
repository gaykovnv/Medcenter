<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 14.07.2020
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>myApp</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col">
            <div align="center">
                <h1>New Doctor</h1>
                <hr>

                <%--@elvariable id="doctor" type="myApp"--%>
                <form:form action="saveDoctor" method="post" modelAttribute="doctor">
                    <table class="table">
                        <tr>
                            <td scope="col">Fname:</td>
                            <td scope="col"><form:input path="fname"/></td>
                        </tr>
                        <tr>
                            <td scope="col">Lname:</td>
                            <td scope="col"><form:input path="lname"/></td>
                        </tr>
                        <tr>
                            <td scope="col">Patronymic:</td>
                            <td scope="col"><form:input path="patronymic"/></td>
                        </tr>
                        <tr>
                            <td scope="col">Specialty:</td>
                            <td scope="col"><form:input path="specialty"/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input class="btn btn-outline-primary my-2" type="submit" value="Save"></td>
                            <td><a class="btn btn-outline-primary my-2" href="doctor">Back</a></td>
                        </tr>
                    </table>
                </form:form>

                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
                        crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
                        crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
                        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
                        crossorigin="anonymous"></script>
            </div>
        </div>
    </div>
</div>
</body>
</html>
