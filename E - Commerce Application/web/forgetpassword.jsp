<%-- 
    Document   : Forgot
    Created on : Apr 18, 2024, 5:27:15 PM
    Author     : Methma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="forgetpassword.css">
        <title>Forgot Password</title>
    </head>
    <body>    
        <div class="background">
        <div class="forgotcontainer">
        <center>
        <h1>Forgot Password?</h1>
        <form action="ForgotPServlet" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>E-mail</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>New Password</td>
                        <td><input type="password" name="NPassword" value="" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="CPassword" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" id="submit" /></td>
                        
                    </tr>
                </tbody>
            </table>

        </form>
    </center>
        </div>
        </div>
    </body>
</html>

