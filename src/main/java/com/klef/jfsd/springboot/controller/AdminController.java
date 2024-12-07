package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/")
	public ModelAndView mainnavbar()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mainnavbar");
		return mv;
	}

	
	@GetMapping("adminlogin")
	 public ModelAndView adminlogin()
	 {
		 ModelAndView mv = new ModelAndView();
		 mv.setViewName("adminlogin");
		 return mv;
	 }
	
	@PostMapping("CheckAdminLogin")
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String cusername = request.getParameter("cusername");
		String cpwd = request.getParameter("cpwd");
		
	Admin admin = 	adminService.CheckAdminLogin(cusername, cpwd);
	if(admin != null)
	{
		mv.setViewName("adminhome");
	
	}
	else
	{
		mv.setViewName("adminloginfail");
		mv.addObject("msg", "login Failed");
	}
	  return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv =  new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	@GetMapping("facreg")
	public ModelAndView FacReg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facreg");
		return mv;
	}
	@PostMapping("insertfaculty")
	public ModelAndView insertfaculty(HttpServletRequest request)
	{
		String name = request.getParameter("cname");
		String gender = request.getParameter("cgender");
		String dateofbirth = request.getParameter("cdob");
		String email = request.getParameter("cemail");
		String password = request.getParameter("cpwd");
		String location = request.getParameter("cloc");
		String contact = request.getParameter("cconc");
		
		Faculty f = new Faculty();
		f.setName(name);
		f.setGender(gender);
		f.setDateofbirth(dateofbirth);
		f.setEmail(email);
		f.setPassword(password);
		f.setLocation(location);
		f.setContact(contact);
		
		String msg = facultyService.FacReg(f);
		
		ModelAndView mv = new ModelAndView("facregsuccess");
		mv.addObject("message",msg);
		return mv;

		
		
	}
	@GetMapping("studentreg")
	public ModelAndView studentreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentreg");
		return mv;
	}
	
	
	@PostMapping("insertstudent")
	public ModelAndView insertstudent(HttpServletRequest request)
	{
		String name = request.getParameter("cname");
		String gender = request.getParameter("cgender");
		String dateofbirth = request.getParameter("cdob");
		String email = request.getParameter("cemail");
		String password = request.getParameter("cpwd");
		String location = request.getParameter("cloc");
		String contact = request.getParameter("conc");

		
		Student s = new Student();
		s.setName(name);
		s.setGender(gender);
		s.setDateofbirth(dateofbirth);
		s.setEmail(email);
		s.setPassword(password);
		s.setLocation(location);
		s.setContact(contact);
		
		String msg = studentService.StudentReg(s);
		ModelAndView mv = new ModelAndView("studentregsuccess");
		mv.addObject("message",msg);
		return mv;
	}

	@GetMapping("viewallstudents")
	public ModelAndView viewallstudents()
	{
		ModelAndView mv = new ModelAndView();
		List<Student> stdlist = adminService.viewAllStudents();
		mv.setViewName("viewallstudents");
		mv.addObject("stdlist", stdlist);
		
		long count = adminService.stdcount();
		mv.addObject("count", count);
		return mv;
		
	}
	
	
	@GetMapping("viewallfaculty")
	public ModelAndView viewallfaculty()
	{
		ModelAndView mv = new ModelAndView();
		List<Faculty> faclist = adminService.viewAllFaculty();
		mv.setViewName("viewallfaculty");
		mv.addObject("faclist", faclist);
		
		long count = adminService.faccount();
		mv.addObject("count", count);
		return mv;
	}

	
	@GetMapping("/delete")
	public String deleteoperation(@RequestParam("id") int sid) {
	    adminService.deletestudent(sid);
	    return "redirect:/deletestudentbyadmin"; // Redirect to the list page
	}

	
	@GetMapping("/deletestudentbyadmin")
	public ModelAndView deletestudentbyadmin() {
	    ModelAndView mv = new ModelAndView();
	    List<Student> studentlist = adminService.viewAllStudents();
	    mv.setViewName("deletestudentbyadmin");
	    mv.addObject("studentlist", studentlist);
	    return mv;
	}

	

}
