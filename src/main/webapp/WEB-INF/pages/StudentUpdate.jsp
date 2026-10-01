<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Update</title>

<style>
body {
    font-family: Arial, sans-serif;
    background: #f0f2f5;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.update-container {
    background: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    width: 400px;
}

h2 {
    text-align: center;
    color: #333;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input, select {
    width: 100%;
    padding: 9px;
    margin-bottom: 15px;
    box-sizing: border-box;
}

button {
    width: 100%;
    padding: 10px;
    background: #4CAF50;
    border: none;
    color: white;
    font-size: 16px;
    cursor: pointer;
    border-radius: 4px;
}

button:hover {
    background: #45a049;
}
</style>

</head>

<body>

<div class="update-container">

<h2>Edit Student</h2>

<form action="${pageContext.request.contextPath}/stuUP" method="post">

    <!-- Student ID -->
    <input type="hidden" name="sid" value="${temp.sid}">

    <label>Course</label>
    <input type="text" name="cname" value="${temp.cname}" required>

    <label>Admission Date</label>
    <input type="date" name="admission_date" value="${temp.admission_date}" required>

    <label>Batch Start Date</label>
    <input type="date" name="batch_start_date" value="${temp.batch_start_date}" required>

    <label>Training Mode</label>
    <select name="training_mode" required>

        <option value="Online"
            ${temp.training_mode == 'Online' ? 'selected' : ''}>
            Online
        </option>

        <option value="Offline"
            ${temp.training_mode == 'Offline' ? 'selected' : ''}>
            Offline
        </option>

    </select>

    <label>Student Name</label>
    <input type="text" name="sname" value="${temp.sname}" required>

    <label>Contact</label>
    <input type="text" name="scontact" value="${temp.scontact}" required>

    <label>Email</label>
    <input type="email" name="semail" value="${temp.semail}" required>

    <label>Password</label>
    <input type="text" name="password" value="${temp.password}" required>

    <button type="submit">Update</button>

</form>

</div>

</body>
</html>