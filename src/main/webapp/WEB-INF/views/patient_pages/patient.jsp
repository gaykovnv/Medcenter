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
                <h1>Manager Patients</h1>

                <form method="post" action="filterPatient">
                    <input type="text" name="keyword"/>
                    <input class="btn btn-outline-info m-2" type="submit" value="Filter">
                </form>
                <h3><a class="btn btn-outline-primary my-2" href="newPatient">New Patient</a></h3>
                <hr>
                <table class="table"> Patients
                    <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th></th>
                        <th>Fname</th>
                        <th>Lname</th>
                        <th>Patronymic</th>
                        <th>Telephone</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <c:forEach items="${listPatients}" var="patient">
                        <tr>
                            <td scope="col">${patient.id}</td>
                            <td>
                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-fill"
                                     fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
                                          d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                </svg>
                            </td>
                            <td scope="col">${patient.fname}</td>
                            <td scope="col">${patient.lname}</td>
                            <td scope="col">${patient.patronymic}</td>
                            <td scope="col">${patient.telephone}</td>
                            <td scope="col">
                                <a class="btn btn-outline-secondary m-2" href="editPatient?id=${patient.id}">edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a class="btn btn-outline-danger m-2" href="deletePatient?id=${patient.id}">delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <h3><a class="btn btn-outline-primary my-2" href="/myApp/">Main Page</a></h3>
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
