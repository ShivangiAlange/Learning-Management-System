<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>My Results</title>

</head>

<body>

<h2>My Exam Results</h2>

<hr>

<c:if test="${empty results}">

    <p>No Result Available</p>

</c:if>


<c:if test="${not empty results}">

<table border="1" cellpadding="10">

<tr>
    <th>Result ID</th>
    <th>Exam ID</th>
    <th>Score</th>
    <th>Total Marks</th>
</tr>

<c:forEach var="r" items="${results}">

<tr>

    <td>${r.rid}</td>

    <td>${r.eid}</td>

    <td>${r.score}</td>

    <td>${r.total_marks}</td>

</tr>

</c:forEach>

</table>

</c:if>

<br>

<a href="${pageContext.request.contextPath}/StudentHome">
    Back to Student Home
</a>

</body>
</html>