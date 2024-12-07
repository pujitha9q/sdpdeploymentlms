package com.klef.jfsd.springboot.service;

import java.util.List;



import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Task;

public interface FacultyService 
{
public List<Student> viewAllStudentsbyfac();
public Faculty CheckFacultyLogin(String email, String password);
public String addtask(Task task);
public String FacReg(Faculty f);
public long stdcount();
public String updatefaculty(Faculty f);
public String addcourse(Course c);


}
