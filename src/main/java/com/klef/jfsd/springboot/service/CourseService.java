package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Course;

public interface CourseService
{
	
public String addcourse(Course course);

public List<Course> viewallcourses();
public long coursecount();
}
