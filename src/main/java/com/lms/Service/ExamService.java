package com.lms.Service;

import java.util.List;

import com.lms.Model.Exam;

public interface ExamService 
{
	public int createExam(Exam e);
	
	 public List<Exam> displayExams(int cid);
}