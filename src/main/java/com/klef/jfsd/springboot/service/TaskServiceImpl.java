package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Task;
import com.klef.jfsd.springboot.repository.TaskRepository;
@Service
public class TaskServiceImpl implements TaskService
{

	
	 @Autowired
	    private TaskRepository taskRepository;
	 
	@Override
	public String addtask(Task task) {
		
		 taskRepository.save(task);
     return "Task Added Successfully";
	}

	@Override
	public List<Task> viewalltasks() {
		
		return (List<Task>)taskRepository.findAll();
	}

}
