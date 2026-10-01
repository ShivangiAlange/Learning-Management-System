package com.lms.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import com.lms.Model.Student;

public class StudentDisp implements RowMapper<Student>
{
    @Override
    public Student mapRow(ResultSet rs, int rowNum) throws SQLException
    {
        Student s = new Student();

        s.setSid(rs.getInt(1));
        s.setCname(rs.getString(2));
        s.setAdmission_date(new Date(rs.getDate(3).getTime()));
        s.setBatch_start_date(new Date(rs.getDate(4).getTime()));
        s.setTraining_mode(rs.getString(5));
        s.setSname(rs.getString(6));
        s.setScontact(rs.getString(7));
        s.setSemail(rs.getString(8));
        s.setPassword(rs.getString(9));

        return s;
    }
}