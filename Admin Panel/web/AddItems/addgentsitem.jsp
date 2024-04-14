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
        <title>Add Items Gents Section</title>
        <link rel="stylesheet" href="settings.css">
    </head>
    <body>
        <div class="container">
        <h1>ADD NEW ITEM FOR GENTS SECTION</h1>
        <p></p>
        <form action="">
            <div class="row">
                <div class="column">
                    <label for="name">Item ID</label>
                    <input type="text" id="name" placeholder="ID here">
                </div>
                <div class="column">
                    <label for="Day">Name</label>
                    <input type="text" id="Day" placeholder="Name here">
                </div>
                <div class="column">
                    <label for="Day">Description</label>
                    <input type="text" id="Day" placeholder="Details here">
                </div>
                <div class="column">
                    <label for="Day">Price</label>
                    <input type="text" id="Day" placeholder="Price here">
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <label for="Time">Time</label>
                    <input type="number" id="Time" placeholder="Amount here">
                </div>
                <div class="column">
                    <label for="propic">Profile Photo</label>
                    <input type="file">
                </div>
            </div>
            <div class="row">
                <div class="c">
                <a href="doctorshedule.html"><input type="button" value="Back" class="btn"></a>
                <input type="reset" value="Reset" class="btn">
                <input type="submit" value="Submit" class="btn">
                <input type="submit" value="Update" class="btn">
                </div>
            </div>
        </form>
    </div>

    </body>
</html>
