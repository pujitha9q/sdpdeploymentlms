package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Faculty;

import jakarta.transaction.Transactional;

public interface FacultyRepository extends JpaRepository<Faculty,Integer>
{
  
	@Query("select f from Faculty f WHERE f.email=?1 and f.password=?2 ")
	public Faculty CheckFacultyLogin(String email,String password);
	
	@Modifying
	@Transactional
	@Query("update Faculty f set f.status=?1where f.id=?2 ")
	public int updatefaculty(String status,int id);
}
