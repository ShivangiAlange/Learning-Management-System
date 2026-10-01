package com.lms.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lms.Model.Result;
import com.lms.Model.Teacher;
import com.lms.Service.ResultService;
import com.lms.Service.TeacherService;

@Controller
public class TeacherController 
{
    @Autowired
    TeacherService ts;

    @RequestMapping("/TeacherRegister")
    public String teacherRegister()
    {
        return "TeacherRegister";
    }

    @RequestMapping("/TeacherRegisterSave")
    public String teacherRegisterSave(Teacher t)
    {
        ts.register(t);
        return "TeacherLogin";
    }

    @RequestMapping("/TeacherLogin")
    public String teacherLogin()
    {
        return "TeacherLogin";
    }

    @RequestMapping("/TeacherLoginCheck")
    public String teacherLoginCheck(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            HttpSession session)
    {
        Teacher t = ts.checkDetails(username, password);

        if(t != null)
        {
            session.setAttribute("teacher", t);
            return "TeacherHome";
        }
        else
        {
            return "TeacherLogin";
        }
    }

    @RequestMapping("/TeacherDisplay")
    public String teacherDisplay(Model m)
    {
        List<Teacher> l1 = ts.display();

        m.addAttribute("data", l1);

        return "TeacherDisplay";
    }

    @RequestMapping("/TeacherApprove")
    public String approve(@RequestParam("tid") int tid)
    {
        ts.approve(tid);

        return "redirect:/TeacherDisplay";
    }

    @RequestMapping("/TeacherReject")
    public String reject(@RequestParam("tid") int tid)
    {
        ts.reject(tid);

        return "redirect:/TeacherDisplay";
    }

    @RequestMapping("/TeacherLogout")
    public String teacherLogout(HttpSession session)
    {
        session.invalidate();

        return "TeacherLogin";
    }
    @Autowired
    ResultService rs;
    @RequestMapping("/TeacherResults")
    public String teacherResults(HttpSession session, Model m)
    {
        Teacher t = (Teacher) session.getAttribute("Teacher");

        int tid = t.getTid();

        List<Result> l1 = rs.displayResults(tid);

        m.addAttribute("results", l1);

        return "TeacherResults";
    }
    @RequestMapping("/TeacherForgotPassword")
    public String forgotPassword()
    {
        return "TeacherForgotPassword";
    }

    @RequestMapping("/TeacherForgotPasswordSave")
    public String forgotPasswordSave(
            @RequestParam("temail") String temail,
            @RequestParam("newPassword") String newPassword)
    {
        ts.forgotPassword(temail, newPassword);

        return "TeacherLogin";
    }
}