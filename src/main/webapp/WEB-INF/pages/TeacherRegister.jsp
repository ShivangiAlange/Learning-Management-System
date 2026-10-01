
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Registration</title>

<style>

* {
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background: #f1f5f9;
    padding: 20px;
}

.form-box {
    width: 400px;
    max-width: 95%;
    margin: 30px auto;
    padding: 20px;
    background: white;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #1e293b;
}

label {
    display: block;
    margin-bottom: 5px;
    font-size: 14px;
    font-weight: bold;
}

input,
select {
    width: 100%;
    padding: 9px;
    margin-bottom: 12px;
    border: 1px solid #cbd5e1;
    border-radius: 5px;
    outline: none;
}

input:focus,
select:focus {
    border-color: #2563eb;
}

input[type="submit"] {
    background: #2563eb;
    color: white;
    border: none;
    cursor: pointer;
    font-weight: bold;
    margin-top: 5px;
}

input[type="submit"]:hover {
    background: #1d4ed8;
}

.login-link {
    display: block;
    text-align: center;
    margin-top: 12px;
    color: #2563eb;
    text-decoration: none;
    font-size: 14px;
}

.login-link:hover {
    text-decoration: underline;
}

</style>

</head>

<body>

<div class="form-box">

    <h2>Teacher Registration</h2>

    <form action="${pageContext.request.contextPath}/TeacherRegisterSave" method="post">

        <label>Teacher Name</label>
        <input type="text" name="tname" required>

        <label>Contact</label>
        <input type="text" name="tcontact" required>

        <label>Email</label>
        <input type="email" name="temail" required>

        <label>Department</label>
        <select name="dept" required>
            <option value="">Select Department</option>
            <option value="C Programming">C Programming</option>
            <option value="Web Development">Web Development</option>
            <option value="SQL">SQL</option>
        </select>

        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <input type="submit" value="Register">

    </form>

    <a class="login-link"
       href="${pageContext.request.contextPath}/TeacherLogin">
        Already have an account? Login
    </a>

</div>

</body>
</html>
