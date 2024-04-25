<%-- 
    Document   : updateladies
    Created on : Apr 24, 2024, 11:20:58 AM
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
        function openEditPopup(id, name, description, price, amount) {
            document.getElementById('editId').value = id;
            document.getElementById('editName').value = name;
            document.getElementById('editDescription').value = description;
            document.getElementById('editPrice').value = price;
            document.getElementById('editAmount').value = amount;
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
        <h1>Ladies Items Update Section</h1>
        <a href="Gents.jsp"><input type="submit" value="Back" class="btn"></a>
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
            String query = "SELECT * FROM ladies";

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
                    <button onclick="openEditPopup('<%=rs.getInt("id")%>', '<%=rs.getString("name")%>', '<%=rs.getString("description")%>', '<%=rs.getString("price")%>', '<%=rs.getInt("amount")%>', '<%=rs.getString("picture")%>')">Update</button>
                </td>
            </tr>

            <% } %>
      </table>
      
    </div>
    </div>
      <div id="editPopup" class="editPopup-content">
        <span class="close" onclick="closeEditPopup()">&times;</span>
        <h2>Edit Ladies Items</h2>
        <form action="UpdateLadiesServlet" method="post">
            <input type="hidden" id="editId" name="id">
            <label for="editName">Name:</label>
            <input type="text" id="editName" name="name"><br><br>
            <label for="editDescription">Description:</label>
            <input type="text" id="editDescription" name="description"><br><br>
            <label for="editAuthor">Price:</label>
            <input type="text" id="editPrice" name="price"><br><br>
            <label for="editAmount">Amount:</label>
            <input type="text" id="editAmount" name="amount"><br><br>
            <label for="editPicture">Image:</label>
            <input type="file" id="editPicture" name="picture"><br><br>
            <input name="btn" type="submit" value="Update">
        </form>
    </div>
  </body>
</html>
