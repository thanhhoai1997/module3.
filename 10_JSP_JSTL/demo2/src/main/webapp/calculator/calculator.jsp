<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/1/2023
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="/calculator" method="post">
  <label>First operand</label><input type="text" name="first" value=""><br>
  <label>Operator</label>
  <select name="operand" style="width: 200px">
    <option   value="cong">+</option>
    <option  value="tru" >-</option>
    <option  value="nhan">*</option>
    <option  value="chia">/</option>

  </select>
  <br>

  <label>Second operand</label><input type="text" name="second">
  <br>
  <input type="submit" value="Calculate">

</form>

</body>
</html>
