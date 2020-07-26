<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21.07.2020
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
          integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <%@ page isELIgnored="false" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>MyApp</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col">

            <div align="center">
                <h1>Search Result</h1>
                <table class="table">
                    <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Fname</th>
                        <th>Lname</th>
                        <th>Patronymic</th>
                        <th>Specialty</th>
                    </tr>
                    </thead>
                    <c:forEach items="${result}" var="doctor">
                        <tr>
                            <td scope="col">${doctor.id}</td>
                            <td scope="col">${doctor.fname}</td>
                            <td scope="col">${doctor.lname}</td>
                            <td scope="col">${doctor.patronymic}</td>
                            <td scope="col">${doctor.specialty}</td>
                        </tr>
                    </c:forEach>
                </table>
                <a class="btn btn-outline-primary my-2" href="doctor">Back</a>

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
