<%--
  Created by IntelliJ IDEA.
  User: Niraj Raj Pandey
  Date: 10/16/2017
  Time: 8:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Niraj Raj Pandey
  Date: 10/15/2017
  Time: 6:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>Login Form</title>
  <link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>

<div class="loginBox">
  <img src="../images/user.png" class="user">
  <h2>Login Form</h2>
  <h2>${msg}</h2>

  <form class="login-form" method="post" action="login">
    <input type="hidden" name="page" value="login">
    <p>Username</p>
    <input type="text" name="username" placeholder="enter your username here">
    <p>Password</p>
    <input type="Password" name="password" placeholder="enter your password here">
    <input type="submit" name="" value="Login">

    <a href="#">Forget Password?</a>
  </form>
</div>
</body>
</html>

