<%-- 
    Document   : Gents
    Created on : Apr 15, 2024, 12:16:55 AM
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
        <title>Kids Item</title>
        <link rel="stylesheet" href="css/views.css">
    </head>
    <body>
    <div class="container">
        <h1>Kids Items Section</h1>
        <a href="home.jsp"><input type="submit" value="Back" class="sbtn"></a>
        <a href="addkidsitem.jsp"><input type="submit" value="Add New" class="sbtn"></a>
        <a href="updatekids.jsp"><input type="submit" value="Update" class="sbtn"></a>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>Image</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
            <th>Action</th>
         </tr>
         </thead>
         
         <%
                String url = "jdbc:mysql://localhost:3306/bloomshop";
                String query = "SELECT * FROM kids";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                
                <tr>
                    <td><%=rs.getInt("kidsId")%></td>
                    <td><img src="images/<%=rs.getString("image")%>" alt="Product Image" style="width:100px;height:100px"></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("description")%></td>
                    <td><%=rs.getInt("price")%></td>
                    <td><%=rs.getInt("quantity")%></td>
                    <td>
                        <%--<button class="btn" onclick="openEditPopup('<%=rs.getInt("id")%>', '<%=rs.getString("name")%>', '<%=rs.getString("description")%>', '<%=rs.getString("price")%>')">Update</button>--%>
                        <form action="DeleteKid" method="post">
                            <input type="hidden" name="kidsId" value="<%=rs.getInt("kidsId")%>">
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
