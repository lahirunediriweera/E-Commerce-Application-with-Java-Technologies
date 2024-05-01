<%-- 
    Document   : profile
    Created on : Apr 26, 2024, 12:04:49 AM
    Author     : wiman
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  String driver= "com.mysql.jdbc.Driver";
    Class.forName(driver); %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <link rel="stylesheet" href="CSS/profile.css">
        
    </head>
    <body>
        <div class="container">
            
            <div class="navbar">
                <div class="logo">
                    <img src="Image/Logo.jpg" width="50" height="40"> 
                </div>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="ladiessec.jsp">Ladies Section</a></li>
                    <li><a href="gentssec.jsp">Gents Section</a></li>
                    <li><a href="kidssec.jsp">Kids Section</a></li>
                    <li class="rightcorner"><a href="profile.jsp">Profile</a></li>
                    <li class="rightcorner"><a href="index.html">Logout</a></li>
                    <li class="rightcorner"><a href="cart.jsp">Cart</a></li>
                    <li class="rightcorner"><a href="search.jsp">Search</a></li>
                </ul>
            </nav> 
            </div>
            
            <div class="userprofile">
                <h1>Profile</h1>
            </div>
             
            <table border="0">
                <tbody>
                    <%!
                        public class Customer{
                            String url="jdbc:mysql://localhost:3306/bloomshop";
                            
                            Connection con= null;
                            PreparedStatement ps= null;
                            ResultSet rs= null;
                            
                            public Customer(){
                                try{
                                    con=DriverManager.getConnection(url, "root", "");
                                    String query= "select fname,lname,address,contact,email"+" from customer "+"where email=?" ;
                                    ps=con.prepareStatement(query);
                                }catch(SQLException ex){
                                    ex.printStackTrace();
                                }
                                
                            }
                            public ResultSet getCustomer(String email){
                                try{
                                    ps.setString(1,email);
                                    rs=ps.executeQuery();
                                }catch(SQLException ex){
                                    ex.printStackTrace();
                                }
                                return rs;
                            }
                             
                        }
                    %>
                    <%
                        String email= new String();
                        
                        if(request.getParameter("email") != null){
                            email= request.getParameter("email");
                        }
                        
                        Customer cus = new Customer();
                        ResultSet rs = cus.getCustomer(email);
                    %>
                <table border="0">
                    <tbody>
                        <% if(rs.next()){ %>
                        <tr>
                            <td>First Name</td>
                            <td><input type="text" name="fname" value="" /><%=rs.getString("fname")%></td>
                        </tr>
                        <tr>
                            <td>Last Name</td>
                            <td><input type="text" name="lname" value="" /><%=rs.getString("lname")%></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><input type="text" name="address" value="" /><%=rs.getString("addreess")%></td>
                        </tr>
                        <tr>
                            <td>Contact No</td>
                            <td><input type="text" name="contact" value="" /><%=rs.getString("contact")%></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" name="email" value="" /><%=rs.getString("email")%></td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>

               
        <div class="footer">
                <footer>
                    <h4>Contact No:</h4>
                    <ul class="contactnumber">
                        <li>071-5565840</li>
                        <li>071-5565841</li>
                        <li>071-5565842</li>
                    </ul>
                    
                    <h4>E-mail:</h4>
                    <a class="myemail" href="mailto:example@gmail.com">example@gmail.com</a>
                    
                    <h4>Address:</h4>
                    <p class="place">No.27, Malwaththa Road, Colombo-5, Sri Lanka</p>

                    <div class="payment">
                        <h4>We Accepted:</h4>
                        <img src="Image/visa.jpeg" alt="visacard" >
                        <img src="Image/master.png" alt="mastercard">
                    </div>
                </footer>   
           </div>
        </div>

    </body>
</html>
