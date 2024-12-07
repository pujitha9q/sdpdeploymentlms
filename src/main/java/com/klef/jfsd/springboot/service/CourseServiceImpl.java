package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.repository.CourseRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;

@Service
public class CourseServiceImpl implements CourseService
{

	
	@Autowired
	private CourseRepository courseRepository;
	@Override
	public String addcourse(Course course) {
		
		 try {
	            courseRepository.save(course); 
	            return "Course registered successfully";
	        } catch (Exception e) {
	            return "Failed to register course: " + e.getMessage();
	        }
	}
	@Override
	public List<Course> viewallcourses() {
		
		return courseRepository.findAll();
	}
	@Override
	public long coursecount() {
		
		return courseRepository.count();
	}

	
	

}
