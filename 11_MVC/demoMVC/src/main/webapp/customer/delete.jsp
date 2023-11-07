<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/3/2023
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting customer</title>
</head>
<body>
<h1>Delete customer</h1>
<p><a href="/customers">Back to customer list</a> </p>
<form method="post">
  <h3>Are you sure ?</h3>
  <fieldset>
    <legend>Customer information</legend>
    <table>
      <tr>
        <td>Name</td>
        <td>${customer.name}</td>
      </tr>
      <tr>
        <td>Email</td>
        <td>${customer.email}</td>
      </tr>
      <tr>
        <td>Address</td>
        <td>${customer.address}</td>
      </tr>
      <tr>

        <td><input type="submit" value="Delete customer"></td>
        <td><a href="/customers">Back to customer list</a></td>
      </tr>
    </table>
  </fieldset>
</form>


</body>
</html>
