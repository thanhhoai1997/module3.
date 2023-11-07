<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/3/2023
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product</h1>
<p>
  <a href="/product">Back to product list</a>
</p>
<table>
  <tr>
    <td>Name Product : </td>
    <td>${product.name}</td>
  </tr>
  <tr>
    <td>Price : </td>
    <td>${product.price}</td>
  </tr>
  <tr>
    <td>Describe : </td>
    <td>${product.describe}</td>
  </tr>
  <tr>
    <td>Producer : </td>
    <td>${product.producer}</td>
  </tr>
</table>

</body>
</html>
