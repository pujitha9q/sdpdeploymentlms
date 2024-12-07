package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Student;

import jakarta.transaction.Transactional;

public interface StudentRepository extends JpaRepository<Student, Integer>
{

@Query("select s from Student s WHERE s.email=?1 and s.password=?2")
 public Student CheckStudentLogin(String email,String password);

@Query("update Student s set s.status=?1 WHERE s.id=?2")
@Modifying
@Transactional
public int updatestudentstatus(String status,int id);




}
