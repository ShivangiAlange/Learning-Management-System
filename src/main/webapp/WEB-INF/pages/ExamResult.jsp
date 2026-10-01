<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exam Result</title>
</head>

<body>

<h2>Exam Result</h2>

<h3>Your Score: ${score} / ${total}</h3>

<br>

<a href="${pageContext.request.contextPath}/StudentHome">
    Back to Student Home
</a>

</body>
</html>