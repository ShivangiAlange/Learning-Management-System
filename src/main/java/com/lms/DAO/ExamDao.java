package com.lms.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.lms.Model.Exam;
import com.lms.Service.ExamService;

public class ExamDao implements ExamService
{
    private JdbcTemplate jt;

    public void setJt(JdbcTemplate jt)
    {
        this.jt = jt;
    }

    @Override
    public int createExam(Exam e)
    {
        jt.update(
            "insert into exam(cid,tid,etitle) values("
            + e.getCid() + ","
            + e.getTid() + ",'"
            + e.getEtitle() + "')"
        );

        int eid = jt.queryForObject(
            "select max(eid) from exam",
            Integer.class
        );

        return eid;
    }

    @Override
    public List<Exam> displayExams(int cid)
    {
        return jt.query("select * from exam where cid=" + cid,new ExamRowMapper());
    }
}