<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/31/2017
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quiz Outcome</title>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="../css/table.css">
</head>
<body>
<%@include file="../includes/menu.jsp"%>
<table>
    <thead>
    <tr>
        <th>Question</th>
        <th>Selected Answer</th>
        <th>Correct Answer</th>
        <th>Marks</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${quizResult}" var="result">
        <tr>
            <td>${result.question}</td>
            <td>${result.selectedAnswer}</td>
            <td>${result.correctAnswer}</td>
            <td>${result.marks}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<form class="finish-quiz" method="post" action="finishQuiz">
    <input type="hidden" name="page" value="finishQuiz">
    <input type="submit" name="" value="Finish Quiz">
</form>
</body>
</html>
