<%-- 
    Document   : home
    Created on : Apr 7, 2024, 7:11:07 PM
    Author     : USER
--%>

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
                        <a href="#">
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
                        <a href="#">
                            <span class="icon"><ion-icon name="settings"></ion-icon></span>
                            <span class="title">Admin Setting</span>
                        </a>
                    </li>
                    
                    <li>
                        <a href="#">
                            <span class="icon"><ion-icon name="log-out"></ion-icon></span>
                            <span class="title">Log Out</span>
                        </a>
                    </li>
                </ul>
            </div>
        
        
            <div class="main">
                <div class="topbar">
                    <div class="toggle">
                        <ion-icon name="menu-outline"></ion-icon>
                    </div>

                    <div class="user">
                        <img src="13245.jpg" alt="">
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
                            <h2>Recent Orders</h2>
                            <a href="#" class="btn">View All</a>
                        </div>
                        
                        <table>
                            <thead>
                                <tr>
                                    <td>Name</td>
                                    <td>Price</td>
                                    <td>Payment</td>
                                    <td>Status</td>
                                </tr>
                            </thead>
                            
                            <tbody>
                                <tr>
                                    <td>Lahiru</td>
                                    <td>Rs.1200</td>
                                    <td>Paid</td>
                                    <td><span class="status delivered">Delivered</span></td>
                                </tr>
                                <tr>
                                    <td>Lahiru</td>
                                    <td>Rs.1200</td>
                                    <td>Paid</td>
                                    <td><span class="status delivered">Delivered</span></td>
                                </tr>
                                <tr>
                                    <td>Lahiru</td>
                                    <td>Rs.1200</td>
                                    <td>Paid</td>
                                    <td><span class="status delivered">Delivered</span></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="recentCustomers">
                        <div class="cardHeaders">
                            <h2>Recent Customers</h2>
                        </div>
                        
                        <table>
                            <tr>
                                <td width="60px">
                                    <div class="imgBx"><img src="13245.jpg" alt=""></div>
                                </td>
                                <td>
                                    <h4>David <br> <span>Italy</span></h4>
                                </td>
                            </tr>
                            <tr>
                                <td width="60px">
                                    <div class="imgBx"><img src="13245.jpg" alt=""></div>
                                </td>
                                <td>
                                    <h4>David <br> <span>Italy</span></h4>
                                </td>
                            </tr>
                            <tr>
                                <td width="60px">
                                    <div class="imgBx"><img src="13245.jpg" alt=""></div>
                                </td>
                                <td>
                                    <h4>David <br> <span>Italy</span></h4>
                                </td>
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
