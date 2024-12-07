<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> &nbsp;&nbsp;&nbsp;Admin Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Roboto', sans-serif;
        }

        body {
            background-color: #f3f4f6;
            display: flex;
            height: 100vh;
        }

        .container {
            display: flex;
            width: 100%;
        }

        .sidebar {
            background-color: #2d2d2d;
            width: 240px;
            padding: 2rem 1rem;
            box-shadow: 2px 0 12px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            position: relative;
        }

        .sidebar ul {
            list-style: none;
        }

        .sidebar ul li {
            margin-bottom: 1.5rem;
        }

        .sidebar a {
            color: #fff;
            text-decoration: none;
            font-weight: 500;
            font-size: 1rem;
            padding: 0.8rem;
            display: block;
            background-color: #3d3d3d;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #7f00ff;
            color: #fff;
        }

        .admin-profile {
            text-align: center;
            padding: 1rem 0;
            position: absolute;
            bottom: 2rem;
            width: 100%;
        }

        .profile-pic {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 0.5rem;
            border: 2px solid #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .admin-name {
            color: #fff;
            font-size: 1rem;
            font-weight: 500;
        }

        .admin-container {
            background-color: white;
            padding: 2rem;
            margin-left: 1rem;
            border-radius: 1rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            flex-grow: 1;
            text-align: center;
            background-color: #f5f5f5;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
        }

        header h1 {
            font-size: 2rem;
            font-weight: 600;
            color: #343a40;
        }

        nav a {
            color: #7f00ff;
            background-color: #f0f0f0;
            padding: 0.5rem 1rem;
            border-radius: 8px;
            font-weight: bold;
            text-decoration: none;
        }

        nav a:hover {
            text-decoration: underline;
            background-color: #e0e0e0;
        }

        .add-section h2 {
            margin-bottom: 1.5rem;
            font-size: 1.5rem;
            font-weight: bold;
            color: #343a40;
        }

        .add-options {
            display: flex;
            justify-content: center;
            gap: 3rem;
        }

        .add-card {
            background-color: #ffffff;
            padding: 1.5rem;
            border-radius: 0.75rem;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            width: 30%;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .add-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }

        .add-card h3 a {
            color: #7f00ff;
            text-decoration: none;
            font-size: 1.2rem;
            font-weight: bold;
        }

        .add-card h3 a:hover {
            text-decoration: underline;
        }

        .add-image {
            width: 100%;
            height: auto;
            border-radius: 0.5rem;
            margin-top: 1rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .add-image:hover {
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="container">
        <nav class="sidebar">
            <ul>
                <li><a href="facreg">ADD FACULTY</a></li>
                <li><a href="studentreg">ADD STUDENT</a></li>
                <li><a href="viewallstudents">VIEW STUDENTS</a></li>
                <li><a href="viewallfaculty">VIEW FACULTY</a></li>
                <li><a href="deletestudentbyadmin">DELETE STUDENT</a></li>
                      
                
            </ul>
            
        </nav>

        <div class="admin-container">
            <header>
                <h1>Admin Dashboard</h1>
                <nav>
                    <a href="mainnavbar.jsp" class="logout-link">Logout</a>
                </nav>
            </header>

            <main>
                <section class="add-section">
                    <h2>Manage Records</h2>
                    <div class="add-options">
                        <div class="add-card">
                            <h3><a href="studentreg.jsp">ADD STUDENT</a></h3>
                            <img src="student2.jpg" alt="Add Student" class="add-image">
                        </div>

                        <div class="add-card">
                            <h3><a href="facreg.jsp">ADD FACULTY</a></h3>
                            <img src="faculty.jpg" alt="Add Faculty" class="add-image">
                        </div>
                    </div>
                </section>
            </main>
        </div>
    </div>
</body>
</html>
