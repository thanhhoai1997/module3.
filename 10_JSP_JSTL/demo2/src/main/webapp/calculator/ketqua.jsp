<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/1/2023
  Time: 11:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:catch var="err">

    <h1>${num1}&nbsp;${name}&nbsp;${num2} = ${operand} </h1>

</c:catch>
<c:if test="${err != null}">
    Exception : ${err}
</c:if>



</body>
</html>
