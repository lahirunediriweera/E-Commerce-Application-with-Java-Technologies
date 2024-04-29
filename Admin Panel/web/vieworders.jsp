<%-- 
    Document   : vieworders
    Created on : Apr 19, 2024, 2:27:56 AM
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
        <title>Gents Item</title>
        <link rel="stylesheet" href="css/view.css">
    </head>
    <body>
        <div class="container"><br>
        <h1>View Orders</h1>
        <a href="home.jsp"><input type="submit" value="Back" class="sbtn"></a>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>name</th>
            <th>address</th>
            <th>items</th>
            <th>amount</th>
         </tr>
         </thead>
         
         <%
                String url = "jdbc:mysql://localhost:3306/bloomshop";
                String query = "SELECT * FROM orders";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                
                <tr>
                    <td><%=rs.getInt("orderId")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("address")%></td>
                    <td><%=rs.getString("items")%></td>
                    <td><%=rs.getInt("amount")%></td>
                </tr>
                
                <% } %>
         
      </table>
    </div>
    </div>
  </body>
</html>
