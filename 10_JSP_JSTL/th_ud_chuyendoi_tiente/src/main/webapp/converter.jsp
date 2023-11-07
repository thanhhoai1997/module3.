<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/31/2023
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    float rate = Float.valueOf(request.getParameter("rate"));
    float usd = Float.valueOf(request.getParameter("usd"));
    float vnd = rate*usd;

%>

<h1> Rate : <%=rate%></h1>
<h1> Usd : <%=usd%></h1>
<h1> VND : <%=vnd%></h1>


</body>
</html>
