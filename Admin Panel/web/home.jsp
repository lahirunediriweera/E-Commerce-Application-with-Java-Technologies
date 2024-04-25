<%-- 
    Document   : home
    Created on : Apr 7, 2024, 7:11:07 PM
    Author     : USER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Panel</title>
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body>
        <div class="container">
            <div class="navigation">
                <ul>
                    <li>
                        <a href="#">
                            <span class="icon"><ion-icon name="storefront"></ion-icon></span>
                            <span class="title">Brand Name</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="home.jsp">
                            <span class="icon"><ion-icon name="home"></ion-icon></span>
                            <span class="title">Dashboard</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="customer.jsp">
                            <span class="icon"><ion-icon name="people"></ion-icon></ion-icon></span>
                            <span class="title">Customer</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="vieworders.jsp">
                            <span class="icon"><ion-icon name="file-tray-full"></ion-icon></span>
                            <span class="title">View Orders</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="Gents.jsp">
                            <span class="icon"><ion-icon name="storefront"></ion-icon></span>
                            <span class="title">Gents Sec Setting</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="ladies.jsp">
                            <span class="icon"><ion-icon name="storefront"></ion-icon></span>
                            <span class="title">Ladies Sec Setting</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="kids.jsp">
                            <span class="icon"><ion-icon name="storefront"></ion-icon></span>
                            <span class="title">Kids Sec Setting</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="admin.jsp">
                            <span class="icon"><ion-icon name="settings"></ion-icon></span>
                            <span class="title">Admins</span>
                        </a>
                    </li>
                    
                    <li>
                        <form action="LogoutServlet" method="POST">
                            <a href="LogoutServlet">
                                <span class="icon"><ion-icon name="log-out"></ion-icon></span>
                                <span class="title">Log Out</span>
                            </a>
                        </form>
                    </li>
                </ul>
            </div>
        
        
            <div class="main">
                <div class="topbar">
                    <div class="toggle">
                        
                    </div>

                    <div class="user">
                        <h2><%= new java.util.Date() %> </h2>
                    </div>
                </div>
                
                <div class="cardBox">
                    <div class="card">
                        <div>
                            <div class="numbers">1,504</div>
                            <div class="cardName">Total Orders</div>
                        </div>
                        
                        <div class="iconBx">
                            <ion-icon name="bag-handle"></ion-icon>
                        </div>
                    </div>
                    
                    <div class="card">
                        <div>
                            <div class="numbers">1,504</div>
                            <div class="cardName">Total Customers</div>
                        </div>
                        
                        <div class="iconBx">
                            <ion-icon name="people"></ion-icon>
                        </div>
                    </div>
                    
                    <div class="card">
                        <div>
                            <div class="numbers">1,504</div>
                            <div class="cardName">Total Items</div>
                        </div>
                        
                        <div class="iconBx">
                            <ion-icon name="shirt"></ion-icon>
                        </div>
                    </div>
                    
                    <div class="card">
                        <div>
                            <div class="numbers">1,504</div>
                            <div class="cardName">Total Visits</div>
                        </div>
                        
                        <div class="iconBx">
                            <ion-icon name="eye"></ion-icon>
                        </div>
                    </div>
                </div>
                
                <div class="details">
                    <div class="recentOrders">
                        <div class="cardHeaders">
                            <h2>RECENT ORDERS</h2>
                            <a href="vieworders.jsp" class="btn">View All</a>
                        </div>
                        
                        <table>
                            <thead>
                                <tr>
                                    <td>Name</td>
                                    <td>Address</td>
                                    <td>Amount</td>
                                </tr>
                            </thead>
                            
                            <tbody>
                                <%
                                    String url = "jdbc:mysql://localhost:3306/shop";
                                    String query = "SELECT * FROM orders";

                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection(url, "root", "");
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery(query);

                                    while(rs.next()) { %>
                                <tr>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("address")%></td>
                                    <td><%=rs.getString("amount")%></td>
                                </tr>

                                <% } %>
                                
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="recentCustomers">
                        <div class="cardHeaders">
                            <h2>ADD NEW ITEMS QUICKLY</h2>
                        </div>
                        
                        <table>
                            <tr>
                                <input type="button" value="Add New Gents Item">
                            </tr>
                            <tr>
                                <input type="button" value="Add New Ladies Item">
                            </tr>
                            <tr>
                                <input type="button" value="Add New Kids Item">
                            </tr>    
                        </table>
                    </div>
                </div>
            </div>
        </div>
        
        
        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    </body>
</html>
