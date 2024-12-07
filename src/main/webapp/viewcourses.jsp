<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>View All Courses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        .course-count {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <h1>Available Courses</h1>
    <div class="course-count">
        Total Courses: ${count}
    </div>
    <table>
        <thead>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Department</th>
                <th>Credits</th>
                <th>Instructor</th>
                <th>Duration (Weeks)</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="course" items="${courseList}">
                <tr>
                    <td>${course.courseId}</td>
                    <td>${course.courseName}</td>
                    <td>${course.department}</td>
                    <td>${course.credits}</td>
                    <td>${course.instructor}</td>
                    <td>${course.duration}</td>
                    <td>${course.description}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
