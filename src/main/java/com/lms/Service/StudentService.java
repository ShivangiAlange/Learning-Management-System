package com.lms.Service;

import java.util.List;

import com.lms.Model.Student;

public interface StudentService 
{
    public void register(Student s1);

    public Student checkdetails(String semail, String password);
    
    public List<Student> display();

    public void up(Student s1);

    public Student edit(int sid);
    
    public void delete(int sid);
    
    public void forgotPassword(String semail, String newPassword);
}