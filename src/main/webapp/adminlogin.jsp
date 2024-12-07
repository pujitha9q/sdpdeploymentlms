<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #F0F2F5;
    }

    .form-container {
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
    }

    .form-container h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .form-container input[type="text"],
    .form-container input[type="password"] {
        width: 100%;
        padding: 15px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    .form-container button {
        width: 100%;
        padding: 15px;
        background-color: #2980b9;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .form-container p {
        text-align: center;
        margin-top: 20px;
    }

    .form-container a {
        text-decoration: none;
        color: #2980b9;
    }
</style>
</head>
<body>
<div class="container">
    <div class="form-container">
        <h2>Admin Login</h2>
        <form method="post" action="CheckAdminLogin">
            <div>
                <label for="cusername">Username</label>
                <input type="text" id="cusername" name="cusername" required>
            </div>
            <div>
                <label for="cpwd">Password</label>
                <input type="password" id="cpwd" name="cpwd" required>
            </div>
            <div>
                <button type="submit">Login</button>
                <button type="reset" style="background-color: #e74c3c; margin-top: 10px;">Clear</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
