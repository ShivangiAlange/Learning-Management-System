<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Forgot Password</title>
</head>

<body>

<h2>Teacher Forgot Password</h2>

<form action="${pageContext.request.contextPath}/TeacherForgotPasswordSave"
      method="post">

    Teacher Email:
    <input type="email" name="temail" required>

    <br><br>

    New Password:
    <input type="password" name="newPassword" required>

    <br><br>

    <input type="submit" value="Change Password">

</form>

<br>

<a href="${pageContext.request.contextPath}/TeacherLogin">
    Back to Login
</a>

</body>
</html>