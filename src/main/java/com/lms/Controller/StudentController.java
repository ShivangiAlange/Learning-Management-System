package com.lms.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lms.Model.Exam;
import com.lms.Model.Result;
import com.lms.Model.Student;
import com.lms.Service.ExamService;
import com.lms.Service.ResultService;
import com.lms.Service.StudentService;

@Controller
public class StudentController 
{
	@Autowired
	StudentService ss;
	
	@RequestMapping("/Sreg")
	public String register()
	{
		return "Sreg";
	}
	
	@RequestMapping("/SregSave")	
	public String register(Student s1)
	{
		ss.register(s1);
		
		return "AdminHome";
	}
	@RequestMapping("/slog")
	public String Slog()
	{
		return "slog";
	}
	@RequestMapping("/slogCheck")
	public String loginCheck(@RequestParam("semail") String semail,@RequestParam("password") String password ,HttpSession s1)
	{
		Student s=ss.checkdetails(semail,password);
		
		if (s != null)
		{
			s1.setAttribute("Student", s);
			return "StudentHome";
		}
		else	
		{
			return "slog";
		}
				
	}
	@RequestMapping("/logut")
	public String log()
	{
		return "slog";
	}
	@RequestMapping("/StudentLogout")
	public String logout(HttpSession session)
	{
	    session.invalidate();
	    return "slog";
	}
	@RequestMapping("/StudentDisplay")
	public String display(Model m)
	{
	    List<Student> l1 = ss.display();
	    m.addAttribute("data", l1);
	    return "StudentDisplay";
	}
	
	@RequestMapping("/stuUP")
	public String updateData(Student s1)
	{
	    ss.up(s1);
	    return "redirect:/StudentDisplay";
	}
	@RequestMapping("/StudentUpdate")
	public String update(@RequestParam("sid") int sid, Model m)
	{
	    Student s1 = ss.edit(sid);
	    m.addAttribute("temp", s1);

	    return "StudentUpdate";
	}
	@RequestMapping("/StudentDelete")
	public String delete(@RequestParam("sid") int sid)
	{
	    ss.delete(sid);
	    return "redirect:/StudentDisplay";
	}
	@RequestMapping("/StudentHome")
	public String studentHome()
	{
	    return "StudentHome";
	}

	@RequestMapping("/StudentProfile")
	public String studentProfile(HttpSession session, Model m)
	{
	    Student s = (Student) session.getAttribute("Student");

	    m.addAttribute("student", s);

	    return "StudentProfile";
	}
	@Autowired
	ExamService es;
	@RequestMapping("/CProgramming")
	public String cProgramming(Model m)
	{
	    List<Exam> l1 = es.displayExams(1);
	    m.addAttribute("exams", l1);

	    return "CProgramming";
	}
	@RequestMapping("/WebDevelopment")
	public String webDevelopment(Model m)
	{
	    List<Exam> l1 = es.displayExams(2);
	    m.addAttribute("exams", l1);

	    return "WebDevelopment";
	}
	@RequestMapping("/SQL")
	public String sql(Model m)
	{
	    List<Exam> l1 = es.displayExams(3);
	    m.addAttribute("exams", l1);

	    return "SQL";
	}
	@Autowired
	ResultService rs;
	@RequestMapping("/StudentResults")
	public String studentResults(HttpSession session, Model m)
	{
	    Student s = (Student) session.getAttribute("Student");

	    int sid = s.getSid();

	    List<Result> l1 = rs.displayStudentResults(sid);

	    m.addAttribute("results", l1);

	    return "StudentResults";
	}
	@RequestMapping("/StudentForgotPassword")
	public String forgotPassword()
	{
	    return "StudentForgotPassword";
	}

	@RequestMapping("/StudentForgotPasswordSave")
	public String forgotPasswordSave(
	        @RequestParam("semail") String semail,
	        @RequestParam("newPassword") String newPassword)
	{
	    ss.forgotPassword(semail, newPassword);

	    return "slog";
	}
}
