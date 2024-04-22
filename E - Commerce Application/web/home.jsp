<%-- 
    Document   : newjsp
    Created on : Apr 7, 2024, 12:30:32 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HomePage</title>
        <link rel="stylesheet" href="CSS/home.css">
    </head>
    <body>
        <div class="container">
            
            <div class="navbar">
                <div class="logo">
                    <img src="Image/Logo.jpg" width="50" height="40"> 
                </div>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Ladies Section</a></li>
                    <li><a href="#">Gents Section</a></li>
                    <li><a href="#">Kids Section</a></li>                                             
                    <li class="rightcorner"><a href="">Register</a></li>
                    <li class="rightcorner"><a href="login.jsp">Login</a></li>
                    <li class="rightcorner"><a href="#">Cart</a></li>
                    <li class="rightcorner"><a href="#">Search</a></li>
                </ul>
            </nav> 
            </div>
            
            <div class="slide">
                <img src="Image/slide1.jpeg" alt="slide1">              
            </div> 
            
            <div class="row">
                <div class="column1">
                    <div class="card col-md-4"> <img class="card-img-top" src="Image/slide1.jpeg" alt="Card1" width="100px" height="120px">
                        <div class="card-body">
                            <h3 class="card-title">Ladies Section</h3>
                            <a href="#" class="btn btn-primary">Shop Now</a> 
                        </div>
                    </div>
                </div>
                <div class="card col-md-4"> <img class="card-img-top" src="Image/slide2.png" alt="Card2" width="100px" height="120px">
                        <div class="card-body">
                            <h3 class="card-title">Gents Section</h3>
                            <a href="#" class="btn btn-primary">Shop Now</a>
                        </div>
                    </div>
            </div>
  
                <div class="column2">
                    <div class="card col-md-4"> <img class="card-img-top" src="Image/slide3.jpg" alt="Card3" width="100px" height="120px">
                        <div class="card-body">
                            <h3 class="card-title">Kids Section</h3>
                            <a href="#" class="btn btn-primary">Shop Now</a>
                        </div>
                    </div>
                </div>
        </div>
    </body>
</html>
