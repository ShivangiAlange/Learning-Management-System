
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Student Login</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #e8f8f0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

.login-box {
    background-color: white;
    width: 300px;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0px 0px 8px #b7dfc9;
}

h2 {
    text-align: center;
    color: #45a36b;
    margin-bottom: 20px;
}

input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 9px;
    margin: 8px 0;
    border: 1px solid #b7dfc9;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type="email"]:focus,
input[type="password"]:focus {
    outline: none;
    border-color: #72c98f;
}

input[type="submit"] {
    width: 100%;
    padding: 10px;
    margin-top: 8px;
    background-color: #72c98f;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #58b978;
}

a {
    display: block;
    text-align: center;
    margin-top: 15px;
    color: #45a36b;
    text-decoration: none;
    font-size: 14px;
}

a:hover {
    text-decoration: underline;
}

</style>

</head>

<body>

<div class="login-box">

    <h2>Student Login</h2>

    <form action="slogCheck" method="post">

        <input type="email" name="semail"
               placeholder="Email" required>

        <input type="password" name="password"
               placeholder="Password" required>

        <input type="submit" value="Login">

        <a href="${pageContext.request.contextPath}/StudentForgotPassword">
            Forgot Password?
        </a>

    </form>

</div>

</body>
</html>

