package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "student_table")
public class Student
{

	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment
	@Id // primary key = unique+ notnull
	@Column(name = "sid")
    private int id;
	@Column(name = "sname",nullable = false,length = 100)
    private String name;
	@Column(name = "sgender",nullable = false,length = 10)
    private String gender;
	@Column(name = "sdob",nullable = false,length = 20)
    private String dateofbirth;
	@Column(name = "semail",nullable = false,unique = true,length = 100)
    private String email;
	@Column(name = "spassword",nullable = false,length = 100)
    private String password;
	@Column(name = "slocation",nullable = false,length = 100)
    private String location;
	@Column(name = "scontact",nullable = false,unique = true,length = 20)
	private String contact;
	@Column(name="sstatus",nullable = true,unique = true)
	private String status;

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
