<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Student Management System</title>

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
            width: 86%;
            max-width: 1100px;
            margin: 70px auto;
        }

        .hero {
            text-align: center;
            margin-bottom: 50px;
        }

        .hero h1 {
            font-size: 42px;
            margin-bottom: 15px;
            color: #111827;
        }

        .hero p {
            font-size: 17px;
            color: #6b7280;
            max-width: 650px;
            margin: auto;
            line-height: 1.6;
        }

        .badge {
            display: inline-block;
            background: #e0e7ff;
            color: #3730a3;
            padding: 7px 15px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: bold;
            margin-bottom: 18px;
        }

        /* Cards */

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .card {
            background: white;
            padding: 32px 25px;
            border-radius: 12px;
            border: 1px solid #e5e7eb;
            text-align: center;
            transition: 0.25s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
        }

        .icon {
            width: 55px;
            height: 55px;
            margin: 0 auto 20px;
            border-radius: 50%;
            background: #eef2ff;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 25px;
        }

        .card h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 14px;
            color: #6b7280;
            line-height: 1.5;
            margin-bottom: 22px;
        }

        .btn {
            display: inline-block;
            text-decoration: none;
            background: #4f46e5;
            color: white;
            padding: 11px 22px;
            border-radius: 7px;
            font-size: 14px;
            font-weight: bold;
            transition: 0.2s;
        }

        .btn:hover {
            background: #4338ca;
        }

        .btn-danger {
            background: #dc2626;
        }

        .btn-danger:hover {
            background: #b91c1c;
        }

        /* Footer */
        footer {
            text-align: center;
            margin-top: 70px;
            padding: 20px;
            border-top: 1px solid #e5e7eb;
            color: #6b7280;
            font-size: 13px;
        }

        /* Responsive */

        @media (max-width: 800px) {

            .cards {
                grid-template-columns: 1fr;
            }

            .hero h1 {
                font-size: 32px;
            }

            .container {
                width: 90%;
                margin-top: 45px;
            }

            .navbar {
                padding: 16px 5%;
            }
        }

    </style>

</head>

<body>

<%
    String name = "Hareesh";
    String project = "Student Management System";
%>

<!-- Navigation Bar -->

<nav class="navbar">

    <div class="logo">
        Student Management System
    </div>

    <div class="college">
        <%= name %>
    </div>

</nav>


<!-- Main Content -->

<div class="container">

    <div class="hero">

        <div class="badge">
            <%= name %> • CSE Project
        </div>

        <h1>
            <%= project %>
        </h1>

        <p>
            A simple web-based application for managing student records.
            Add, view, and delete student information through an easy-to-use interface.
        </p>

    </div>


    <!-- Action Cards -->

    <div class="cards">

        <!-- Add Student -->

        <div class="card">

            <div class="icon">
                ➕
            </div>

            <h2>Add Student</h2>

            <p>
                Add a new student and store their information in the database.
            </p>

            <a href="./AddStudent.jsp" class="btn">
                Add Student
            </a>

        </div>


        <!-- View Students -->

        <div class="card">

            <div class="icon">
                👥
            </div>

            <h2>View Students</h2>

            <p>
                View all registered students and their information.
            </p>

            <a href="./ViewAllStudentsController" class="btn">
                View Students
            </a>

        </div>


        <!-- Delete Student -->

        <div class="card">

            <div class="icon">
                🗑️
            </div>

            <h2>Delete Student</h2>

            <p>
                Remove a student record from the database using their ID.
            </p>

            <a href="./DeleteStudent.jsp" class="btn btn-danger">
                Delete Student
            </a>

        </div>

    </div>

</div>


<!-- Footer -->

<footer>

    Student Management System &nbsp; • &nbsp;
    Java JSP & Servlets &nbsp; • &nbsp;
    MySQL

</footer>

</body>

</html>