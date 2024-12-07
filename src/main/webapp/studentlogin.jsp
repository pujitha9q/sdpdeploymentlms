<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Student Login</title>
</head>
<body style="font-family: 'Arial', sans-serif; background-color: #f8f9fa; margin: 0; padding: 0;">

<!-- Centering the entire page -->
<div style="display: flex; justify-content: center; align-items: center; min-height: 100vh;">

    <!-- Form container -->
    <div style="background-color: #ffffff; padding: 30px 40px; border-radius: 8px; box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1); width: 400px;">

        <h3 style="text-align: center; color: #333; margin-bottom: 30px;">Student Login</h3>
        
        <form method="post" action="CheckStudentLogin">
            <!-- Email input -->
            <div style="margin-bottom: 20px;">
                <label for="cemail" style="display: block; font-size: 16px; color: #555; margin-bottom: 8px;">Enter Email</label>
                <input type="email" name="cemail" id="cemail" required 
                       style="width: 100%; padding: 15px; border-radius: 6px; border: 1px solid #ccc; font-size: 14px; box-sizing: border-box; transition: border-color 0.3s ease;" />
            </div>

            <!-- Password input -->
            <div style="margin-bottom: 20px;">
                <label for="cpwd" style="display: block; font-size: 16px; color: #555; margin-bottom: 8px;">Enter Password</label>
                <input type="password" name="cpwd" id="cpwd" required 
                       style="width: 100%; padding: 15px; border-radius: 6px; border: 1px solid #ccc; font-size: 14px; box-sizing: border-box; transition: border-color 0.3s ease;" />
            </div>

            <!-- Login button -->
            <div style="margin-bottom: 15px;">
                <input type="submit" value="Login" 
                       style="width: 100%; padding: 15px; background-color: #007bff; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; transition: background-color 0.3s ease;" />
            </div>

            <!-- Clear button -->
            <div>
                <input type="reset" value="Clear" 
                       style="width: 100%; padding: 15px; background-color: #6c757d; color: #fff; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; transition: background-color 0.3s ease;" />
            </div>
        </form>
    </div>
</div>

</body>
</html>
