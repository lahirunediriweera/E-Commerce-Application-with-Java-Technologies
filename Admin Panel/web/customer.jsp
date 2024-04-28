<%-- 
    Document   : customer
    Created on : Apr 19, 2024, 2:46:17 AM
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
        <title>Customers Info</title>
        <link rel="stylesheet" href="css/view.css">
    </head>
    <body>
        <div class="container"><br>
        <h1>Customers</h1>
        <a href="home.jsp"><input type="submit" value="Back" class="sbtn"></a>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>Contact Number</th>
            <th>Email</th>
            <th>Delete User</th>
         </tr>
         </thead>
         
         <%
                String url = "jdbc:mysql://localhost:3306/bloomshop";
                String query = "SELECT * FROM customer";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                
                <tr>
                    <td><%=rs.getInt("customerId")%></td>
                    <td><%=rs.getString("fname")%></td>
                    <td><%=rs.getString("lname")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("contact")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td>
                        <form action="DeleteUser" method="post">
                            <input type="hidden" name="customerId" value="<%=rs.getInt("customerId")%>">
                            <input type="submit" class="btn" value="Delete">
                        </form>
                    </td>
                </tr>
                
                <% } %>
         
      </table>
    </div>
    </div>
  </body>
</html>
