<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/30/2023
  Time: 8:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .product {
            display: flex;
            flex-direction: column;
            width: 300px;
            height: 200px;
            border: 1px gray solid;
            padding: 20px;

        }
        .product input {
            margin-bottom: 10px;
            height: 20px;
        }
    </style>
</head>
<body>
<form action="/display-discount" method="post">
    <div class="product">
        <label>Product Description</label>
        <input type="text" name="description" placeholder="Enter NameProduct" size="30">
        <label>List Price</label>
        <input type="text" name="price" value="0" size="30" >
        <label>Discount Percent (%)</label>
        <input type="text" name="percent" value="0" size="30">
        <input type="submit" value="Calculate Discount">
    </div>


</form>


</body>
</html>
