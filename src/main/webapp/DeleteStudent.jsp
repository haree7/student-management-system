<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Delete Student | Student Management System</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f7fb;
            color: #1f2937;
            min-height: 100vh;
        }

        /* Navbar */

        .navbar {
            background: #111827;
            color: white;
            padding: 18px 7%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 21px;
            font-weight: bold;
        }

        .college {
            font-size: 14px;
            color: #cbd5e1;
        }

        /* Main */

        .container {
            width: 90%;
            max-width: 500px;
            margin: 90px auto;
        }

        .card {
            background: white;
            padding: 40px;
            border-radius: 14px;
            border: 1px solid #e5e7eb;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.06);
        }

        .icon {
            width: 65px;
            height: 65px;
            margin: 0 auto 20px;
            border-radius: 50%;
            background: #fee2e2;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 28px;
        }

        h1 {
            text-align: center;
            font-size: 28px;
            margin-bottom: 10px;
            color: #111827;
        }

        .description {
            text-align: center;
            color: #6b7280;
            font-size: 14px;
            line-height: 1.6;
            margin-bottom: 30px;
        }

        label {
            display: block;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        input[type="text"] {
            width: 100%;
            padding: 13px;
            border: 1px solid #d1d5db;
            border-radius: 7px;
            font-size: 15px;
            outline: none;
        }

        input[type="text"]:focus {
            border-color: #4f46e5;
            box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1);
        }

        .btn {
            width: 100%;
            margin-top: 20px;
            padding: 13px;
            border: none;
            border-radius: 7px;
            background: #dc2626;
            color: white;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.2s;
        }

        .btn:hover {
            background: #b91c1c;
        }

        .back {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #4f46e5;
            font-size: 14px;
            font-weight: bold;
        }

        .back:hover {
            text-decoration: underline;
        }

        /* Warning */

        .warning {
            margin-top: 25px;
            padding: 12px;
            background: #fff7ed;
            border: 1px solid #fed7aa;
            border-radius: 7px;
            color: #9a3412;
            font-size: 13px;
            line-height: 1.5;
            text-align: center;
        }

    </style>

</head>

<body>

    <!-- Navigation Bar -->

    <nav class="navbar">

        <div class="logo">
            Student Management System
        </div>

        <div class="college">
            MBU
        </div>

    </nav>


    <!-- Delete Form -->

    <div class="container">

        <div class="card">

            <div class="icon">
                🗑️
            </div>

            <h1>Delete Student</h1>

            <p class="description">
                Enter the Student ID below to permanently remove
                the student record from the database.
            </p>


            <form action="./DeleteStudentController" method="post">

                <label for="studentId">
                    Student ID
                </label>

                <input
                    type="text"
                    id="studentId"
                    name="id"
                    placeholder="Enter Student ID"
                    required
                >

                <input
                    type="submit"
                    value="Delete Student"
                    class="btn"
                >

            </form>


            <div class="warning">
                ⚠️ This action cannot be undone. Please make sure
                you enter the correct Student ID.
            </div>


            <a href="./home.jsp" class="back">
                ← Back to Home
            </a>

        </div>

    </div>

</body>

</html>