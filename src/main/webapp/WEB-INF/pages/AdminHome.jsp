
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    text-align: center;
    margin-top: 60px;
}

.container {
    width: 380px;
    margin: auto;
    background-color: white;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0px 0px 8px #ccc;
}

h1 {
    color: #333;
    font-size: 26px;
}

h3 {
    color: #666;
    font-size: 16px;
    margin-bottom: 20px;
}

a {
    display: block;
    width: 200px;
    margin: 10px auto;
    padding: 10px;
    background-color: #4a69bd;
    color: white;
    text-decoration: none;
    border-radius: 4px;
    font-size: 14px;
}

a:hover {
    background-color: #2f4b8f;
}

.logout {
    background-color: #e74c3c;
}

.logout:hover {
    background-color: #c0392b;
}

</style>

</head>

<body>

<div class="container">

    <h1>Welcome Admin</h1>
    <h3>Admin Dashboard</h3>

    <a href="Sreg">Add Student</a>

    <a href="${pageContext.request.contextPath}/TeacherDisplay">
        Teacher Management
    </a>

    <a href="StudentDisplay">View Students</a>

    <a href="${pageContext.request.contextPath}/logout" class="logout">
        Logout
    </a>

</div>

</body>
</html>

