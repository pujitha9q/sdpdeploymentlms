<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    

<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .form-container {
            max-width: 600px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h1 {
            text-align: center;
            color: #4caf50;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group input:focus {
            border-color: #4caf50;
            outline: none;
        }
        .form-button {
            text-align: center;
        }
        .form-button button {
            background: #4caf50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-button button:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Student Registration</h1>
        <form action="insertstudent" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="cname" required maxlength="100">
            </div>
            <div class="form-group">
            <label for="gender">Gender:</label>
            <select id="gender" name="cgender" required>
                <option value="">Select Gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>
            </div>
            <div class="form-group">
                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="cdob" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="cemail" required maxlength="100">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="cpwd" required maxlength="100">
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="cloc" required maxlength="100">
            </div>
            <div class="form-group">
                <label for="contact">Contact:</label>
              <input type="text" id="contact" name="conc" required maxlength="20">
            </div>
            <div class="form-button">
                <button type="submit">Register</button>
            </div>
        </form>
    </div>
</body>
</html>
