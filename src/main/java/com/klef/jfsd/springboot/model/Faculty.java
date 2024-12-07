package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity
@Table(name = "faculty_table")
public class Faculty 
{
	@GeneratedValue(strategy = GenerationType.IDENTITY) //auto increment
	@Id // primary key = unique+ notnull
	@Column(name = "faculty_id")
    private int id;
	@Column(name = "faculty_name",nullable = false,length = 100)
    private String name;
	@Column(name = "faculty_gender",nullable = false,length = 10)
    private String gender;
	@Column(name = "faculty_dob",nullable = false,length = 20)
    private String dateofbirth;
	@Column(name = "faculty_email",nullable = false,unique = true,length = 100)
    private String email;
	@Column(name = "faculty_password",nullable = false,length = 100)
    private String password;
	@Column(name = "faculty_location",nullable = false,length = 100)
    private String location;
	@Column(name = "faculty_contact",nullable = false,unique = true,length = 20)
	private String Contact;
	@Column(name="fstatus",nullable = true,unique = true)
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
		return Contact;
	}
	public void setContact(String contact) {
		Contact = contact;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
