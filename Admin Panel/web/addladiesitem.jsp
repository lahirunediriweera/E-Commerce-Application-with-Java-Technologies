<%-- 
    Document   : gentssetting
    Created on : Apr 14, 2024, 11:45:23 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Items Ladies Section</title>
        <link rel="stylesheet" href="css/setting.css">
    </head>
    <body>
        <div class="container">
        <h1>ADD NEW ITEM FOR LADIES SECTION</h1>
        <p></p>
        <form action="LadyServlet" method="POST" enctype="multipart/form-data">
            <div class="row">
                <div class="column">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Name here">
                </div>
                <div class="column">
                    <label for="description">Description</label>
                    <input type="text" id="description" name="description" placeholder="Details here">
                </div>
                <div class="column">
                    <label for="price">Price</label>
                    <input type="number" id="price" name="price" placeholder="Price here">
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <label for="amount">Quantity</label>
                    <input type="number" id="amount" name="quantity" placeholder="Amount here">
                </div>
                <div class="column">
                    <label for="itempic">Item Image</label>
                    <input type="file" accept="image/jpeg,image/png,image/jpg" name="itempic">
                </div>
            </div>
            <div class="row">
                <div class="c">
                    <a href="ladies.jsp"><input type="button" value="Back" class="btn"></a>
                <input type="reset" value="Reset" class="btn">
                <input type="submit" value="Submit" class="btn">
                </div>
            </div>
        </form>
    </div>

    </body>
</html>
