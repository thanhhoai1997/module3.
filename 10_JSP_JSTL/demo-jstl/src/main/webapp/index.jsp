<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%--<c:out value="${'this is true: 10 > 1'}"></c:out>--%>
<%--<br>--%>
<%--Tag: <c:out value="${'<atag> , &'}"></c:out>--%>

<%--<c:set scope="request" var="greeting" value="hello"></c:set>--%>
<%--<c:out value="${greeting}"></c:out>--%>

<%--<c:set var="salary" scope="session" value="${2000*2}"></c:set>--%>
<%--<c:out value="${salary}"></c:out>--%>

<%--<c:set scope="request" var="greeting" value="hllo"></c:set>--%>
<%--<c:out value="${greeting}"></c:out>--%>
<%--<c:remove scope="request" var="greeting"></c:remove>--%>

<%--<c:catch var="ex">--%>
<%--    <%--%>
<%--        int a = 100/0;--%>
<%--    %>--%>

<%--</c:catch>--%>
<%--<c:if test="${ex != null}">--%>
<%--    Exception : ${ex}--%>
<%--    <br>--%>
<%--    Messege : ${ex.message}--%>
<%--</c:if>--%>

<%--<c:set var="tx" scope="session" value="${2000*2}"></c:set>--%>

<%--<c:if test="${tx > 2000}">--%>
<%--    <c:out value="${tx}"></c:out>--%>
<%--</c:if>--%>

<%--<c:set var="salary" scope="session" value="${2000*2}"></c:set>--%>
<%--<c:out value="${salary}"></c:out>--%>
<%--<c:choose>--%>
<%--    <c:when test="${salary <= 0}">--%>
<%--        Salary is very low to survive.--%>
<%--    </c:when>--%>
<%--    <c:when test="${salary > 1000}">--%>
<%--        Salary is very good.--%>
<%--    </c:when>--%>
<%--    <c:otherwise>--%>
<%--        No comment sir...--%>
<%--    </c:otherwise>--%>
<%--</c:choose>--%>

<%--<c:choose>--%>
<%--    <%--%>
<%--        String color = "red";--%>

<%--    %>--%>
<%--    <c:when test="<%=color.equals("red")%>">--%>
<%--        <p style="color: red">Color</p>--%>
<%--    </c:when>--%>

<%--</c:choose>--%>


<%--<c:set var="salary" scope="session" value="${2000*2}"></c:set>--%>
<%--<c:out value="${salary}"></c:out>--%>
<%--<c:choose>--%>
<%--    <c:when test="${salary <= 0}">--%>

<%--    </c:when>--%>
<%--</c:choose>--%>

<%--<c:forEach var="i" begin="1" end="5" step="2">--%>
<%--    Item <c:out value="${i}"></c:out> <br>--%>
<%--</c:forEach>--%>

<c:forTokens items="Tom,jerry,donali" delims="," var="name">
    <c:out value="${name}"></c:out><br>
</c:forTokens>


</body>
</html>