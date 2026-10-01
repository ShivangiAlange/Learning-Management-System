package com.lms.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.lms.Model.Exam;

public class ExamRowMapper implements RowMapper<Exam>
{
    @Override
    public Exam mapRow(ResultSet rs, int rowNum) throws SQLException
    {
        Exam e = new Exam();

        e.setEid(rs.getInt("eid"));
        e.setCid(rs.getInt("cid"));
        e.setTid(rs.getInt("tid"));
        e.setEtitle(rs.getString("etitle"));

        return e;
    }
}