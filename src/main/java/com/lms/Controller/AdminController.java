package com.lms.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lms.Model.Admin;
import com.lms.Service.AdminService;

@Controller
public class AdminController {

    @Autowired
    AdminService as;

    @RequestMapping("/AdminLogin")
    public String adminLogin()
    {
        return "AdminLogin";
    }

    @RequestMapping("/AdminLoginCheck")
    public String loginCheck(@RequestParam("aname") String aname,@RequestParam("apass") String apass,HttpSession s1)
    {
        Admin a = as.checkDetails(aname, apass);

        if(a != null)
        {
        		s1.setAttribute("Admin", a);
            
        		return "AdminHome";
        }
        else
        {	
            return "AdminLogin";
        }
    }
    @RequestMapping("/logout")
    public String logout()
    {
    		return "AdminLogin";
    }
    @RequestMapping("/AdminLogout")
    public String logout(HttpSession session)
    {
        session.invalidate();
        return "AdminLogin";
    }
    @RequestMapping("/AdminHome")
    public String adminHome()
    {
        return "AdminHome";
    }
    @RequestMapping("/AdminForgotPassword")
    public String forgotPassword()
    {
        return "AdminForgotPassword";
    }
    @Autowired
    AdminService ss;
    @RequestMapping("/AdminForgotPasswordSave")
    public String forgotPasswordSave(
            @RequestParam("aname") String aname,
            @RequestParam("newPassword") String newPassword)
    {
        ss.forgotPassword(aname, newPassword);

        return "AdminLogin";
    }
}