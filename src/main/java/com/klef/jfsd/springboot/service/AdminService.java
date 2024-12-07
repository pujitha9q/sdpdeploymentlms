package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;

public interface AdminService 
{
	public List<Student> viewAllStudents();
	public List<Faculty> viewAllFaculty();
	public Admin CheckAdminLogin(String username,String password);
	public String facreg(Faculty faculty);
	public String studreg(Student student);
	
	public long stdcount();
	public long faccount();
	
	public String deletestudent(int id);
	
	  
}
