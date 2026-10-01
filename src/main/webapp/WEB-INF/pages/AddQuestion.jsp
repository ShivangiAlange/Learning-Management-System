<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Question</title>
</head>

<body>

<h2>Add MCQ Question</h2>

<form action="${pageContext.request.contextPath}/AddQuestionSave" method="post">

    Question:
    <input type="text" name="question" required>
    <br><br>

    Option A:
    <input type="text" name="option_a" required>
    <br><br>

    Option B:
    <input type="text" name="option_b" required>
    <br><br>

    Option C:
    <input type="text" name="option_c" required>
    <br><br>

    Option D:
    <input type="text" name="option_d" required>
    <br><br>

    Correct Answer:
    <select name="correct_answer" required>
        <option value="">Select Correct Answer</option>
        <option value="A">A</option>
        <option value="B">B</option>
        <option value="C">C</option>
        <option value="D">D</option>
    </select>

    <br><br>

    <input type="submit" value="Add Question">

</form>

<br>

<a href="${pageContext.request.contextPath}/TeacherHome">
    Back to Teacher Home
</a>

</body>
</html>