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
                        
                        <%
                String url = "jdbc:mysql://localhost:3306/bloomshop";
                String query = "SELECT * FROM kids";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                        
                        <!-- First card -->
                        <div class="kids_card">
                            <div class="kids_image">
                                <img src="Image/<%=rs.getString("image")%>" alt="Product Image" style="width:100px;height:100px">
                            </div>
                            <div class="kids_info">
                                <p><%=rs.getString("description")%></p>
                                <h3><%=rs.getString("name")%></h3>
                                <div class="btn-group">
                                    <a href="#" class="cart_btn">Add to Cart</a>
                                    <a href="#" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                                
                      <% } %>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

