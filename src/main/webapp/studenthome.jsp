<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        margin: 0;
        padding: 0;
        background: linear-gradient(to bottom right, #4CAF50, #2c3e50);
        color: #fff;
    }
    header {
        background-color: #333;
        padding: 10px 20px;
        text-align: center;
    }
    header h1 {
        margin: 0;
        font-size: 2em;
        color: #fff;
    }
    .container {
        text-align: center;
        margin: 50px auto;
        max-width: 600px;
        background-color: rgba(255, 255, 255, 0.1);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .container h2 {
        font-size: 1.8em;
        margin-bottom: 20px;
    }
    .container a {
        display: inline-block;
        margin: 10px 20px;
        padding: 12px 25px;
        font-size: 1em;
        text-decoration: none;
        color: #fff;
        background-color: #4CAF50;
        border-radius: 5px;
        transition: all 0.3s ease;
    }
    .container a:hover {
        background-color: #45a049;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
    }
    footer {
        text-align: center;
        padding: 10px;
        background-color: #333;
        position: fixed;
        bottom: 0;
        width: 100%;
        color: #fff;
    }
</style>
</head>
<body>
    <header>
        <h1>Welcome, Student!</h1>
    </header>
    <div class="container">
        <h2>What would you like to do today?</h2>
        <a href="updatestudent">Update Student</a>
        <a href="contactus">Contact Us</a>
        <a href="viewcourses">View Courses</a>
        <a href="viewalltasks">VIEW TASKS</a>
        <a href="mainnavbar.jsp">Logout</a>
    </div>
    <footer>
        &copy; 2024 Student Portal. All Rights Reserved.
    </footer>
</body>
</html>
