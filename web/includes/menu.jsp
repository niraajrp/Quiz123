
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%--<%
//    response.setHeader("Cache-Control","no-cache");
//    response.setHeader("Cache-Control","no-store");
//    response.setHeader("Pragma","no-cache");
//    response.setDateHeader ("Expires", 0);

    if(session.getAttribute("user")==null)
        response.sendRedirect("index.jsp");

%>--%>
<div class="topnav">
    <div style="color: #4CAF50; text-align: center">
        <h3>${msg}</h3>
    </div>
    <a class="active" href="home?page=home">Home</a>

    <c:if test="${sessionScope.user.role=='admin'}">
        <a href="user?page=userlist">Users</a>
        <a href="question?page=questionList">Questions</a>
    </c:if>


    <a href="quizInstruction?page=quizInstruction">Start Quiz</a>
    <a href="user-profile?page=profile">Profile</a>
    <a href="about">About</a>
    <a href="contact">Contact</a>
    <a href="logout?page=logout">Logout</a>
</div>