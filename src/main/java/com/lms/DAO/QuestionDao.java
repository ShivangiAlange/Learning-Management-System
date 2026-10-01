package com.lms.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.lms.Model.Question;
import com.lms.Service.QuestionService;

public class QuestionDao implements QuestionService
{
    private JdbcTemplate jt;

    public void setJt(JdbcTemplate jt)
    {
        this.jt = jt;
    }

    @Override
    public void addQuestion(Question q)
    {
        jt.update(
            "insert into question(eid,question,option_a,option_b,option_c,option_d,correct_answer) values("
            + q.getEid() + ",'"
            + q.getQuestion() + "','"
            + q.getOption_a() + "','"
            + q.getOption_b() + "','"
            + q.getOption_c() + "','"
            + q.getOption_d() + "','"
            + q.getCorrect_answer() + "')"
        );
    }

    @Override
    public List<Question> displayQuestions(int eid)
    {
        return jt.query(
            "select * from question where eid=" + eid,
            new QuestionRowMapper()
        );
    }
}