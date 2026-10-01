<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration</title>
</head>

<body>

<h2>Student Registration</h2>

<form action="SregSave" method="post">

    Course:
    <input type="text" name="cname">
    <br><br>

    Admission Date:
    <input type="date" name="admission_date">
    <br><br>

    Batch Start Date:
    <input type="date" name="batch_start_date">
    <br><br>

    Training Mode:
    <select name="training_mode">
        <option value="Online">Online</option>
        <option value="Offline">Offline</option>
    </select>
    <br><br>

    Student Name:
    <input type="text" name="sname">
    <br><br>

    Contact:
    <input type="text" name="scontact">
    <br><br>

    Email:
    <input type="email" name="semail">
    <br><br>

    Password:
    <input type="password" name="password">
    <br><br>

    <input type="submit" value="Register">

</form>

</body>
</html>