<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

<c:set var="college" value="MBU" />
<c:set var="project" value="Student Management System" />

<center>

    <h2>Welcome to <c:out value="${college}"/></h2>

    <h1><c:out value="${project}"/></h1>

    <h3><a href="./AddStudent.jsp">Add Student</a></h3>
    <h3><a href="./ViewAllStudentsController">View All Students</a></h3>
    <h3><a href="./DeleteStudent.jsp">Delete a Student</a></h3>

</center>

</body>
</html>