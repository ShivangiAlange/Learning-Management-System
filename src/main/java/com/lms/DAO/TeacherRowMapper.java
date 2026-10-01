package com.lms.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.lms.Model.Teacher;

public class TeacherRowMapper implements RowMapper<Teacher>
{
    @Override
    public Teacher mapRow(ResultSet rs, int rowNum) throws SQLException
    {
        Teacher t = new Teacher();

        t.setTid(rs.getInt("tid"));
        t.setTname(rs.getString("tname"));
        t.setTcontact(rs.getString("tcontact"));
        t.setTemail(rs.getString("temail"));
        t.setDept(rs.getString("dept"));
        t.setUsername(rs.getString("username"));
        t.setPassword(rs.getString("password"));
        t.setStatus(rs.getString("status"));

        return t;
    }
}