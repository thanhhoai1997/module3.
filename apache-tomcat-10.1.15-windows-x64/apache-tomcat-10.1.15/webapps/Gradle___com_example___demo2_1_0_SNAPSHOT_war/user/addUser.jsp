<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/31/2023
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Them Nguoi Dung Moi</h1>
<form action="viewUser.jsp" method="post">
  <input type="text" name="name" placeholder="Ten Nguoi Dung">
  <input type="password" name="password" placeholder="Mat Khau">
  <input type="text" name="phone" placeholder="Dien Thoai">
  <textarea rows="3" cols="3" name="about" placeholder="Gioi Thieu"></textarea>
  <input type="checkbox" name="favourites1" value="Xem Phim">Xem Phim
  <input type="checkbox" name="favourites2" value="Nghe Nhac">Nghe Nhac

  <input type="submit" value="Them">



</form>

</body>
</html>
