<%-- 
    Document   : mensec
    Created on : Apr 7, 2024, 12:36:04 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mens Section</title>
        <!--custom CSS-->
        <link href="CSS/gentssec.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            
        <!--Nav Bar-->
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
            
        <!--poster-->
        <div class="men">
        <div class="poster">
            <h1>Mens<span>Fashion</span></h1>
        </div>
            <div class="mens">
            <div class="men casual">
                <h2>Casual Outfit</h2>
                <div class="mens_box">
                    <div class="mens_card">
                        <div class="mens_image">
                            <% session.setAttribute("Image", request.getParameter("Image")); %>
                        </div>
                        <div class="mens_info">
                            <h2><%session.setAttribute("Description", request.getParameter("Description"));%></h2>
                        
                            <h3><%session.setAttribute("Price",request.getParameter("Price"));%></h3>
                            <a href="#" class="cart_btn">Add to Cart</a>
                            <a href="#" class="menu_btn">Order Now</a>
                    </div>
                    
                </div>.
                
                    <div class="mens_card">
                        <div class="mens_image">
                            <% session.setAttribute("Image", request.getParameter("Image")); %>
                        </div>
                            <div class="mens_info">
                            <h2><%session.setAttribute("Description", request.getParameter("Description"));%></h2>
                        
                            <h3><%session.setAttribute("Price",request.getParameter("Price"));%></h3>
                            <a href="#" class="cart_btn">Add to Cart</a>
                            <a href="#" class="menu_btn">Order Now</a>
                            </div>
                    
                    </div>
                    <div class="mens_card">
                        <div class="mens_image">
                            <% session.setAttribute("Image", request.getParameter("Image")); %>
                        </div>
                        <div class="mens_info">
                            <h2><%session.setAttribute("Description", request.getParameter("Description"));%></h2>
                        
                            <h3><%session.setAttribute("Price",request.getParameter("Price"));%></h3>
                            <a href="#" class="cart_btn">Add to Cart</a>
                            <a href="#" class="menu_btn">Order Now</a>
                    </div>
                    
                    </div>
                    <div class="mens_card">
                        <div class="mens_image">
                            <% session.setAttribute("Image", request.getParameter("Image")); %>
                        </div>
                        <div class="mens_info">
                            <h2><%session.setAttribute("Description", request.getParameter("Description"));%></h2>
                        
                            <h3><%session.setAttribute("Price",request.getParameter("Price"));%></h3>
                            <a href="#" class="cart_btn">Add to Cart</a>
                            <a href="#" class="menu_btn">Order Now</a>
                    </div>
                    
                </div>                            
                            
                </div>
            </div>
            
        </div>
            
            
        </div>
        </div>
    </body>
</html>
