<%-- 
    Document   : updatekids
    Created on : Apr 25, 2024, 1:39:44 AM
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
        <title>Update Item</title>
        <script>
        function openEditPopup(kidsId, name, description, price, quantity) {
            document.getElementById('editId').value = kidsId;
            document.getElementById('editName').value = name;
            document.getElementById('editDescription').value = description;
            document.getElementById('editPrice').value = price;
            document.getElementById('editQuantity').value = quantity;
            document.getElementById('editPopup').style.display = 'block';
        }

        function closeEditPopup() {
            document.getElementById('editPopup').style.display = 'none';
        }
    </script>
    <link rel="stylesheet" href="css/styleu.css">
    <link rel="stylesheet" href="css/bstyle.css">
    </head>
    <body>
    <div class="container">
        <h1>Kids Items Update Section</h1>
        <a href="kids.jsp"><input type="submit" value="Back" class="btn"></a>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>Picture</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
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
                <td><%=rs.getString("image")%></td>
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("description")%></td>
                <td><%=rs.getInt("price")%></td>
                <td><%=rs.getInt("quantity")%></td>
                <td>
                    <button onclick="openEditPopup('<%=rs.getInt("kidsId")%>', '<%=rs.getString("name")%>', '<%=rs.getString("description")%>', '<%=rs.getInt("price")%>', '<%=rs.getInt("quantity")%>', '<%=rs.getString("image")%>')">Update</button>
                </td>
            </tr>

            <% } %>
      </table>
      
    </div>
    </div>
      <div id="editPopup" class="editPopup-content">
        <span class="close" onclick="closeEditPopup()">&times;</span>
        <h2>Edit Kids Items</h2>
        <form action="UpdateKidsServlet" method="post">
            <input type="hidden" id="editId" name="kidsId">
            <label for="editName">Name:</label>
            <input type="text" id="editName" name="name"><br><br>
            <label for="editDescription">Description:</label>
            <input type="text" id="editDescription" name="description"><br><br>
            <label for="editAuthor">Price:</label>
            <input type="text" id="editPrice" name="price"><br><br>
            <label for="editAmount">Quantity:</label>
            <input type="text" id="editQuantity" name="quantity"><br><br>
            <label for="editPicture">Image:</label>
            <input type="file" id="editImage" name="image"><br><br>
            <input name="btn" type="submit" value="Update">
        </form>
    </div>
  </body>
</html>
