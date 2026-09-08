package com.pst.sms_mini.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.pst.sms_mini.service.StudentService;
import com.pst.smsmini.dto.StudentDto;


@WebServlet("/ViewAllStudentsController")
public class ViewAllStudentsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ViewAllStudentsController() {
        super();
        // TODO Auto-generated constructor stub
    }
    private StudentService studentService= null;
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		studentService = new StudentService();
		List<StudentDto> studentList = null;
		
		try {
			studentList = studentService.getAllStudents();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		request. setAttribute("studentList", studentList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("ViewAllStudents.jsp");
		dispatcher. forward(request, response);
	}

}
