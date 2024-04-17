<%-- 
    Document   : Signup
    Created on : Apr 7, 2024, 12:34:43 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div><center> 
            <h1>Register</h1>
            <form action="SignUpServlet" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" placeholder ="Enter your first name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" placeholder ="Enter your last name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><textarea name="address" placeholder="Enter your residential address" rows="4" cols="35">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>Contact Number</td>
                        <td><input type="text" name="contactno" placeholder="Contact Number"value="" /></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td><input type="email" name="email" placeholder="Enter your email address" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pwd" placeholder="Create a strong password" value="" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="cpwd" placeholder="Confirm password" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /><a href=""></a></td>
                        <td><input type="reset" value="Cancel" /></td>
                    </tr>
                </tbody>
            </table>
            </form></center>
        </div>
    </body>
</html>
