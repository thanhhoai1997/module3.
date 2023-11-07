<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/31/2023
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table , tr, td {
            border: solid gray 2px;
        }
    </style>
</head>
<body>
<%
   String name = request.getParameter("name");
   String pass = request.getParameter("password");
   String phone = request.getParameter("phone");
   String about = request.getParameter("about");
   String favourites1 = request.getParameter("favourites1");
   String favourites2 = request.getParameter("favourites2");
   String fav ="";
   if (favourites1 != null){
       fav += favourites1;
   }else {
       fav += favourites2;
   }
%>
<table>
    <tr>
        <td>Ten</td>
        <td><%=name%></td>
    </tr>
    <tr>
        <td>Pass</td>
        <td><%=pass%></td>
    </tr>
    <tr>
        <td>Dien Thoai</td>
        <td><%=phone%></td>
    </tr>
    <tr>
        <td>Gioi Thieu</td>
        <td><%=about%></td>
    </tr>
    <tr>
        <td>So Thich </td>
        <td><%=fav%></td>
    </tr>

</table>

</body>
</html>
