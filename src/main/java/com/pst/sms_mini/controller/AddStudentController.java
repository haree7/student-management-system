package com.pst.sms_mini.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.pst.sms_mini.service.StudentService;
import com.pst.sms_mini.vo.StudentVo;

/**
 * Servlet implementation class AddStudentController
 */
@WebServlet("/AddStudentController")
public class AddStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private StudentService studentService = null;
	private StudentVo vo = null;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i=0;
		int id            = Integer.parseInt(request.getParameter("id"));
		String firstName  = request.getParameter("firstName");
		String secondName = request.getParameter("secondName");
		int day           = Integer.parseInt(request.getParameter("day"));
		int month         = Integer.parseInt(request. getParameter("month")) ;
		int year          = Integer.parseInt(request.getParameter("year")) ;
		
		vo = new StudentVo();
		vo.setId(id);
		vo.setFirstName(firstName);
		vo.setSecondName(secondName);
		vo.setDay(day);
		vo.setMonth(month);
		vo.setYear(year);
		
		studentService = new StudentService();
		
		try {
			i = studentService.addStudent(vo);
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		if(i>0) {
			response.getWriter().println("Successfully Student data is added to database");
		}
		else {
			response.getWriter().println("Student insertion failed");
		}
			
		
	}

}
