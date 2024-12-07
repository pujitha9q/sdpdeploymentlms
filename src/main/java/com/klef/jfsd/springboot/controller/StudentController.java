package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Task;
import com.klef.jfsd.springboot.service.CourseService;
import com.klef.jfsd.springboot.service.StudentService;
import com.klef.jfsd.springboot.service.TaskService;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController 
{

	@Autowired
	public StudentService studentService;
	
	@Autowired
	public CourseService courseService;
	
	@Autowired
	public TaskService taskService;
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@GetMapping("studentlogout")
	public ModelAndView studentlogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		session.removeAttribute("student");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	
	@PostMapping("CheckStudentLogin")
	public ModelAndView CheckStudentLogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();

	    String cemail = request.getParameter("cemail");
	    String cpwd = request.getParameter("cpwd");

	    Student student = studentService.CheckStudentLogin(cemail, cpwd);
	    if (student != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("student", student); // Store student in session
	        mv.setViewName("studenthome");
	    } else {
	        mv.setViewName("studentloginfail");
	        mv.addObject("msg", "Login Failed");
	    }
	    return mv;
	}

	
	
	@GetMapping("studenthome")
	public ModelAndView studenthome()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studenthome");
		return mv;
	}
	
	
	@GetMapping("updatestudent")
	public ModelAndView updateStudent(HttpSession session) {
	    ModelAndView mv = new ModelAndView();
	    Student student = (Student) session.getAttribute("student");

	    if (student == null) {
	        mv.setViewName("stdsessionexpiry"); // Redirect to session expiry page
	    } else {
	        mv.setViewName("updatestudent");
	        mv.addObject("student", student); // Pass student object to JSP
	    }
	    return mv;
	}


	@PostMapping("updatestudentprofile")
	public ModelAndView updateStudentProfile(HttpServletRequest request, HttpSession session) {
	    ModelAndView mv = new ModelAndView();
	    try {
	        int id = Integer.parseInt(request.getParameter("id")); // Corrected parameter name
	        String name = request.getParameter("name");
	        String gender = request.getParameter("gender");
	        String dateofbirth = request.getParameter("dob");
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");
	        String location = request.getParameter("location");
	        String contact = request.getParameter("contact");
	       // String status = request.getParameter("status");
	        
	        Student student = new Student();
	        student.setId(id);
	        student.setName(name);
	        student.setGender(gender);
	        student.setDateofbirth(dateofbirth);
	        student.setEmail(email);
	        student.setPassword(password);
	        student.setLocation(location);
	        student.setContact(contact);
	       // student.setStatus(status); // Ensure status is set

	        String msg = studentService.updateStudent(student);
	        
	        session.setAttribute("student", student); // Update session
	        mv.setViewName("stdsuccess");
	        mv.addObject("message", msg);
	    } catch (Exception e) {
	        mv.setViewName("stdupdateerror");
	        mv.addObject("message", "Error updating profile: " + e.getMessage());
	    }
	    return mv;
	}

	@GetMapping("stdsessionexpiry")
	public ModelAndView stdsessionexpiry()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("stdsessionexpiry");
		return mv;
	}
	@GetMapping("mailsessionexpiry")
	public ModelAndView mailsessionexpiry()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mailsessionexpiry");
		return mv;
	}
	
	@GetMapping("contactus")
	public ModelAndView contactus()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contactus");
		return mv;
	}
	
	
	 @Autowired
	 private JavaMailSender mailSender;
	 @PostMapping("sendemail")
	 public ModelAndView sendEmail(HttpServletRequest request) throws Exception 
	 {
	 String name = request.getParameter("name");
	 String toemail = request.getParameter("email");
	 String subject = request.getParameter("subject");
	 String msg = request.getParameter("message");
	 MimeMessage mimeMessage = mailSender.createMimeMessage();
	 MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
	 
	 int otp = (int)(Math.random() * 99999); // random number generation 
	 helper.setTo(toemail);
	 helper.setSubject(subject);
	 helper.setFrom("learningmanagementsystem27@gmail.com");
	 String htmlContent = 
	 "<h3>Contact Form Details</h3>" +
	 "<p><strong>Name:</strong> " + name + "</p>" +
	 "<p><strong>Email:</strong> " + toemail + "</p>" +
	 "<p><strong>Subject:</strong> " + subject + "</p>" +
	 "<p><strong>Message:</strong> " + msg + "</p>" +
	 "<p><strong>OTP:</strong> " + otp + "</p>";
	 helper.setText(htmlContent, true);
	 mailSender.send(mimeMessage);
	 
	 ModelAndView mv = new ModelAndView("mailsuccess");
	 mv.addObject("message", "Email Sent Successfully");
	 return mv;
	 }
	 
	 @GetMapping("viewcourses")
	 public ModelAndView viewAllCourses() {
	     ModelAndView mv = new ModelAndView("viewcourses");
	 	long count = courseService.coursecount();
		mv.addObject("count", count);
	     List<Course> courseList = courseService.viewallcourses();
	     mv.addObject("courseList", courseList); // Add to request scope
	     return mv;
	 }
	 
	 
	

}
