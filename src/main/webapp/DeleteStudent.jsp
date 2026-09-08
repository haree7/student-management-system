<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DeleteStudent</title>
</head>
<body>
   <h2>enter StudentID to delete</h2>
   <form action="./DeleteStudentController" method="post">


    <input type="text" name="id">

    <input type="submit" value="Delete">

</form>
</body>
</html>