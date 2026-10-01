
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MCQ Exam</title>

<style>

* {
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background: #f1f5f9;
    padding: 20px;
    color: #1e293b;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

form {
    width: 650px;
    max-width: 95%;
    margin: auto;
}

.question-box {
    background: white;
    padding: 15px;
    margin-bottom: 12px;
    border-radius: 8px;
    box-shadow: 0 3px 10px rgba(0,0,0,0.08);
}

h3 {
    font-size: 15px;
    margin-bottom: 10px;
}

.option {
    display: block;
    padding: 7px 10px;
    margin: 4px 0;
    border: 1px solid #ddd;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
}

.option:hover {
    background: #f1f5ff;
}

.option input {
    margin-right: 7px;
}

input[type="submit"] {
    display: block;
    margin: 20px auto;
    padding: 9px 25px;
    border: none;
    border-radius: 5px;
    background: #2563eb;
    color: white;
    cursor: pointer;
}

input[type="submit"]:hover {
    background: #1d4ed8;
}

.back-btn {
    display: block;
    width: 140px;
    margin: auto;
    padding: 8px;
    text-align: center;
    text-decoration: none;
    background: #64748b;
    color: white;
    border-radius: 5px;
    font-size: 14px;
}

</style>

</style>

</head>

<body>

<h2>MCQ Exam</h2>

<form action="${pageContext.request.contextPath}/SubmitExam" method="post">

    <input type="hidden" name="eid" value="${eid}">

    <c:forEach var="q" items="${questions}" varStatus="status">

        <div class="question-box">

            <h3>
                ${status.index + 1}. ${q.question}
            </h3>

            <label class="option">
                <input type="radio"
                       name="q${q.qid}"
                       value="A"
                       required>
                A. ${q.option_a}
            </label>

            <label class="option">
                <input type="radio"
                       name="q${q.qid}"
                       value="B">
                B. ${q.option_b}
            </label>

            <label class="option">
                <input type="radio"
                       name="q${q.qid}"
                       value="C">
                C. ${q.option_c}
            </label>

            <label class="option">
                <input type="radio"
                       name="q${q.qid}"
                       value="D">
                D. ${q.option_d}
            </label>

        </div>

    </c:forEach>

    <input type="submit" value="Submit Exam">

</form>

<a class="back-btn"
   href="${pageContext.request.contextPath}/StudentHome">
    Back to Home
</a>

</body>
</html>

