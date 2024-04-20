<%-- 
    Document   : updategents
    Created on : Apr 21, 2024, 12:46:04 AM
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
        function openEditPopup(bookId, name, author, price) {
            document.getElementById('editBookId').value = bookId;
            document.getElementById('editName').value = name;
            document.getElementById('editAuthor').value = author;
            document.getElementById('editPrice').value = price;
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
        <a href="index.html"><input type="submit" value="Back" class="btn"></a>
    <div class="product-display">
      <table class="product-display-table">
         <thead>
         <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
            <th>Picture</th>
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
                <td><%=rs.getString("name")%></td>
                <td><%=rs.getString("description")%></td>
                <td><%=rs.getString("price")%></td>
                <td><%=rs.getInt("amount")%></td>
                <td><%=rs.getString("picture")%></td>
                <td>
                    <button onclick="openEditPopup('<%=rs.getInt("id")%>', '<%=rs.getString("name")%>', '<%=rs.getString("description")%>', '<%=rs.getString("price")%>')">Update</button>
                </td>
            </tr>

            <% } %>
      </table>
      
    </div>
    </div>
      <div id="editPopup" class="editPopup-content">
        <span class="close" onclick="closeEditPopup()">&times;</span>
        <h2>Edit Book Details</h2>
        <form action="UpdateBook" method="post">
            <input type="hidden" id="editBookId" name="bookid">
            <label for="editName">Name:</label>
            <input type="text" id="editName" name="name"><br><br>
            <label for="editAuthor">Author:</label>
            <input type="text" id="editAuthor" name="author"><br><br>
            <label for="editAuthor">Price:</label>
            <input type="text" id="editPrice" name="price"><br><br>
            <input name="btn" type="submit" value="Update">
        </form>
    </div>
  </body>
</html>
