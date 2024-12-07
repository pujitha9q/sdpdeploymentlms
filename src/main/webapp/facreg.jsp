<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Faculty Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #555;
        }
        input[type="text"], input[type="email"], input[type="password"], input[type="date"], input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Faculty Registration Form</h1>
        <form action="insertfaculty" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="cname" required placeholder="Enter your full name">

            <label for="gender">Gender:</label>
            <select id="gender" name="cgender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="cdob" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="cemail" required placeholder="Enter your email">

            <label for="password">Password:</label>
            <input type="password" id="password" name="cpwd" required placeholder="Enter your password">

            <label for="location">Location:</label>
            <input type="text" id="location" name="cloc" required placeholder="Enter your location">

            <label for="contact">Contact Number:</label>
            <input type="tel" id="contact" name="cconc" required placeholder="Enter your contact number">

            <input type="submit" value="Register">
        </form>
    </div>
</body>
</html>
