package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Task;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.repository.TaskRepository;

@Service
public class FacultyServiceImpl  implements FacultyService
{
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private TaskRepository taskRepository;

	@Override
	public List<Student> viewAllStudentsbyfac() {
		
		return studentRepository.findAll();
	}

	@Override
	public Faculty CheckFacultyLogin(String email,String password) {
		
		return facultyRepository.CheckFacultyLogin(email, password);
	}

	

	@Override
	public String FacReg(Faculty f)
	{
		facultyRepository.save(f);
		return "Faculty Registered Successfully";
	}

	@Override
	public long stdcount() {
		
		return studentRepository.count();
	}

	@Override
	public String updatefaculty(Faculty f) {
    Faculty fs = facultyRepository.findById(f.getId()).get();
		
		fs.setContact(f.getContact());
		fs.setDateofbirth(f.getDateofbirth());
		fs.setEmail(f.getEmail());
		fs.setPassword(f.getPassword());
		fs.setLocation(f.getLocation());
		fs.setGender(f.getGender());
		fs.setName(f.getName());
		
		facultyRepository.save(fs);
		
		return "Faculty updated Successfully";
		
	}

	@Override
	public String addcourse(Course c) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String addtask(Task task) {
		taskRepository.save(task);
		return "Task Added Successfully";
		
	}

	
	
	

}
