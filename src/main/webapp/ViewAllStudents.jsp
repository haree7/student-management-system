<%@page import="com.pst.smsmini.dto.StudentDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Students</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, Helvetica, sans-serif;
}
body{
    background:#f4f6f9;
}

.container{
    width:80%;
    margin:50px auto;
}
h1{
    text-align:center;
    color:#2c3e50;
    margin-bottom:25px;
}
table{
    width:100%;
    border-collapse:collapse;
    background:white;
    box-shadow:0 5px 15px rgba(0,0,0,.2);
    border-radius:10px;
    overflow:hidden;
}
th{
    background:#3498db;
    color:white;
    padding:15px;
    font-size:18px;
}

td{
    padding:14px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tr:nth-child(even){
    background:#f8f8f8;
}
tr:hover{
    background:#d6eaf8;
    transition:.3s;
}
</style>

</head>
<body>

<%
List<StudentDto> list = (List<StudentDto>)request.getAttribute("studentList");
%>
<div class="container">

<h1>📚 Student Management System</h1>

<table>

<tr>
    <th>ID</th>
    <th>NAME</th>
    <th>DATE OF BIRTH</th>
</tr>
<%
for(StudentDto dto : list){
%>
<tr>
    <td><%= dto.getId() %></td>
    <td><%= dto.getName() %></td>
    <td><%= dto.getDob() %></td>
</tr>
<%
}
%>
</table>

</div>

</body>
</html>