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
        <title>Sign-Up</title>
        <link rel="stylesheet" href="CSS/signup.css"> 
    </head>
    <body>
        <div class="background">
        <div class="registercontainer"><center>
            <h1>Register</h1>
            <form action="SignUpServlet" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <th>First Name</th>                       
                        <td><input type="text" name="fname" placeholder ="Enter your first name" value="" size="38"  /></td>
                    </tr>
                    <tr>
                        <th>Last Name</th>                       
                        <td><input type="text" name="lname" placeholder ="Enter your last name" value="" size="38" /></td>
                    </tr>
                    <tr>
                        <th>Address</th>                        
                        <td><textarea name="address" placeholder="Enter your residential address" rows="4" cols="37" class="address">
                            </textarea></td>
                    </tr>
                    <tr>
                        <th>Contact Number</th>                      
                        <td><input type="text" name="contactno" placeholder="Contact Number"value="" size="38" /></td>
                    </tr>
                    <tr>
                        <th>E-mail</th>                        
                        <td><input type="email" name="email" placeholder="Enter your email address" value="" size="38" /></td>
                    </tr>
                    <tr>
                        <th>Password</th>                       
                        <td><input type="password" name="pwd" placeholder="Create a strong password" value="" size="38" />
                            <span style="display: none;">Enter minimum 8 characters</span></td>
                    </tr>
                    <tr>
                        <th>Confirm Password</th>                        
                        <td><input type="password" name="cpwd" placeholder="Confirm password" value="" size="38" />
                        <span style="display: none;">Both the password does not match</span></td>
                    </tr>
                    <tr> 
                        <td><input type="submit" value="Register" id="submit" /></td>
                        <td><input type="reset" value="Cancel" id="reset" /></td>
                       
                    </tr>
                </tbody>
            </table>
            </form></center>
        </div>    
        </div>
    </body>
</html>
