<%-- 
    Document   : login
    Created on : Apr 20, 2024, 12:03:32 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="css/loginstyle.css">
    </head>
    <body>
        <div class="form-container">
        <form action="LoginServlet" method="post">
            <h3>Login Now</h3>    
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter Your Email">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter Your Password">
            <input type="submit" name="submit" value="Login Now" class="form-btn">
        </form>
    </div>
    </body>
</html>
