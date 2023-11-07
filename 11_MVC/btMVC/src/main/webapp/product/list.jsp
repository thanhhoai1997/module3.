<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/3/2023
  Time: 6:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<p>
    <a href="/product?action=create">Create new product</a>
</p>
<p>
    <a href="/product?action=search">Search new product</a>
</p>
<table border="1">
    <tr>
        <td>NameProduct</td>
        <td>Price</td>
        <td>Describe</td>
        <td>Producer</td>
        <td>EDIT</td>
        <td>DELETE</td>
    </tr>



    </th>
    <c:forEach items="${products}" var="product">
        <tr>
            <td><a href="/product?action=view&id=${product.id}">${product.name}</a></td>
            <td>${product.price}</td>
            <td>${product.describe}</td>
            <td>${product.producer}</td>
            <td><a href="/product?action=edit&id=${product.id}">Edit</a></td>
            <td><a href="/product?action=delete&id=${product.id}">Delete</a></td>


        </tr>

    </c:forEach>
</table>

</body>
</html>
