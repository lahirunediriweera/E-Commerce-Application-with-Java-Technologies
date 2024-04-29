<%-- 
    Document   : Login
    Created on : Apr 8, 2024, 10:33:21 AM
    Author     : Methma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="logincss.css">
        <title>Login</title>
    </head>
    <body>
        <div class="background">
        <div class="logincontainer"><center>
        <h1>Login</h1>
        <form action="LoginServlet" method="POST">
            <table border="0">
                
                <tbody>
                    <tr>
                        <td>E-mail</td>
                        <td><input type="text" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><a href="">Forgot Password?</a></td>
                        
                    </tr> <br>
                    <tr>
                        <td><input type="submit" value="Submit" id="submit" /></td>
                        <td><input type="reset" value="Cancel" id="reset" /></td>
                    </tr>
                </tbody>
            </table>
            
        </form>
        <h4><a href="signup.jsp"> Create a new account | <a href="signup.jsp"> Sign-Up </a></h4>
        
            </center></div>
        </div>
    </body>
</html>
