package com.lms.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lms.Model.Exam;
import com.lms.Model.Question;
import com.lms.Model.Student;
import com.lms.Model.Teacher;
import com.lms.Service.ExamService;
import com.lms.Service.QuestionService;
import com.lms.Service.ResultService;

@Controller
public class ExamController 
{
    @Autowired
    ExamService es;

    @RequestMapping("/CreateExam")
    public String createExam()
    {
        return "CreateExam";
    }

    @RequestMapping("/CreateExamSave")
    public String createExamSave(Exam e, HttpSession session)
    {
        Teacher t = (Teacher) session.getAttribute("teacher");

        if(t == null)
        {
            return "redirect:/TeacherLogin";
        }

        e.setTid(t.getTid());

        if(t.getDept().equals("C Programming"))
        {
            e.setCid(1);
        }
        else if(t.getDept().equals("Web Development"))
        {
            e.setCid(2);
        }
        else if(t.getDept().equals("SQL"))
        {
            e.setCid(3);
        }

        int eid = es.createExam(e);

        session.setAttribute("ExamId", eid);

        return "AddQuestion";
    }	
    @RequestMapping("/AddQuestion")
    public String addQuestion()
    {
        return "AddQuestion";
    }
    @Autowired
    QuestionService qs;		
    @RequestMapping("/AddQuestionSave")
    public String addQuestionSave(Question q, HttpSession session)
    {
        int eid = (Integer) session.getAttribute("ExamId");

        q.setEid(eid);

        qs.addQuestion(q);

        return "AddQuestion";
    }
    @RequestMapping("/StartExam")
    public String startExam(@RequestParam("eid") int eid, Model m)
    {
        List<Question> l1 = qs.displayQuestions(eid);

        m.addAttribute("questions", l1);
        m.addAttribute("eid", eid);

        return "Exam";
    }
    @Autowired
    ResultService rs;
    @RequestMapping("/SubmitExam")
    public String submitExam(
            @RequestParam("eid") int eid,
            HttpServletRequest request,
            HttpSession session,
            Model m)
    {
        List<Question> l1 = qs.displayQuestions(eid);

        int score = 0;

        for(Question q : l1)
        {
            String answer = request.getParameter("q" + q.getQid());

            if(answer != null && answer.equals(q.getCorrect_answer()))
            {
                score++;
            }
        }

        Student s = (Student) session.getAttribute("Student");

        int sid = s.getSid();

        int total = l1.size();

        rs.saveResult(sid, eid, score, total);

        m.addAttribute("score", score);
        m.addAttribute("total", total);

        return "ExamResult";
    }
}