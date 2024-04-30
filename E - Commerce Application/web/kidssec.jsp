<%-- 
    Document   : kids
    Created on : Apr 15, 2024, 12:16:55 AM
    Author     : USER
--%>

<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Kids Section</title>
    <!-- Custom CSS -->
   <link href="CSS/kidssec.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <!-- Nav Bar -->
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
        <!-- Poster -->
        <div class="kids">
            <div class="poster">
                <h1>Kids<span>Fashion</span></h1>
            </div>
            <!-- Kids Section -->
            <div class="kids">
                <div class="kids casual">
                 <h2>Casual Outfit</h2>
                    <div class="kids_box">
                        <!-- First card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="<%= getImageFromDB(1) %>">
                            </div>
                            <div class="kids_info">
                                <p><%= getDescriptionFromDB(1) %></p>
                                <h3><%= getPriceFromDB(1) %></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Second card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="<%= getImageFromDB(2) %>">
                            </div>
                            <div class="kids_info">
                                <p><%= getDescriptionFromDB(2) %></p>
                                <h3><%= getPriceFromDB(2) %></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Third card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="<%= getImageFromDB(3) %>">
                            </div>
                            <div class="kids_info">
                                <p><%= getDescriptionFromDB(3) %></p>
                                <h3><%= getPriceFromDB(3) %></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Fourth card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="<%= getImageFromDB(4) %>">
                            </div>
                            <div class="kids_info">
                                <p><%= getDescriptionFromDB(4) %></p>
                                <h3><%= getPriceFromDB(4) %></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Fifth card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="<%= getImageFromDB(5) %>">
                            </div>
                            <div class="kids_info">
                                <p><%= getDescriptionFromDB(5) %></p>
                                <h3><%= getPriceFromDB(5) %></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Sixth card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="<%= getImageFromDB(6) %>">
                            </div>
                            <div class="kids_info">
                                <p><%= getDescriptionFromDB(6) %></p>
                                <h3><%= getPriceFromDB(6) %></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Seventh card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="<%= getImageFromDB(7) %>">
                            </div>
                            <div class="kids_info">
                                <p><%= getDescriptionFromDB(7) %></p>
                                <h3><%= getPriceFromDB(7) %></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- Eighth card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="<%= getImageFromDB(8) %>">
                            </div>
                            <div class="kids_info">
                                <p><%= getDescriptionFromDB(8) %></p>
                                <h3><%= getPriceFromDB(8) %></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>        
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

<%-- Functions to retrieve data from the database --%>
<%! 
    // Function to get image URL from the database for a given card number
      String getImageFromDB(int cardNumber) {
        String imageUrl = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloomshop", "root", "");
            PreparedStatement pstmt = con.prepareStatement("SELECT image FROM kids WHERE kidsId = ?");
            pstmt.setInt(1, cardNumber);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                imageUrl = rs.getString("image");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return imageUrl;
    }
    // Function to get description from the database for a given card number
     String getDescriptionFromDB(int cardNumber) {
        String description = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloomshop", "root", "");
            PreparedStatement pstmt = con.prepareStatement("SELECT description FROM kids WHERE kidsId = ?");
            pstmt.setInt(1, cardNumber);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                description = rs.getString("description");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return description;
    }
    
    
    // Function to get price from the database for a given card number
    String getPriceFromDB(int cardNumber) {
        String price = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloomshop", "root", "");
            PreparedStatement pstmt = con.prepareStatement("SELECT price FROM kids WHERE kidsId = ?");
            pstmt.setInt(1, cardNumber);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                price = rs.getString("price");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return price;
    }
%>