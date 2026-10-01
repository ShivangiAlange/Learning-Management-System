package com.lms.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.lms.Model.Result;
import com.lms.Service.ResultService;

public class ResultDao implements ResultService
{
    private JdbcTemplate jt;

    public void setJt(JdbcTemplate jt)
    {
        this.jt = jt;
    }

    @Override
    public void saveResult(int sid, int eid, int score, int total)
    {
        jt.update(
            "insert into result(sid,eid,score,total_marks) values("
            + sid + ","
            + eid + ","
            + score + ","
            + total + ")"
        );
    }

    @Override
    public List<Result> displayResults(int tid)
    {
        return jt.query(
            "select r.* from result r, exam e "
            + "where r.eid=e.eid and e.tid=" + tid,
            new ResultRowMapper()
        );
    }
    @Override
    public List<Result> displayStudentResults(int sid)
    {
        return jt.query(
            "select * from result where sid=" + sid,
            new ResultRowMapper()
        );
    }
}