<%-- 
    Document   : womensec
    Created on : Apr 7, 2024, 12:36:48 AM
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
    <title>Ladies Section</title>
    <!-- Custom CSS -->
   <link href="CSS/ladiessec.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <!--Header-->
        <jsp:include page="header.jsp" />
        
        <!-- Poster -->
        <div class="ladies">
            <div class="poster">
                
            </div>
            <!-- ladies Section -->
            <div class="lady">
                 <h2>Ladies Fashion</h2>
                    <div class="lady_box">
                        
                        <%
                String url = "jdbc:mysql://localhost:3306/bloomshop";
                String query = "SELECT * FROM ladies";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                        
                        <!-- First card -->
                        <div class="lady_card">
                            <div class="lady_image">
                                <img src="Image/<%=rs.getString("image")%>" alt="Product Image" style="width:200px;height:\200px">
                            </div>
                            <div class="lady_info">
                                <p><%=rs.getString("description")%></p>
                                <h3><%=rs.getString("name")%></h3>
                                 <h3>Rs <%=rs.getString("price")%>.00</h3>
                                  <h3>Available only <%=rs.getString("quantity")%> units</h3>
                                <div class="btn-group">
                                    <a href="cart.jsp" class="cart_btn">Add to Cart</a>
                                    <a href="checkout.jsp" class="order_btn">Order Now</a>
                                </div>
                            </div>
                        </div>
                                
                      <% } %>
                       
                    </div>
                </div>
            </div>
        </div>
                      <!--Footer-->
                <jsp:include page="footer.jsp" />       
    </div> 
</body>
</html>