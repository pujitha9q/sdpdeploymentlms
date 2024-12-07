package com.klef.jfsd.springboot.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.klef.jfsd.springboot.model.Task;



public interface TaskService 
{
public String addtask(Task task);
public List<Task> viewalltasks();

}
