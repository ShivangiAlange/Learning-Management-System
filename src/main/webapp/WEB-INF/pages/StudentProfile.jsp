```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Profile</title>

<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    min-height: 100vh;
    background: linear-gradient(135deg, #e0e7ff, #f8fafc);
    padding: 40px 20px;
}

/* Main Heading */
h2 {
    text-align: center;
    color: #1e293b;
    margin-bottom: 30px;
    font-size: 30px;
}

/* Profile Table */
table {
    width: 650px;
    max-width: 95%;
    margin: auto;
    border-collapse: collapse;
    background: white;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.12);
}

/* Table Header */
th {
    width: 40%;
    background: #1e293b;
    color: white;
    text-align: left;
    padding: 16px 20px;
    font-size: 15px;
}

/* Table Data */
td {
    padding: 16px 20px;
    color: #334155;
    font-size: 15px;
    border-bottom: 1px solid #e2e8f0;
}

/* Row Hover */
tr:hover td {
    background: #f8fafc;
}

/* Back Button */
a {
    display: block;
    width: 180px;
    margin: 30px auto 0;
    padding: 12px 20px;
    text-align: center;
    text-decoration: none;
    background: #2563eb;
    color: white;
    border-radius: 8px;
    font-weight: bold;
    transition: 0.3s;
}

a:hover {
    background: #1d4ed8;
    transform: translateY(-2px);
}


</style>

</head>

<body>

<h2>Student Profile</h2>

<table>

    <tr>
        <th>Student Name</th>
        <td>${student.sname}</td>
    </tr>

    <tr>
        <th>Contact No</th>
        <td>${student.scontact}</td>
    </tr>

    <tr>
        <th>Email ID</th>
        <td>${student.semail}</td>
    </tr>

    <tr>
        <th>Course</th>
        <td>${student.cname}</td>
    </tr>

    <tr>
        <th>Date of Admission</th>
        <td>${student.admission_date}</td>
    </tr>

    <tr>
        <th>Batch Start Date</th>
        <td>${student.batch_start_date}</td>
    </tr>

    <tr>
        <th>Training Mode</th>
        <td>${student.training_mode}</td>
    </tr>

</table>

<a href="StudentHome">Back to Home</a>

</body>
</html>
```
