package com.lms.Service;

import com.lms.Model.Admin;

public interface AdminService {

    public Admin checkDetails(String x, String y);
    
    public void forgotPassword(String aname, String newPassword);

}