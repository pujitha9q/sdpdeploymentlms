<%@page import="com.klef.jfsd.springboot.model.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <title>Course Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            width: 80%;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        table th {
            background-color: #007bff;
            color: white;
            font-weight: bold;
        }
        table tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        table tr:hover {
            background-color: #ddd;
        }
        .no-data {
            text-align: center;
            font-style: italic;
            color: #999;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Course Details</h2>
        <table>
            <thead>
                <tr>
                    <th>Course ID</th>
                    <th>Course Name</th>
                    <th>Department</th>
                    <th>Credits</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    // Assuming a List of Course objects is passed to this JSP via a request attribute
                    List<Course> courseList = (List<Course>) request.getAttribute("courseList");
                    if (courseList != null && !courseList.isEmpty()) {
                        for (Course course : courseList) {
                %>
                <tr>
                    <td><%= course.getCourseId() %></td>
                    <td><%= course.getCourseName() %></td>
                    <td><%= course.getDepartment() %></td>
                    <td><%= course.getCredits() %></td>
                </tr>
                <% 
                        }
                    } else {
                %>
                <tr>
                    <td colspan="4" class="no-data">No courses available</td>
                </tr>
                <% 
                    } 
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
