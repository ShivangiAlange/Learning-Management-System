package com.lms.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.lms.Model.Admin;

public class AdminRowMapper implements RowMapper<Admin>
{
    @Override
    public Admin mapRow(ResultSet rs, int rowNum) throws SQLException
    {
        Admin a = new Admin();

        a.setAid(rs.getInt("aid"));
        a.setAname(rs.getString("aname"));
        a.setApss(rs.getString("apass"));

        return a;
    }
}