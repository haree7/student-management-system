package com.pst.sms_mini.dao;

import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

import com.pst.sms_mini.bo.StudentBo;
import com.pst.smsmini.dto.StudentDto;

public class StudentDao {

    private static final String QUERY =
            "INSERT INTO student(id, name, dob) VALUES(?, ?, ?)";

    private static final String QUERY2 =
            "SELECT * FROM student";

    private static final String DELETE =
            "DELETE FROM student WHERE id = ?";

    private Connection con = null;

    private Connection getConnection()
            throws SQLException, IOException {

        Properties properties = new Properties();

        try (FileInputStream input =
                     new FileInputStream("config/database.properties")) {

            properties.load(input);
        }

        String url = properties.getProperty("db.url");
        String username = properties.getProperty("db.username");
        String password = properties.getProperty("db.password");

        return DriverManager.getConnection(url, username, password);
    }

    public int addStudent(StudentBo bo)
            throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.cj.jdbc.Driver");

        try {
            Connection con = getConnection();

            PreparedStatement ps = con.prepareStatement(QUERY);

            ps.setInt(1, bo.getId());
            ps.setString(2, bo.getName());
            ps.setString(3, bo.getDob());

            int i = ps.executeUpdate();

            ps.close();
            con.close();

            return i;

        } catch (IOException e) {
            throw new SQLException("Unable to load database configuration.", e);
        }
    }

    public List<StudentDto> getAllStudents()
            throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.cj.jdbc.Driver");

        List<StudentDto> studentDtoList = new ArrayList<>();

        try {
            Connection con = getConnection();

            PreparedStatement ps = con.prepareStatement(QUERY2);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                int id = rs.getInt(1);
                String name = rs.getString(2);
                String dob = rs.getString(3);

                System.out.println(
                        "id :" + id +
                        " name :" + name +
                        " dob :" + dob
                );

                StudentDto dto = new StudentDto();

                dto.setId(id);
                dto.setName(name);
                dto.setDob(dob);

                studentDtoList.add(dto);
            }

            rs.close();
            ps.close();
            con.close();

            return studentDtoList;

        } catch (IOException e) {
            throw new SQLException("Unable to load database configuration.", e);
        }
    }

    public int DeleteStudent(int id)
            throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.cj.jdbc.Driver");

        try {
            Connection con = getConnection();

            PreparedStatement ps = con.prepareStatement(DELETE);

            ps.setInt(1, id);

            int result = ps.executeUpdate();

            System.out.println("Rows Deleted in dao: " + result);

            ps.close();
            con.close();

            return result;

        } catch (IOException e) {
            throw new SQLException("Unable to load database configuration.", e);
        }
    }
}
