
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.lms.Model.Student" %>

<%
    Student s = (Student) session.getAttribute("Student");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #e8f8f0;
    margin: 0;
    padding: 40px;
    text-align: center;
}

h2 {
    color: #45a36b;
}

h3 {
    color: #555;
}

.info {
    margin-bottom: 30px;
}

.courses {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 25px;
}

.card {
    background-color: white;
    width: 200px;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0px 0px 8px #b7dfc9;
}

.card h4 {
    color: #45a36b;
    font-size: 18px;
    margin-bottom: 20px;
}

.card a {
    display: inline-block;
    padding: 9px 18px;
    background-color: #72c98f;
    color: white;
    text-decoration: none;
    border-radius: 4px;
    font-size: 14px;
}

.card a:hover {
    background-color: #58b978;
}

.profile {
    margin-top: 30px;
}

.profile a {
    color: #45a36b;
    text-decoration: none;
    margin: 10px;
}

.profile a:hover {
    text-decoration: underline;
}

</style>

</head>

<body>

<h2>Student Home</h2>

<div class="info">

    <h3>Welcome <%= s.getSname() %></h3>

    <p>Email: <%= s.getSemail() %></p>

</div>

<h3>My Courses</h3>

<div class="courses">

    <div class="card">
        <h4>C Programming</h4>

        <a href="${pageContext.request.contextPath}/CProgramming">
            View Course
        </a>
    </div>

    <div class="card">
        <h4>Web Development</h4>

        <a href="${pageContext.request.contextPath}/WebDevelopment">
            View Course
        </a>
    </div>

    <div class="card">
        <h4>SQL</h4>

        <a href="${pageContext.request.contextPath}/SQL">
            View Course
        </a>
    </div>

</div>

<div class="profile">

    <a href="${pageContext.request.contextPath}/StudentProfile">
        My Profile
    </a>

    <a href="${pageContext.request.contextPath}/StudentLogout">
        Logout
    </a>

</div>

</body>
</html>

