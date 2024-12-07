<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>View All Faculty</title>
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
        .faculty-count {
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            color: #333;
        }
    </style>
</head>
<body>
    <h1>Faculty List</h1>
    <div class="faculty-count">
        Total Faculty: ${count}
    </div>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Date of Birth</th>
                <th>Email</th>
                <th>Password</th>
                <th>Location</th>
                <th>Contact</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="faculty" items="${faclist}">
                <tr>
                    <td>${faculty.id}</td>
                    <td>${faculty.name}</td>
                    <td>${faculty.gender}</td>
                    <td>${faculty.dateofbirth}</td>
                    <td>${faculty.email}</td>
                    <td>${faculty.password}</td>
                    <td>${faculty.location}</td>
                    <td>${faculty.contact}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
