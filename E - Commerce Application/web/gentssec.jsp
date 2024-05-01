

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Mens Section</title>
    <!-- Custom CSS -->
   <link href="CSS/gentssec.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <!--Header-->
        <!-- Poster -->
        <div class="mens">
            <div class="poster">
                
            </div>
            <!-- mens Section -->
            <div class="men">
                 <h2>Men Fashion</h2>
                    <div class="mens_box">
                        
                        <%
                String url = "jdbc:mysql://localhost:3306/bloomshop";
                String query = "SELECT * FROM gents";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                        
                        <!-- First card -->
                        <div class="mens_card">
                            <div class="mens_image">
                                <img src="<%=rs.getString("image")%>" alt="Product Image" style="width:100px;height:100px">
                            </div>
                            <div class="mens_info">
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
                      <!--Footer-->
                      <jsp:include page="footer.jsp" />
        </div>
    </body>
</html>