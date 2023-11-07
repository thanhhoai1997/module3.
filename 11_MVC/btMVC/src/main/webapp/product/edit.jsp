<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/3/2023
  Time: 8:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit</title>
</head>
<body>
<h1>Edit Product</h1>
<a href="/product">Back to product list</a>
<h2 style="color: green">${message}</h2>
<form method="post">
  <fieldset>
    <legend>Product Info</legend>
    <table>
      <tr>
        <td>Name Product</td>
        <td><input type="text" name="name" value="${product.name}"></td>
      </tr>
      <tr>
        <td>Price</td>
        <td><input type="text" name="price" value="${product.price}"></td>
      </tr>
      <tr>
        <td>describe</td>
        <td><input type="text" name="describe" value="${product.describe}"></td>
      </tr>
      <tr>
        <td>Name Product</td>
        <td><input type="text" name="producer" value="${product.producer}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update"></td>

      </tr>
    </table>
  </fieldset>
</form>

</body>
</html>
