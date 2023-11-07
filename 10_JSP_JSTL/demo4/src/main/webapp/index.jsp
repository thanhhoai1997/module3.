<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<%--<c:set var ="num1" value="20" scope="page"></c:set>--%>
<%--<c:set var="num2" value="30" scope="page"></c:set>--%>
<%--<c:if test="${num1 < num2}">--%>
<%--    num1 < num2--%>
<%--</c:if>--%>

<%--<form>--%>
<%--    so1 : <input type="text" name="num1" value="${param.num1}">--%>
<%--    <br>--%>
<%--    so2 : <input type="text" name="num2" value="${param.num2}">--%>
<%--    <br>--%>
<%--    <c:catch var="err">--%>
<%--       <c:if test="${not empty param.num1 && not empty param.num2}">--%>
<%--           <c:set var="rs" value="${param.num1/param.num2}"></c:set>--%>
<%--           Ket Qua : <c:out value="${rs}"></c:out>--%>
<%--       </c:if>--%>
<%--    </c:catch>--%>
<%--    <input type="submit" value="Chia">--%>
<%--    <c:if test="${not empty err}">--%>
<%--        Loi : <c:out value="${err}"></c:out>--%>
<%--    </c:if>--%>
<%--</form>--%>

<%--<form>--%>
<%--    Number <input type="text" name="num" value="${param.num}">--%>
<%--    <c:choose>--%>
<%--        <c:when test="${empty param.num}">--%>
<%--            ...--%>
<%--        </c:when>--%>
<%--        <c:when test="${param.num%2==0}">--%>
<%--            ${param.num} la so chan--%>
<%--        </c:when>--%>
<%--        <c:when test="${param.num % 2 != 0}">--%>
<%--            ${param.num} la so le--%>
<%--        </c:when>--%>
<%--    </c:choose>--%>
<%--    <input type="submit" value="Kiem Tra">--%>
<%--</form>--%>


<h1>ForEach</h1>
<%
    String[] names = {"Fpoly","HCM","HaNoi","Da Nang","Tay Nguyen"};
%>
<c:set var="lang" value="Core Java:Servlet;JSP:Spring;Struts:EJB" scope="page"></c:set>
<c:forEach var="it" items="<%=names%>">
    <c:out value="${it}"></c:out><br>

</c:forEach>

<b>ForTokens :</b>
<c:forTokens var="jv" items="${lang}" delims=":;">
    <c:out value="${jv}"></c:out><br>
</c:forTokens>
<c:forEach begin="1" end="10" step="1" var="conter">
    <c:out value="${conter}"></c:out><br>
</c:forEach>
</body>
</html>