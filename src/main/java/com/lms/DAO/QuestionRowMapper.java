package com.lms.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.lms.Model.Question;

public class QuestionRowMapper implements RowMapper<Question>
{
    @Override
    public Question mapRow(ResultSet rs, int rowNum) throws SQLException
    {
        Question q = new Question();

        q.setQid(rs.getInt("qid"));
        q.setEid(rs.getInt("eid"));
        q.setQuestion(rs.getString("question"));
        q.setOption_a(rs.getString("option_a"));
        q.setOption_b(rs.getString("option_b"));
        q.setOption_c(rs.getString("option_c"));
        q.setOption_d(rs.getString("option_d"));
        q.setCorrect_answer(rs.getString("correct_answer"));

        return q;
    }
}