<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/24/2017
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New User</title>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <link rel="stylesheet" href="../css/table.css">

</head>
<body>
<%@include file="../includes/menu.jsp"%>
<table>
    <thead>
    <tr>
        <th>User Name</th>
        <th>Password</th>
        <th>Role</th>
        <th>Add User</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <form class="insert-form" method="post" action="insertUser">
            <input type="hidden" name="page" value="insertUser">
            <td><input type="text" name="username" placeholder="enter your username here" maxlength="15" minlength="3" required></td>
            <td><input type="Password" name="password" placeholder="enter your password here" maxlength="20" minlength="3" required></td>
            <td><input type="text" name="role" placeholder="enter your role here" required></td>
            <td><input type="submit" name="" value="Add User"></td>
        </form>
    </tr>
    </tbody>
</table>
</body>
</html>
