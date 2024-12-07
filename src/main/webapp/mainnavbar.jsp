<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('lms2.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
        }

        h2 {
            font-size: 3em;
            margin-bottom: 20px;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Added shadow for readability */
        }

        .login-links {
            text-align: center;
            margin-top: 30px;
        }

        .login-links a {
            font-size: 18px;
            color: #ffffff;
            text-decoration: none;
            padding: 12px 24px;
            border: 2px solid #ffffff;
            border-radius: 8px;
            margin: 0 10px;
            background-color: rgba(0, 0, 0, 0.5); /* Dark background for contrast */
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .login-links a:hover {
            background-color: #0078d7;
            color: white;
        }

        .content {
            text-align: center;
            margin-top: 20px;
        }

        .content img {
            max-width: 80%;
            height: auto;
            border-radius: 10px;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    
    
    <!-- Login Links Section -->
    <div class="login-links">
        <a href="adminlogin">Admin Login</a>
        <a href="facultylogin">Faculty Login</a>
        <a href="studentlogin">Student Login</a>
        <a href="contactus">Contact Us</a>
    
</body>
</html>
