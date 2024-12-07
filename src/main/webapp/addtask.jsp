<!DOCTYPE html>
<html>
<head>
    <title>Task Form</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #004aad, #6bc1ff); /* Royal blue to sky blue gradient */
            color: #fff;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .form-container {
            width: 100%;
            max-width: 500px;
            background: #fff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            color: #333;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #004aad; /* Royal blue color */
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            font-size: 14px;
            color: #555;
        }
        .form-group input[type="text"],
        .form-group input[type="date"],
        .form-group input[type="file"] {
            width: 100%;
            padding: 12px 14px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            background: #f9f9f9;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
            transition: border 0.3s ease;
        }
        .form-group input[type="text"]:focus,
        .form-group input[type="date"]:focus,
        .form-group input[type="file"]:focus {
            border-color: #004aad; /* Royal blue border on focus */
            outline: none;
        }
        .form-group button {
            width: 100%;
            padding: 14px;
            font-size: 18px;
            font-weight: bold;
            background: linear-gradient(to right, #004aad, #6bc1ff); /* Blue gradient */
            color: #fff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        .form-group button:hover {
            background: linear-gradient(to right, #003a88, #54a3e7); /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Task Form</h2>
        <form action="inserttask" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="taskname">Task Name:</label>
                <input type="text" id="taskname" name="taskname" required>
            </div>
            <div class="form-group">
                <label for="duedate">Due Date:</label>
                <input type="date" id="duedate" name="duedate" required>
            </div>
            <div class="form-group">
                <label for="taskfile">Task File:</label>
                <input type="file" id="taskfile" name="taskfile" required>
            </div>
            <div class="form-group">
                <button type="submit">Add Task</button>
            </div>
        </form>
    </div>
</body>
</html>
