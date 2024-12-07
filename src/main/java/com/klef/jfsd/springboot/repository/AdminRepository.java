package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Admin;

import jakarta.transaction.Transactional;

public interface AdminRepository  extends JpaRepository<Admin, String>
{
	@Query("select a from Admin a where a.username=?1 and a.password=?2")
	  public Admin CheckAdminLogin(String username, String password);
	
	@Query("delete from Student s where s.id = ?1")
	@Modifying
	@Transactional
	public int deleteById(int id);
}
