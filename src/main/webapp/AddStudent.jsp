<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<style>

        body {

            font-family: Arial, sans-serif;

            background: #f4f7fc;

            display: flex;

            justify-content: center;

            align-items: center;

            min-height: 100vh;

            margin: 0;

        }

        .container {

            background: white;

            padding: 30px;

            border-radius: 12px;

            box-shadow: 0 4px 15px rgba(0,0,0,0.15);

            width: 400px;

        }

        h2 {

            text-align: center;

            color: #333;

            margin-bottom: 25px;

        }

        label {

            font-weight: bold;

            color: #444;

            display: block;

            margin-bottom: 5px;

        }

        input[type="text"] {

            width: 100%;

            padding: 10px;

            border: 1px solid #ccc;

            border-radius: 6px;

            margin-bottom: 15px;

            box-sizing: border-box;

        }

        .dob {

            display: flex;

            gap: 10px;

        }

        .dob input {

            flex: 1;

        }

        input[type="submit"] {

            width: 100%;
            padding: 12px;
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;

        }

        input[type="submit"]:hover {

            background: #45a049;

        }

    </style>
</head>
<body>

    <div class="container">
        <h2>Student Registration Form</h2>
        <form action="./AddStudentController" method="post">
        
            <label>ID</label>
            <input type="text" name="id">
            
            <label>First Name</label>
            <input type="text" name="firstName">

            <label>Second Name</label>
            <input type="text" name="secondName">

            <label>Date of Birth</label>
            <div class="dob">

                <input type="text" name="day" placeholder="DD">
                <input type="text" name="month" placeholder="MM">
                <input type="text" name="year" placeholder="YYYY">

            </div>

            <br>

            <input type="submit" value="Register Student">

        </form>

    </div>

</body>

</html>