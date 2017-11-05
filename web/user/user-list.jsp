<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.List" %>
<%@ page import="service.UserService" %>


<html>
<body>

<table border=1>
    <thead>
    <tr>
        <th>User Id</th>
        <th>UserName</th>
        <th>Password</th>
        <th>Role</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="user">
        <tr>
            <td><c:out value="${user.id}" /></td>
            <td><c:out value="${user.name}" /></td>
            <td><c:out value="${user.password}" /></td>
            <td><c:out value="${user.role}" /></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
    <h4>${list}</h4>

</body>
</html>