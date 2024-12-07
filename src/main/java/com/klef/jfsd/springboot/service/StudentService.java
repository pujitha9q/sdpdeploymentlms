package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Task;

public interface StudentService 
{
	
 public Student CheckStudentLogin(String email,String password);
 public String StudentReg(Student s);
 public String updateStudent(Student s);
public Student displayStudentById(int id);
public List<Course> viewcourses();
public List<Task> viewallTasks();


 
}
