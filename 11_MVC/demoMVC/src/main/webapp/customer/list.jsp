<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/2/2023
  Time: 9:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customer</h1>
<p>
    <a href="/customers?action=create">Create new customer</a>

</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>

    </tr>
<c:forEach var="customer" items="${customers}">
    <tr>
        <td><a href="/customers?action=view&id=${customer.id}">${customer.name}</a> </td>
        <td>${customer.email}</td>
        <td>${customer.address}</td>
        <td><a href="/customers?action=edit&id=${customer.id}">Edit</a> </td>
        <td><a href="/customers?action=delete&id=${customer.id}">Delete</a> </td>
    </tr>
</c:forEach>
</table>
</body>
</html>
