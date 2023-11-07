<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/4/2023
  Time: 7:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search Product</title>
</head>
<body>

<p><a href="/product">back to list product</a> </p>
<form method="post">
  <fieldset>
    <legend>Search Product</legend>
    <tr>
      <td><input type="text" placeholder="Enter Name" name="name"></td>
    </tr>
    <tr>
      <td><input type="submit" value="Search"></td>
    </tr>
  </fieldset>
  <h1 style="color: green">${message}</h1>

  <table border="1">
    <c:forEach items="${product}" var="product">
      <tr>
        <td>${product.name}</td>
        <td>${product.price}</td>
        <td>${product.describe}</td>
        <td>${product.producer}</td>

      </tr>

    </c:forEach>
  </table>
</form>




</body>
</html>
