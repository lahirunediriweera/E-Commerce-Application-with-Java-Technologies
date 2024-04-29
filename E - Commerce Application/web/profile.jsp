<%-- 
    Document   : profile
    Created on : Apr 28, 2024, 4:51:49 PM
    Author     : wiman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <form action="ProfileServlet" method="GET">
            
            <div class="table">  
            <table border="0">
                <tr>
                    <th>First Name</th> 
                </tr>
                <tr>
                    <th>Last Name</th>
                </tr>
                <tr>
                    <th>Address</th>
                </tr>
                <tr>
                    <th>Contact No</th>
                </tr>
                <tr>
                    <th>E-mail</th>
                </tr>  
                
                
                <%  String fname="";
                    Cookie cookie = null;
                    Cookie[] cookies = null;
                    cookies = request.getCookies();
                    if( cookies != null){
                        for (int i = 0; i < cookies.length; i++){
                            cookie = cookies[i];
                            String b = cookie.getComment();
                            request.setAttribute("fname", fname);
                           // request.setAttribute("First Name", fname);
                           // request.setAttribute("First Name", fname);
                        }
                        System.out.println(fname);
                    }
                    
                %>
                
            
               
             
                        
            </table>
       </div>
       </form>

                         
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
