<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        h3 {
            text-align: center;
            color: #444;
        }
        .main-content {
            max-width: 900px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        thead tr {
            background-color: #007BFF;
            color: #fff;
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tbody tr:hover {
            background-color: #f1f1f1;
        }
        a {
            color: #ff4d4d;
            text-decoration: none;
            font-weight: bold;
            padding: 5px 10px;
            border: 1px solid #ff4d4d;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }
        a:hover {
            background-color: #ff4d4d;
            color: #fff;
        }
    </style>
</head>
<body>

<!-- Main Content -->
<div class="main-content">
    <h3><u>Delete Student</u></h3>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Date of Birth</th>
                <th>Location</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${studentlist}" var="student">
                <tr>
                    <td><c:out value="${student.id}"/></td>
                    <td><c:out value="${student.name}"/></td>
                    <td><c:out value="${student.gender}"/></td>
                    <td><c:out value="${student.dateofbirth}"/></td>
                    <td><c:out value="${student.location}"/></td>
                    <td><c:out value="${student.email}"/></td>
                    <td><c:out value="${student.contact}"/></td>
                    <td>
                        <a href="<c:url value='delete?id=${student.id}'/>" 
                           onclick="return confirm('Are you sure you want to delete this student?');">
                           Delete
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
