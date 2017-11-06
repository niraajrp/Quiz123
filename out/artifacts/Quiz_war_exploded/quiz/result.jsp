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
<style>
    .green {
        color: green;
    }

    .red    {
        color: red;
    }
</style>
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
        <c:choose>
            <c:when test="${result.selectedAnswer==result.correctAnswer}">
                <tr>
                    <td class="green">${result.question}</td>
                    <td class="green">${result.selectedAnswer}</td>
                    <td class="green">${result.correctAnswer}</td>
                    <td class="green">${result.marks}</td>
                </tr>
            </c:when>
            <c:otherwise>
                <tr>
                    <td class="red">${result.question}</td>
                    <td class="red">${result.selectedAnswer}</td>
                    <td class="red">${result.correctAnswer}</td>
                    <td class="red">${result.marks}</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    </tbody>
</table>
<c:set var="total" value="${0}"/>
<c:forEach var="result" items="${quizResult}">
    <c:set var="total" value="${total + result.marks}" />
</c:forEach>
<div style="text-align: center">
    <h1>Your Total Score is </h1>
    <h1>${total}</h1>
</div>

<form class="finish-quiz" method="post" action="finishQuiz">
    <input type="hidden" name="page" value="finishQuiz">
    <input type="submit" name="" value="Finish Quiz">
</form>
</body>
</html>
