package com.lms.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.lms.Model.Result;

public class ResultRowMapper implements RowMapper<Result>
{
    @Override
    public Result mapRow(ResultSet rs, int rowNum) throws SQLException
    {
        Result r = new Result();

        r.setRid(rs.getInt("rid"));
        r.setSid(rs.getInt("sid"));
        r.setEid(rs.getInt("eid"));
        r.setScore(rs.getInt("score"));
        r.setTotal_marks(rs.getInt("total_marks"));

        return r;
    }
}