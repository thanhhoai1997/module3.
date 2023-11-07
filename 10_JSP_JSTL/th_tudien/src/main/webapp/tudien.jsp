<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/31/2023
  Time: 9:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Map<String,String> tudien = new HashMap<>();
    tudien.put("hello","xin chao");
    tudien.put("mark","toan hoc");
    tudien.put("hi","xin chao1");
    tudien.put("love","yeu");
    tudien.put("bey","tam biet");
    String english = request.getParameter("english");
    String ketqua =tudien.get(english);
%>
<h1>English : <%=english%></h1>
<h1>VN : <%=ketqua%></h1>

</body>
</html>
