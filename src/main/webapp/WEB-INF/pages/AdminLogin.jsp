
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Login</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #e6f4ff;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.login-box {
    background-color: #ffffff;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0px 0px 8px #b8dff5;
    width: 300px;
}

.login-box h2 {
    text-align: center;
    color: #4a90c2;
    margin-bottom: 20px;
}

.login-box input {
    width: 100%;
    padding: 9px;
    margin: 8px 0;
    border: 1px solid #b8dff5;
    border-radius: 4px;
    box-sizing: border-box;
}

.login-box input:focus {
    border-color: #72bce6;
    outline: none;
}

.login-box button {
    width: 100%;
    padding: 10px;
    margin-top: 8px;
    background-color: #72bce6;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.login-box button:hover {
    background-color: #5aa9d6;
}

.login-box a {
    display: block;
    text-align: center;
    margin-top: 15px;
    color: #4a90c2;
    text-decoration: none;
    font-size: 14px;
}

.login-box a:hover {
    text-decoration: underline;
}

</style>

</head>

<body>

<div class="login-box">

    <h2>Admin Login</h2>

    <form action="AdminLoginCheck" method="post">

        <input type="text" name="aname"
               placeholder="Username" required>

        <input type="password" name="apass"
               placeholder="Password" required>

        <button type="submit">Login</button>

        <a href="${pageContext.request.contextPath}/AdminForgotPassword">
            Forgot Password?
        </a>

    </form>

</div>

</body>
</html>

