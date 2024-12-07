package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Course;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Task;
import com.klef.jfsd.springboot.repository.TaskRepository;
import com.klef.jfsd.springboot.service.CourseService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.StudentService;
import com.klef.jfsd.springboot.service.TaskService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FacultyController {
	@Autowired
	private FacultyService facultyService;

	@Autowired
	private StudentService studentService;

	@Autowired
	private CourseService courseService;

	@Autowired
	private TaskService taskService;
	
	@Autowired
	private TaskRepository taskRepository;  // Add this field


	@GetMapping("facultylogin")
	public ModelAndView facultylogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultylogin");
		return mv;
	}

	@PostMapping("CheckFacultyLogin")
	public ModelAndView CheckFacultyLogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String cemail = request.getParameter("cemail");
		String cpwd = request.getParameter("cpwd");

		Faculty faculty = facultyService.CheckFacultyLogin(cemail, cpwd);
		if (faculty != null) {
			HttpSession session = request.getSession();
			session.setAttribute("faculty", faculty);
			mv.setViewName("facultyhome");
		} else {
			mv.setViewName("facultyloginfail");
			mv.addObject("msg", "login Failed");
		}
		return mv;
	}

	@GetMapping("facultyhome")
	public ModelAndView facultyhome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facultyhome");
		return mv;
	}

	@GetMapping("displaystudentsbyfac")
	public ModelAndView displaystudentsbyfac() {
		ModelAndView mv = new ModelAndView();
		List<Student> stdlist = facultyService.viewAllStudentsbyfac();
		mv.setViewName("displaystudentsbyfac");
		mv.addObject("stdlist", stdlist);

		long count = facultyService.stdcount();
		mv.addObject("count", count);
		return mv;

	}

	@GetMapping("updatefaculty")
	public ModelAndView updatefaculty(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		Faculty faculty = (Faculty) session.getAttribute("faculty");
		if (faculty == null) {
			mv.setViewName("facsessionexpiry"); // Redirect to session expiry page
		} else {
			mv.setViewName("updatefaculty");
			mv.addObject("faculty", faculty); // Pass faculty object to JSP
		}
		return mv;
	}

	@PostMapping("updatefacultyprofile")
	public ModelAndView updatefacultyprofile(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		try {
			int id = Integer.parseInt(request.getParameter("id")); // Corrected parameter name
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dateofbirth = request.getParameter("dob");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String location = request.getParameter("location");
			String contact = request.getParameter("contact");
			// String status = request.getParameter("status");

			// Student student = new Student();
			Faculty faculty = new Faculty();

			faculty.setId(id);
			faculty.setName(name);
			faculty.setGender(gender);
			faculty.setDateofbirth(dateofbirth);
			faculty.setEmail(email);
			faculty.setPassword(password);
			faculty.setLocation(location);
			faculty.setContact(contact);
			// student.setStatus(status); // Ensure status is set

			// String msg = studentService.updateStudent(student);
			String msg = facultyService.updatefaculty(faculty);

			session.setAttribute("faculty", faculty); // Update session
			mv.setViewName("facsuccess");
			mv.addObject("message", msg);
		} catch (Exception e) {
			mv.setViewName("facupdateerror");
			mv.addObject("message", "Error updating profile: " + e.getMessage());
		}
		return mv;
	}

	@GetMapping("facsessionexpiry")
	public ModelAndView facsessionexpiry() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("facsessionexpiry");
		return mv;
	}

	@GetMapping("addcourses")
	public ModelAndView addcourses() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addcourses");
		return mv;
	}

	@PostMapping("insertcourse")
	public ModelAndView insertCourse(HttpServletRequest request) {
		// Retrieving form data from the request
		int courseId = Integer.parseInt(request.getParameter("courseId"));
		String courseName = request.getParameter("courseName");
		String department = request.getParameter("department");
		int credits = Integer.parseInt(request.getParameter("credits"));
		String instructor = request.getParameter("instructor");
		int duration = Integer.parseInt(request.getParameter("duration"));
		String description = request.getParameter("description");

		Course course = new Course();
		course.setCourseId(courseId);
		course.setCourseName(courseName);
		course.setDepartment(department);
		course.setCredits(credits);
		course.setInstructor(instructor);
		course.setDuration(duration);
		course.setDescription(description);

		// Calling the service method to handle the business logic

		String msg = courseService.addcourse(course);

		// Returning ModelAndView with a success message
		ModelAndView mv = new ModelAndView("courseregsuccess");
		mv.addObject("message", msg);
		return mv;
	}

	@GetMapping("addtask")
	public ModelAndView addtask() {
		ModelAndView mv = new ModelAndView("addtask");
		return mv;
	}

	
	@PostMapping("inserttask")
	public ModelAndView insertTask(HttpServletRequest request, @RequestParam("taskfile") MultipartFile file) {
	    ModelAndView mv = new ModelAndView();
	    try {
	        String taskname = request.getParameter("taskname");
	        String duedateStr = request.getParameter("duedate");
	        LocalDate duedate = LocalDate.parse(duedateStr);

	        // Convert file to Blob
	        byte[] bytes = file.getBytes();
	        Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

	        // Create Task object and set values
	        Task task = new Task();
	        task.setTaskname(taskname);  // Use taskname from the form
	        task.setDuedate(duedate);    // Use duedate from the form
	        task.setFile(blob);          // Set the Blob data for the file

	        // Save the task using TaskService
	        String msg = taskService.addtask(task);

	        mv.setViewName("taskmsg");
	        mv.addObject("message", msg);
	       
	    } catch (Exception e) {
	        mv.setViewName("taskerror");
	        mv.addObject("message", e.getMessage());
	    }
	    return mv;
	}


	@GetMapping("taskerror")
	public ModelAndView taskerror() {
		ModelAndView mv = new ModelAndView("taskerror");
		return mv;
	}
	@GetMapping("taskmsg")
	public ModelAndView taskmsg() {
		ModelAndView mv = new ModelAndView("taskmsg");
		return mv;
	}

}
