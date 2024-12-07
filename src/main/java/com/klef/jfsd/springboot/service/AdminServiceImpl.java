package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class AdminServiceImpl implements AdminService
{

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public List<Student> viewAllStudents() {
		
		return studentRepository.findAll();
	}

	@Override
	public List<Faculty> viewAllFaculty() {
		
		return facultyRepository.findAll();
	}

	@Override
	public Admin CheckAdminLogin(String username, String password) {
		
		return adminRepository.CheckAdminLogin(username, password);
	}

	@Override
	public String facreg(Faculty faculty) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String studreg(Student student) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long stdcount() {
		// TODO Auto-generated method stub
		return studentRepository.count();
	}

	@Override
	public long faccount() {
		// TODO Auto-generated method stub
		return  facultyRepository.count();
	}

	@Override
	public String deletestudent(int id) {
		
		 studentRepository.deleteById(id);
		 
		 return "student deleted successfully";
	}
	
}
