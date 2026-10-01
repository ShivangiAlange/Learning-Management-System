package com.lms.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.lms.Model.Teacher;
import com.lms.Service.TeacherService;

public class TeacherDao implements TeacherService
{
    private JdbcTemplate jt;

    public void setJt(JdbcTemplate jt)
    {
        this.jt = jt;
    }

    @Override
    public void register(Teacher t)
    {
        jt.update(
            "insert into teacher(tname,tcontact,temail,dept,username,password,status) values('"
            + t.getTname() + "','"
            + t.getTcontact() + "','"
            + t.getTemail() + "','"
            + t.getDept() + "','"
            + t.getUsername() + "','"
            + t.getPassword() + "','PENDING')"
        );
    }

    @Override
    public Teacher checkDetails(String username, String password)
    {
        try
        {
            Teacher t = jt.queryForObject("select * from teacher where username='" + username+ "' and password='" + password+ "' and status='APPROVED'",new TeacherRowMapper());

            return t;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    @Override
    public List<Teacher> display()
    {
        return jt.query("select * from teacher",
            new TeacherRowMapper()
        );
    }
    @Override
    public void approve(int tid)
    {
        jt.update("update teacher set status='APPROVED' where tid=" + tid);
    }

    @Override
    public void reject(int tid)
    {
        jt.update("update teacher set status='REJECTED' where tid=" + tid);
    }
    @Override
    public void forgotPassword(String temail, String newPassword)
    {
        jt.update(
            "update teacher set password='"
            + newPassword
            + "' where temail='"
            + temail
            + "'"
        );
    }
}