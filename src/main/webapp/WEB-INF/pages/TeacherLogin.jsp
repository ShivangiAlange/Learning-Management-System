
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Login</title>

<style>

* {
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background: #f1f5f9;
    padding: 20px;
}

.login-box {
    width: 350px;
    max-width: 95%;
    margin: 60px auto;
    padding: 22px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #1e293b;
}

.error {
    text-align: center;
    color: red;
    font-size: 14px;
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
    font-size: 14px;
    font-weight: bold;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 9px;
    margin-bottom: 14px;
    border: 1px solid #cbd5e1;
    border-radius: 5px;
    outline: none;
}

input[type="text"]:focus,
input[type="password"]:focus {
    border-color: #2563eb;
}

input[type="submit"] {
    width: 100%;
    padding: 9px;
    border: none;
    border-radius: 5px;
    background: #2563eb;
    color: white;
    font-weight: bold;
    cursor: pointer;
}

input[type="submit"]:hover {
    background: #1d4ed8;
}

.register-link {
    display: block;
    text-align: center;
    margin-top: 15px;
    color: #2563eb;
    text-decoration: none;
    font-size: 14px;
}

.register-link:hover {
    text-decoration: underline;
}

</style>

</head>

<body>

<div class="login-box">

    <h2>Teacher Login</h2>

    <%
    String msg = (String) request.getAttribute("msg");

    if(msg != null)
    {
    %>

    <div class="error"><%= msg %></div>

    <%
    }
    %>

    <form action="${pageContext.request.contextPath}/TeacherLoginCheck" method="post">

        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <input type="submit" value="Login">

    </form>

    <a class="register-link"
       href="${pageContext.request.contextPath}/TeacherRegister">
        New Teacher? Register Here
    </a>

</div>

</body>
</html>
```
