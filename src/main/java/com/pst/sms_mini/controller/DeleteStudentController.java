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
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int result=0;
		int id  = Integer.parseInt(request.getParameter("id"));
		
		studentService = new StudentService();
		
		try {
			result =studentService.DeleteStudent(id);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(result > 0) {
		    //response.getWriter().println("Student Deleted Successfully");
			response.sendRedirect("./ViewAllStudentsController");
		} else {

		    response.getWriter().println("Student ID Not Found");

		}
	}

}
