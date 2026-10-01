
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Forgot Password</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #e6f4ff;
    text-align: center;
    margin-top: 70px;
}

.container {
    width: 350px;
    margin: auto;
    background-color: #ffffff;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0px 0px 8px #b8dff5;
}

h2 {
    color: #4a90c2;
    margin-bottom: 25px;
}

label {
    display: block;
    text-align: left;
    margin-left: 35px;
    margin-bottom: 5px;
    color: #555;
}

input[type="text"],
input[type="password"] {
    width: 270px;
    padding: 9px;
    border: 1px solid #b8dff5;
    border-radius: 4px;
    outline: none;
}

input[type="text"]:focus,
input[type="password"]:focus {
    border-color: #72bce6;
}

input[type="submit"] {
    background-color: #72bce6;
    color: white;
    border: none;
    padding: 10px 18px;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #5aa9d6;
}

.back {
    color: #4a90c2;
    text-decoration: none;
    font-size: 14px;
}

.back:hover {
    text-decoration: underline;
}

</style>

</head>

<body>

<div class="container">

    <h2>Admin Forgot Password</h2>

    <form action="${pageContext.request.contextPath}/AdminForgotPasswordSave" method="post">

        <label>Admin Name:</label>
        <input type="text" name="aname" required>

        <br><br>

        <label>New Password:</label>
        <input type="password" name="newPassword" required>

        <br><br>

        <input type="submit" value="Change Password">

    </form>

    <br>

    <a class="back" href="${pageContext.request.contextPath}/AdminLogin">
        Back to Login
    </a>

</div>

</body>
</html>

