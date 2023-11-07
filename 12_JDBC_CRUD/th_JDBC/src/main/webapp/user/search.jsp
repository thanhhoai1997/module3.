<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/6/2023
  Time: 8:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>

</head>
<body>
<form method="post">
  <fieldset>
    <legend>Search</legend>
    <table>
      <tr>
        <td>Search</td>
        <td><input type="text" name="country" placeholder="enter country"></td>
      </tr>
      <tr>
        <td>
          <input type="submit" value="Search">
        </td>
        <td><a href="/users">Back to list</a> </td>
      </tr>
    </table>

  </fieldset>
</form>
<c:if test="${listUser != null}">

  <table border="1">
    <tr>
      <td>ID</td>
      <td>Name</td>
      <td>Email</td>
      <td>Country</td>


    </tr>
    <tr>
      <c:forEach var="user" items="${listUser}" >
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.email}</td>
        <td>${user.country}</td>
      </c:forEach>
    </tr>
  </table>

</c:if>



</body>
</html>
