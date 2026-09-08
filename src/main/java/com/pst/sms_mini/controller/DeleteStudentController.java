package com.pst.sms_mini.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

import com.pst.sms_mini.service.StudentService;

@WebServlet("/DeleteStudentController")
public class DeleteStudentController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private StudentService studentService = null;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int result = 0;

        int id = Integer.parseInt(request.getParameter("id"));

        studentService = new StudentService();

        try {

            result = studentService.DeleteStudent(
                    id,
                    getServletContext()
            );

        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();
            throw new ServletException(
                    "Unable to delete student from database.", e
            );
        }

        if (result > 0) {

            response.sendRedirect("./ViewAllStudentsController");

        } else {

            response.getWriter().println("Student ID Not Found");
        }
    }
}