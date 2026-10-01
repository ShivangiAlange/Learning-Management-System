package com.lms.DAO;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.lms.Model.Student;
import com.lms.Service.StudentService;

public class StudentDao implements StudentService 
{

	JdbcTemplate jt;

    public void setJt(JdbcTemplate jt) {
        this.jt = jt;
    }
    
	
	@Override
	public void register(Student s1)
	{
	    String sql = "insert into student "
	            + "(cname, admission_date, batch_start_date, training_mode, "
	            + "sname, scontact, semail, password) "
	            + "values (?, ?, ?, ?, ?, ?, ?, ?)";

	    jt.update(sql,
	            s1.getCname(),
	            new java.sql.Date(s1.getAdmission_date().getTime()),
	            new java.sql.Date(s1.getBatch_start_date().getTime()),
	            s1.getTraining_mode(),
	            s1.getSname(),
	            s1.getScontact(),
	            s1.getSemail(),
	            s1.getPassword()
	    );
	}


	public Student checkdetails(String semail, String password)
	{
		try
		{
		    Student s = jt.queryForObject("select * from student where semail='" + semail + "' and password='" + password + "'",new StudentDisp());
	
		    return s;
		}
		catch(Exception e)
		{
			return null;
		}
	}


	@Override
	public List<Student> display() 
	{
		List<Student> l1=jt.query("select * from student", new StudentDisp());
		
		return l1;
	}
	@Override
	public void up(Student s1)
	{
	    jt.update("UPDATE student SET "
	            + "cname=?, "
	            + "admission_date=?, "
	            + "batch_start_date=?, "
	            + "training_mode=?, "
	            + "sname=?, "
	            + "scontact=?, "
	            + "semail=?, "
	            + "password=? "
	            + "WHERE sid=?",

	            s1.getCname(),
	            new java.sql.Date(s1.getAdmission_date().getTime()),
	            new java.sql.Date(s1.getBatch_start_date().getTime()),
	            s1.getTraining_mode(),
	            s1.getSname(),
	            s1.getScontact(),
	            s1.getSemail(),
	            s1.getPassword(),
	            s1.getSid()
	    );
	}


	@Override
	public Student edit(int sid)
	{
		try
		{
		    Student s1 = jt.queryForObject("select * from student where sid='" + sid + "'",new StudentDisp());
		    return s1;
		}
		catch(Exception e)
		{
			return null;
		}
	}
	@Override
	public void delete(int sid)
	{
	    jt.update("delete from student where sid='"+sid+"'");
	}
	@Override
	public void forgotPassword(String semail, String newPassword)
	{
	    jt.update(
	        "update student set password='"
	        + newPassword
	        + "' where semail='"
	        + semail
	        + "'"
	    );
	}
	
}
