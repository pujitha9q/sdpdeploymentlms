package com.klef.jfsd.springboot.model;

import java.sql.Blob;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


	


	@Entity
	@Table(name = "Task")
	public class Task 
	{
	  @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  @Column(name="tid")
	  private int id;
	  
	  @Column(name="taskname",nullable = false,length = 100)
	  private String taskname;
	  
	 
	  
	  @Column(name="task_duedate", nullable = false)
	  private LocalDate duedate; 
	  
	  @Column(name="taskfile",nullable = false)
	  private Blob file; 

	 
	  public int getId() {
	    return id;
	  }

	  public void setId(int id) {
	    this.id = id;
	  }

	




	  public Blob getFile() {
	    return file;
	  }

	  public void setFile(Blob file) {
	    this.file = file;
	  }

	public String getTaskname() {
		return taskname;
	}

	public void setTaskname(String taskname) {
		this.taskname = taskname;
	}

	public LocalDate getDuedate() {
		return duedate;
	}

	public void setDuedate(LocalDate duedate) {
		this.duedate = duedate;
	}
	}


