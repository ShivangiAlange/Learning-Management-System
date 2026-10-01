package com.lms.Service;

import java.util.List;

import com.lms.Model.Teacher;

public interface TeacherService 
{
    public void register(Teacher t);

    public Teacher checkDetails(String username, String password);

    public List<Teacher> display();

    public void approve(int tid);

    public void reject(int tid);
    
    public void forgotPassword(String temail, String newPassword);
}