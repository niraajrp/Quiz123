<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/30/2017
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Start Quiz</title>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
</head>
<body>
<%--<%--%>
    <%--response.setHeader("Cache-Control","no-cache");--%>
    <%--response.setHeader("Cache-Control","no-store");--%>
    <%--response.setHeader("Pragma","no-cache");--%>
    <%--response.setDateHeader ("Expires", 0);--%>
<%--%>--%>

<%@include file="../includes/menu.jsp"%>
<form class="quiz-form" method="post" action="nextQuestion">
    <input type="hidden" name="page" value="nextQuestion">
    <input type="hidden" name="id" value="${questions.id}">
    <input type="hidden" name="question" value="${questions.question}">
    <input type="hidden" name="correctAnswer" value="${questions.correctAnswer}">
    <p class="questions"><h2>${questions.question}</h2></p>
    <ul class="answers">
        <input type="radio" name="answer" value="${questions.optionOne}" id="answer1"><label for="answer1">${questions.optionOne}</label><br/>
        <input type="radio" name="answer" value="${questions.optionTwo}" id="answer2"><label for="answer2">${questions.optionTwo}</label><br/>
        <input type="radio" name="answer" value="${questions.optionThree}" id="answer3"><label for="answer3">${questions.optionThree}</label><br/>
        <input type="radio" name="answer" value="${questions.optionFour}" id="answer4"><label for="answer4">${questions.optionFour}</label><br/>
    </ul>
    <input type="submit" name="" value="Next Question">
</form>
</body>
</html>
