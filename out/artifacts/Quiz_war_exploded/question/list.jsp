<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/26/2017
  Time: 8:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Questions</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <%@ taglib prefix = "q" uri = "http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <link rel="stylesheet" href="../css/table.css">
</head>
<body>

<%@include file="../includes/menu.jsp"%>



<div style="text-align: center">
    <a href="insertQuestion?page=insertQuestionForm">Add new Question</a>
</div>
<div style="text-align: center">
    ${inserted}
    ${deleted}
    ${edited}
</div>
<table>
    <thead>
    <tr>
        <th>Question</th>
        <th>Option-1</th>
        <th>Option-2</th>
        <th>Option-3</th>
        <th>Option-4</th>
        <th>Correct Answer</th>
        <th>Category</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${questionsList}" var="question">
        <tr>
            <td>${question.question}</td>
            <td>${question.optionOne}</td>
            <td>${question.optionTwo}</td>
            <td>${question.optionThree}</td>
            <td>${question.optionFour}</td>
            <td>${question.correctAnswer}</td>
            <td>${question.category}</td>
            <td><a href="editQuestion?page=editQuestionForm&id=${question.id}"><i class="fa fa-pencil fa-2x" aria-hidden="true"></i></a> </td>
            <td><a href="deleteQuestion?page=deleteQuestion&id=${question.id}"><i class="fa fa-trash fa-2x" aria-hidden="true"></i></a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
