package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.jfsd.springboot.model.Task;

public interface TaskRepository  extends JpaRepository<Task, Integer>
{

}
