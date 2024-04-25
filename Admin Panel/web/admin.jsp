<%-- 
    Document   : admin
    Created on : Apr 25, 2024, 10:47:04 AM
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
        <title>Admin Info</title>
        <link rel="stylesheet" href="css/view.css">
    </head>
    <body>
        <div class="container"><br>
        <h1>Admin Details</h1>
        <a href="home.jsp"><input type="submit" value="Back" class="sbtn"></a>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Action</th>
         </tr>
         </thead>
         
         <%
                String url = "jdbc:mysql://localhost:3306/shop";
                String query = "SELECT * FROM admin";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                
                <tr>
                    <td><%=rs.getInt("id")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("password")%></td>
                    <td>
                        <form action="DeleteAdmin" method="post">
                            <input type="hidden" name="id" value="<%=rs.getInt("id")%>">
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
