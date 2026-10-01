package com.lms.Service;

import java.util.List;
import com.lms.Model.Result;

public interface ResultService 
{
    public void saveResult(int sid, int eid, int score, int total);
    public List<Result> displayResults(int tid);
    public List<Result> displayStudentResults(int sid);
}