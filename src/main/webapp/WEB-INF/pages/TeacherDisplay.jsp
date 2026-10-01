<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Management</title>
</head>

<body>

<h2>Teacher Management</h2>

<table border="1" cellpadding="10">

    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Contact</th>
        <th>Email</th>
        <th>Department</th>
        <th>Username</th>
        <th>Status</th>
        <th>Action</th>
    </tr>

    <c:forEach var="t" items="${data}">

        <tr>

            <td>${t.tid}</td>
            <td>${t.tname}</td>
            <td>${t.tcontact}</td>
            <td>${t.temail}</td>
            <td>${t.dept}</td>
            <td>${t.username}</td>
            <td>${t.status}</td>

            <td>

                <c:if test="${t.status == 'PENDING'}">

                    <a href="${pageContext.request.contextPath}/TeacherApprove?tid=${t.tid}">
                        Approve
                    </a>

                    &nbsp;&nbsp;

                    <a href="${pageContext.request.contextPath}/TeacherReject?tid=${t.tid}">
                        Reject
                    </a>

                </c:if>

                <c:if test="${t.status == 'APPROVED'}">
                    Approved
                </c:if>

                <c:if test="${t.status == 'REJECTED'}">
                    Rejected
                </c:if>

            </td>

        </tr>

    </c:forEach>

</table>

<br>

<a href="${pageContext.request.contextPath}/AdminHome">
    Back to Admin Home
</a>

</body>
</html>