<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 11/1/2017
  Time: 7:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Submit Quiz</title>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="../css/table.css">
</head>
<body>
<%@include file="../includes/menu.jsp"%>
<h1>That's all. Quiz is Done !</h1>
<h2>Press View Result to view your Result</h2>
<form class="quiz-form" method="post" action="viewResult">
    <input type="hidden" name="page" value="viewResult">
    <input type="submit" name="" value="View Result">
</form>
</body>
</html>
