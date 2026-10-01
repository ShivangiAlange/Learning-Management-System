<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Display</title>
</head>

<body>

<h2>All Students</h2>

<table border="1">

<tr>
    <th>ID</th>
    <th>Course</th>
    <th>Admission Date</th>
    <th>Batch Start Date</th>
    <th>Training Mode</th>
    <th>Name</th>
    <th>Contact</th>
    <th>Email</th>
    <th>Password</th>
    <th>Action</th>
</tr>

<c:forEach var="s" items="${data}">

<tr>
    <td>${s.sid}</td>
    <td>${s.cname}</td>
    <td>${s.admission_date}</td>
    <td>${s.batch_start_date}</td>
    <td>${s.training_mode}</td>
    <td>${s.sname}</td>
    <td>${s.scontact}</td>
    <td>${s.semail}</td>
    <td>${s.password}</td>
    <td>
    <a href="StudentUpdate?sid=${s.sid}">Edit</a>
    |
    <a href="StudentDelete?sid=${s.sid}">Delete</a>
</td>
</tr>

</c:forEach>

</table>
<a href="${pageContext.request.contextPath}/AdminHome">
    Back to Home
</a>
</body>

<a href="AdminHome.jsp">Home</a>
</html>