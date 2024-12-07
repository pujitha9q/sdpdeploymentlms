<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
Student student = (Student) request.getAttribute("student");
if (student == null) {
    response.sendRedirect("stdsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>
</head>
<body style="font-family: Arial, sans-serif; background-color: #f4f4f9; margin: 0; padding: 20px;">
    <h3 style="text-align: center; color: #333;"><u>Update Student Profile</u></h3>
    <div class="form-container" style="max-width: 600px; margin: auto; background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
        <form method="post" action="updatestudentprofile">
            <table style="width: 100%; border-collapse: collapse;">
                <tr>
                    <td style="padding: 10px; text-align: right; font-weight: bold;"><label for="id">Student ID</label></td>
                    <td style="padding: 10px;"><input type="number" id="id" name="id" readonly value="${student.id}" required style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;"/></td>
                </tr>
                <tr>
                    <td style="padding: 10px; text-align: right; font-weight: bold;"><label for="name">Name</label></td>
                    <td style="padding: 10px;"><input type="text" id="name" name="name" value="${student.name}" required style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;"/></td>
                </tr>
                <tr>
                    <td style="padding: 10px; text-align: right; font-weight: bold;"><label>Gender</label></td>
                    <td style="padding: 10px;">
                        <input type="radio" id="male" name="gender" value="MALE" ${student.gender == 'MALE' ? 'checked' : ''}/> Male
                        <input type="radio" id="female" name="gender" value="FEMALE" ${student.gender == 'FEMALE' ? 'checked' : ''}/> Female
                        <input type="radio" id="others" name="gender" value="OTHERS" ${student.gender == 'OTHERS' ? 'checked' : ''}/> Others
                    </td>
                </tr>
                <tr>
                    <td style="padding: 10px; text-align: right; font-weight: bold;"><label for="dob">Date of Birth</label></td>
                    <td style="padding: 10px;"><input type="date" id="dob" name="dob" value="${student.dateofbirth}" required style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;"/></td>
                </tr>
                <tr>
                    <td style="padding: 10px; text-align: right; font-weight: bold;"><label for="email">Email</label></td>
                    <td style="padding: 10px;"><input type="email" id="email" name="email" readonly value="${student.email}" required style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;"/></td>
                </tr>
                <tr>
                    <td style="padding: 10px; text-align: right; font-weight: bold;"><label for="password">Password</label></td>
                    <td style="padding: 10px;"><input type="password" id="password" name="password" value="${student.password}" required style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;"/></td>
                </tr>
                <tr>
                    <td style="padding: 10px; text-align: right; font-weight: bold;"><label for="location">Location</label></td>
                    <td style="padding: 10px;"><input type="text" id="location" name="location" value="${student.location}" required style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;"/></td>
                </tr>
                <tr>
                    <td style="padding: 10px; text-align: right; font-weight: bold;"><label for="contact">Contact</label></td>
                    <td style="padding: 10px;"><input type="number" id="contact" name="contact" value="${student.contact}" required style="width: 100%; padding: 8px; border: 1px solid #ccc; border-radius: 4px;"/></td>
                </tr>
                <tr>
                    <td colspan="2" style="padding: 10px; text-align: center;">
                        <input type="submit" value="Update" style="padding: 8px 16px; background-color: #007BFF; color: #fff; border: none; border-radius: 4px; cursor: pointer;"/>
                        <input type="reset" value="Clear" style="padding: 8px 16px; background-color: #6c757d; color: #fff; border: none; border-radius: 4px; cursor: pointer; margin-left: 10px;"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
