<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/4/2023
  Time: 10:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach var="category" items="${categories}">
    <table>
        <tr>
            <td>ID</td>
            <td>Name</td>
            <td>Code</td>

        </tr>
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td>${category.code}</td>

        </tr>
    </table>
</c:forEach>

</body>
</html>
