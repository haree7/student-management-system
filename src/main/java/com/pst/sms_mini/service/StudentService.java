package com.pst.sms_mini.service;

import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.ServletContext;

import com.pst.sms_mini.bo.StudentBo;
import com.pst.sms_mini.dao.StudentDao;
import com.pst.sms_mini.vo.StudentVo;
import com.pst.smsmini.dto.StudentDto;

public class StudentService {

    private StudentDao studentDao = null;

    public int addStudent(StudentVo vo, ServletContext context)
            throws ClassNotFoundException, SQLException {

        studentDao = new StudentDao();

        // Preparing BO object
        int id = vo.getId();
        String firstName = vo.getFirstName();
        String secondName = vo.getSecondName();

        int day = vo.getDay();
        int month = vo.getMonth();
        int year = vo.getYear();

        String name = firstName + secondName;
        String dob = day + "-" + month + "-" + year;

        StudentBo bo = new StudentBo();

        bo.setId(id);
        bo.setName(name);
        bo.setDob(dob);

        int i = studentDao.addStudent(bo, context);

        return i;
    }

    public List<StudentDto> getAllStudents(ServletContext context)
            throws ClassNotFoundException, SQLException {

        studentDao = new StudentDao();

        List<StudentDto> studentdtoList =
                studentDao.getAllStudents(context);

        return studentdtoList;
    }

    // Deleting student record
    public int DeleteStudent(int id, ServletContext context)
            throws ClassNotFoundException, SQLException {

        studentDao = new StudentDao();

        int result = studentDao.DeleteStudent(id, context);

        System.out.println("result in session : " + result);

        return result;
    }
}