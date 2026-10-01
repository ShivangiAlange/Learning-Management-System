
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Web Development</title>

<style>

body {
    font-family: Arial, sans-serif;
    background-color: #e8f8f0;
    margin: 0;
    padding: 40px;
    text-align: center;
}

h2 {
    color: #45a36b;
    margin-bottom: 30px;
}

.container {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap;
}

.card {
    background-color: white;
    width: 220px;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0px 0px 8px #b7dfc9;
}

.card h3 {
    color: #45a36b;
    margin-bottom: 20px;
}

.card a {
    display: inline-block;
    padding: 9px 18px;
    background-color: #72c98f;
    color: white;
    text-decoration: none;
    border-radius: 4px;
    font-size: 14px;
}

.card a:hover {
    background-color: #58b978;
}

.exam-section {
    margin-top: 30px;
}

.exam-card {
    background-color: white;
    width: 300px;
    margin: 15px auto;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0px 0px 8px #b7dfc9;
}

.exam-card h4 {
    color: #555;
}

.exam-card a {
    display: inline-block;
    padding: 9px 18px;
    background-color: #72c98f;
    color: white;
    text-decoration: none;
    border-radius: 4px;
    font-size: 14px;
}

.exam-card a:hover {
    background-color: #58b978;
}

.back {
    display: inline-block;
    margin-top: 30px;
    color: #45a36b;
    text-decoration: none;
}

.back:hover {
    text-decoration: underline;
}

</style>

</head>

<body>

<h2>Web Development</h2>

<div class="container">

    <div class="card">

        <h3>Notes</h3>

        <a href="#">
            View Notes
        </a>

    </div>


    <div class="card">

        <h3>Interview Questions</h3>

        <a href="#">
            View Questions
        </a>

    </div>

</div>


<div class="exam-section">

    <h3>Exams</h3>

    <c:if test="${empty exams}">
        <p>No Exam Available</p>
    </c:if>

    <c:forEach var="e" items="${exams}">

        <div class="exam-card">

            <h4>${e.etitle}</h4>

            <a href="${pageContext.request.contextPath}/StartExam?eid=${e.eid}">
                Start Exam
            </a>

        </div>

    </c:forEach>

</div>


<a class="back" href="${pageContext.request.contextPath}/StudentHome">
    Back to Home
</a>

</body>
</html>
