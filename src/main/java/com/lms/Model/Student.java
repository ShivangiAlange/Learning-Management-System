package com.lms.Model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Student 
{
	private int sid;
	private String cname;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date admission_date;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date batch_start_date;
	
	private String training_mode;
	private String sname;
	private String scontact;
	private String semail;
	private String Password;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public Date getAdmission_date() {
		return admission_date;
	}
	public void setAdmission_date(Date admission_date) {
		this.admission_date = admission_date;
	}
	public Date getBatch_start_date() {
		return batch_start_date;
	}
	public void setBatch_start_date(Date batch_start_date) {
		this.batch_start_date = batch_start_date;
	}
	public String getTraining_mode() {
		return training_mode;
	}
	public void setTraining_mode(String training_mode) {
		this.training_mode = training_mode;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getScontact() {
		return scontact;
	}
	public void setScontact(String scontact) {
		this.scontact = scontact;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
	
	
}
