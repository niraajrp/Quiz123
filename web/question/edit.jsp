<%--
  Created by IntelliJ IDEA.
  User: Dells
  Date: 10/29/2017
  Time: 10:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Question</title>
    <link rel="stylesheet" type="text/css" href="../css/home.css">
    <link rel="stylesheet" href="../css/table.css">
</head>
<body>
<%@include file="../includes/menu.jsp"%>

<form class="edit-form" method="post" action="editQuestion">
    <input type="hidden" name="page" value="editQuestion">
    <input type="hidden" name="id" value="${question.id}">
    <table>
        <thead>
        <tr>
            <th>Question</th>

        </tr>
        </thead>
        <tbody>
        <tr>

            <td><input type="text" name="question" placeholder="enter the question here" required value="${question.question}" style="width:600px; text-align:center"></td>

        </tr>
        </tbody>
    </table>
    <table>
        <thead>
        <tr>
            <th>Option-1</th>
            <th>Option-2</th>
            <th>Option-3</th>
            <th>Option-4</th>
        </tr>
        </thead>
        <tbody>
        <tr>

            <td><input type="text" name="optionOne" placeholder="enter Option-1 here" required value="${question.optionOne}" style="width:300px; text-align:center"></td>
            <td><input type="text" name="optionTwo" placeholder="enter Option-2 here" required value="${question.optionTwo}" style="width:300px; text-align:center"></td>
            <td><input type="text" name="optionThree" placeholder="enter Option-3 here" required value="${question.optionThree}" style="width:300px; text-align:center"></td>
            <td><input type="text" name="optionFour" placeholder="enter Option-4 here" required value="${question.optionFour}" style="width:300px; text-align:center"></td>


        </tr>
        </tbody>
    </table>
    <table>
        <thead>
        <tr>
            <th>Correct Answer</th>
            <th>Category</th>

        </tr>
        </thead>
        <tbody>
        <tr>


            <td><input type="text" name="correctAnswer" placeholder="enter Correct answer here" required value="${question.correctAnswer}" style="width:300px; text-align:center"></td>
            <td><input type="text" name="category" placeholder="enter category here" required value="${question.category}" style="width:300px; text-align:center"></td>


        </tr>
        </tbody>
    </table>

    <div style="text-align: center">
        <input type="submit" name="" value="Edit Question">
    </div>
</form>
</body>
</html>
