package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "courses")
public class Course {
	@Id
    private int courseId;
    private String courseName;
    private String department;
    private int credits;
    private String instructor;
    private int duration; // in weeks
    private String description;

    public Course() {
    }
    
    // Parameterized constructor
    public Course(int courseId, String courseName, String department, int credits, String instructor, int duration, String description) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.department = department;
        this.credits = credits;
        this.instructor = instructor;
        this.duration = duration;
        this.description = description;
    }

    // Getters and Setters
    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public int getCredits() {
        return credits;
    }

    public void setCredits(int credits) {
        this.credits = credits;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // toString method
    @Override
    public String toString() {
        return "Course{" +
                "courseId=" + courseId +
                ", courseName='" + courseName + '\'' +
                ", department='" + department + '\'' +
                ", credits=" + credits +
                ", instructor='" + instructor + '\'' +
                ", duration=" + duration +
                ", description='" + description + '\'' +
                '}';
    }
}
