package com.lms.DAO;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.lms.Model.Admin;
import com.lms.Service.AdminService;

public class AdminDao implements AdminService
{
	JdbcTemplate jt;
	
	public void setJt(JdbcTemplate jt)
	{
		this.jt=jt;
	}
	
	public Admin checkDetails(String x,String y)
	{
		try 
		{
			Admin a =jt.queryForObject("select * from admin where aname='"+x+"' and apass='"+y+"'", new AdminRowMapper());	
			
			return a;
		}
		catch(Exception e)
		{
			return null;
		}
	}
	@Override
	public void forgotPassword(String aname, String newPassword)
	{
	    jt.update(
	        "update admin set apass='"
	        + newPassword
	        + "' where aname='"
	        + aname
	        + "'"
	    );
	}
}
