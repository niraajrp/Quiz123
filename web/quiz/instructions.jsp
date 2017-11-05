<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/30/2017
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quiz Instructions</title>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
</head>
<body>
<%@include file="../includes/menu.jsp"%>
<h1>Read the Instructions before begining the Quiz</h1>
<ul>
    <li>Read the questions properly</li>
    <li>Each question is worth the same point</li>
    <li>There is only one correct answer. Select the answer properly</li>
    <li>Finish the quiz within the limited time</li>
</ul>
<form class="quiz-form" method="post" action="nextQuestion">
    <input type="hidden" name="page" value="nextQuestion">
    <input type="hidden" name="id" value="0">
    <input type="submit" name="" value="Start Quiz">
</form>

</body>
</html>
