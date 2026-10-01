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
<title>Teacher Home</title>
</head>

<body>

<h2>Teacher Home</h2>

<h3>Welcome <%= t.getTname() %></h3>

<p>Department: <%= t.getDept() %></p>

<hr>

<h3>My Department</h3>

<%
if(t.getDept().equals("C Programming"))
{
%>

    <h3>C Programming</h3>

    

    <a href="${pageContext.request.contextPath}/CreateExam">
        Create MCQ Exam
    </a>
    <br><br>

    <a href="#">View Student Results</a>

<%
}
else if(t.getDept().equals("Web Development"))
{
%>

    <h3>Web Development</h3>

   

    <a href="${pageContext.request.contextPath}/CreateExam">
        Create MCQ Exam
    </a>
    <br><br>

    

<%
}
else if(t.getDept().equals("SQL"))
{
%>

    <h3>SQL</h3>



    <a href="${pageContext.request.contextPath}/CreateExam">
        Create MCQ Exam
    </a>
    <br><br>

    


<%
}
%>

<br><br>

<a href="${pageContext.request.contextPath}/TeacherLogout">
    Logout
</a>

</body>
</html>