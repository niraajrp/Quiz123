<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/15/2017
  Time: 7:40 PM
  To change this template use File | Settings | File Templates.
--%><title>Database Entries</title>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <link rel="stylesheet" href="../css/table.css">

</head>
<body>
<%@include file="../includes/menu.jsp"%>

<div style="text-align: center">
    <a href="insertUser?page=insertUserForm">Add new User</a>
</div>
<div style="text-align: center">
    <h3>${inserted}</h3>
    <h3>${edited}</h3>
    <h3>${deleted}</h3>
</div>
    <table>
        <thead>
        <tr>
            <th>User Name</th>
            <th>Password</th>
            <th>Role</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${userList}" var="user">
        <tr>
            <td>${user.name}</"td>
            <td>${user.password}</td>
            <td>${user.role}</td>
            <td><a href="edit?page=editUserForm&id=${user.id}"><i class="fa fa-pencil fa-2x" aria-hidden="true"></i></a> </td>
            <td><a href="delete?page=deleteUser&id=${user.id}"><i class="fa fa-trash fa-2x" aria-hidden="true"></i></a> </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</body>
</html>