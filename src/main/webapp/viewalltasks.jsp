<!DOCTYPE html>
<html>
<head>
    <title>View All Tasks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
        }
        .table-container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table-container h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <div class="table-container">
        <h2>All Tasks</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Task Name</th>
                    <th>Due Date</th>
                    <th>Task File</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through tasks and display them -->
                <tr th:each="task : ${tasks}">
                    <td th:text="${task.id}"></td> <!-- Correctly display Task ID -->
                    <td th:text="${task.taskname}"></td> <!-- Correctly display Task Name -->
                    <td th:text="${task.duedate}"></td> <!-- Correctly display Due Date -->
                    <td>
                        <a th:href="@{'/download/' + ${task.id}}">Download</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
1