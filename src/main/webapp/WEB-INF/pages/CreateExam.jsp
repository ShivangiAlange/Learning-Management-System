<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.lms.Model.Teacher" %>

<%
    Teacher t = (Teacher) session.getAttribute("teacher");

    if(t == null)
    {
        response.sendRedirect("TeacherLogin");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Exam</title>
</head>

<body>

<h2>Create MCQ Exam</h2>

<p>Department: <%= t.getDept() %></p>

<form action="${pageContext.request.contextPath}/CreateExamSave" method="post">

    <input type="hidden" name="cid" value="1">

    Exam Title:
    <input type="text" name="etitle" required>

    <br><br>

    <input type="submit" value="Create Exam">

</form>

<br>

<a href="${pageContext.request.contextPath}/TeacherHome">
    Back to Teacher Home
</a>

</body>
</html>