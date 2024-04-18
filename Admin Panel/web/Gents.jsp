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
        <title>Gents Item</title>
        <link rel="stylesheet" href="css/view.css">
    </head>
    <body>
        <div class="container"><br>
        <h1>Gents Items Section</h1>
        <a href="home.jsp"><input type="submit" value="Back" class="sbtn"></a>
        <a href="addgentsitem.jsp"><input type="submit" value="Add New" class="sbtn"></a>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>image</th>
            <th>name</th>
            <th>description</th>
            <th>price</th>
            <th>amount</th>
            <th>action</th>
         </tr>
         </thead>
         
         <%
                String url = "jdbc:mysql://localhost:3306/shop";
                String query = "SELECT * FROM gents";
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url, "root", "");
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()) { %>
                
                <tr>
                    <td><%=rs.getInt("id")%></td>
                    <td><%=rs.getString("picture")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("description")%></td>
                    <td><%=rs.getString("price")%></td>
                    <td><%=rs.getInt("amount")%></td>
                    <td>
                        <%--<button class="btn" onclick="openEditPopup('<%=rs.getInt("id")%>', '<%=rs.getString("name")%>', '<%=rs.getString("description")%>', '<%=rs.getString("price")%>')">Update</button>--%>
                        <form action="DeleteGent" method="post">
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
