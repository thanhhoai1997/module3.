<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/31/2023
  Time: 7:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>page</h1>
<jsp:useBean id="login" class="LoginBean" scope="session"></jsp:useBean>
<jsp:setProperty name="login" property="*"></jsp:setProperty>
<c:if test="${login.isCheckLogin()}">
  <c:redirect url="index.jsp"></c:redirect>
</c:if>
<c:if test="${not login.isCheckLogin}">
  Invalid
</c:if>

</body>
</html>
