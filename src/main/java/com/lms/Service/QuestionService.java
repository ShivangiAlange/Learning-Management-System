package com.lms.Service;

import java.util.List;

import com.lms.Model.Question;

public interface QuestionService {

	public void addQuestion(Question q);
	
	public List<Question> displayQuestions(int eid);
	

}
