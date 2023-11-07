<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/3/2023
  Time: 7:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<h1>Create new Product</h1>
<h2 style="color: green">${message}</h2>
<p>
  <a href="/product">Back to Product list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Product information</legend>
    <table>
<tr>
  <td>Name Product</td>
  <td><input type="text" name="name"></td>
</tr>
      <tr>
        <td>Price</td>
        <td><input type="text" name="price"></td>
      </tr>
      <tr>
        <td>Describe</td>
        <td><input type="text" name="describe"></td>
      </tr>
      <tr>
        <td>Producer</td>
        <td><input type="text" name="producer"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Create"></td>
      </tr>
    </table>
  </fieldset>
</form>



</body>
</html>
