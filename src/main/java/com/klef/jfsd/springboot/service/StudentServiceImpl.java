package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Task;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.repository.TaskRepository;

@Service
public class StudentServiceImpl implements StudentService
{

	@Autowired
 private StudentRepository studentRepository;
	@Autowired
	private CourseRepository courseRepository;
	
	@Autowired
	private TaskRepository taskRepository;
	
	@Override
	public Student CheckStudentLogin(String email, String password) {
		// TODO Auto-generated method stub
		return studentRepository.CheckStudentLogin(email, password);
	}


	@Override
	public String StudentReg(Student s) {
		studentRepository.save(s);
		return "Student Registered Successfully";
	}


	@Override
	public String updateStudent(Student s) 
	{
		Student std = studentRepository.findById(s.getId()).get();
		
		std.setContact(s.getContact());
		std.setDateofbirth(s.getDateofbirth());
		std.setEmail(s.getEmail());
		std.setPassword(s.getPassword());
		std.setLocation(s.getLocation());
		std.setGender(s.getGender());
		std.setName(s.getName());
		
		studentRepository.save(std);
		
		return "Student updated Successfully";
	}


	@Override
	public Student displayStudentById(int id)
	{
		return studentRepository.findById(id).get();
	}


	@Override
	public List<Course> viewcourses() {
		
		return courseRepository.findAll();
	}


	@Override
	public List<Task> viewallTasks() {
		
		return (List<Task>)taskRepository.findAll();
	}







	

}
