<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Dashboard</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background-color: #f5f6fa;
            display: flex;
            height: 100vh;
            color: #333;
        }

        /* Sidebar Styles */
        .sidebar {
            width: 260px;
            background-color: #1e293b; /* Deep blue-gray */
            color: #f0f4f9; /* Light gray for text */
            height: 100vh;
            padding: 20px;
            box-shadow: 2px 0 8px rgba(0, 0, 0, 0.15);
            position: fixed;
            overflow-y: auto;
        }

        .sidebar h2 {
            text-align: center;
            font-size: 22px;
            color: #60a5fa; /* Subtle blue for branding */
            margin-bottom: 20px;
            font-weight: bold;
        }

        .sidebar a {
            display: block;
            font-size: 16px;
            margin: 15px 0;
            color: #cbd5e1; /* Light gray text for links */
            text-decoration: none;
            padding: 10px 15px;
            border-radius: 6px;
            transition: background-color 0.3s, color 0.3s;
        }

        .sidebar a:hover {
            background-color: #60a5fa; /* Highlight blue */
            color: #ffffff;
        }

        .sidebar a.active {
            background-color: #3b82f6; /* Bright blue for active links */
            color: #ffffff;
            font-weight: bold;
        }

        /* Main Content Styles */
        .main-content {
            margin-left: 260px;
            padding: 40px;
            flex-grow: 1;
            background-color: #ffffff; /* White background for content */
            border-top-left-radius: 10px;
            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.05);
        }

        .welcome {
            font-size: 28px;
            font-weight: 700;
            color: #3b82f6; /* Match sidebar active blue */
            margin-bottom: 20px;
        }

        .content {
            font-size: 16px;
            line-height: 1.6;
            color: #4b5563; /* Slightly darker gray for text */
        }

        /* Add subtle footer if needed */
        .footer {
            margin-top: 20px;
            font-size: 14px;
            color: #9ca3af;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .sidebar {
                width: 200px;
            }

            .main-content {
                margin-left: 200px;
            }

            .welcome {
                font-size: 24px;
            }
        }

        @media screen and (max-width: 480px) {
            .sidebar {
                width: 180px;
                font-size: 14px;
            }

            .main-content {
                margin-left: 180px;
                padding: 20px;
            }

            .welcome {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>Faculty Dashboard</h2>
        <a href="displaystudentsbyfac" class="active">View Students</a>
        <a href="addtask">Post Task</a>
        <a href="updatefaculty">Update Profile</a>
        <a href="addcourses">Manage Courses</a>
        <a href="mainnavbar.jsp">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <p class="welcome">Welcome, Admin!</p>
        <div class="content">
            
        </div>
    </div>
</body>
</html>
