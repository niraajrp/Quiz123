<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/24/2017
  Time: 11:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
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
        <th>Edit</th>
    </tr>
    </thead>
    <tbody>

        <tr>
            <form class="edit-form" method="post" action="editUser">
                <input type="hidden" name="page" value="editUser">
                <input type="hidden" name="id" value="${user.id}">
                <td><input type="text" name="username" placeholder="enter your username here" maxlength="15" minlength="3" required value="${user.name}"></td>
                <td><input type="text" name="password" placeholder="enter your password here" maxlength="20" minlength="3" required value="${user.password}"></td>
                <td><input type="text" name="role" placeholder="enter your role here" required value="${user.role}"> </td>
                <td><input type="submit" name="" value="Edit User"></td>
            </form>

        </tr>

    </tbody>
</table>
</body>
</html>
