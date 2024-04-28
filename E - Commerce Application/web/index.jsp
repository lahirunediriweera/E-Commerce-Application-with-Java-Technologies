<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>MainPage</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/home.css">
    </head>
    <body>
        <div class="container">
            
            <div class="navbar">
                <div class="logo">
                    <img src="Image/Logo.jpg" width="50" height="40"> 
                </div>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="ladiessec">Ladies Section</a></li>
                    <li><a href="gentssec">Gents Section</a></li>
                    <li><a href="kidssec">Kids Section</a></li> 
                    <li class="rightcorner"><a href="signup.jsp">Register</a></li>
                    <li class="rightcorner"><a href="login.jsp">Login</a></li>
                    <li class="rightcorner"><a href="#">Search</a></li>
                </ul>
            </nav> 
            </div>
            
            <div class="slide">
                <img src="Image/slide.jpg" alt="slide1">   
                <div class="welcome">
                    <h1>Welcome!!!</h1>
                    <p class="mainpara">Feel Free To Style Your Own Way!!! </p>
                </div>
            </div> 
           
            <div class="row">
                <div class="column1">
                    <div class="card1">
                        <img class="card-img1" src="Image/ladiesmain.jpg" alt="Card1">
                        <h3 class="card-title">Ladies Section</h3>
                        <a href="ladiessec.jsp" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
                <div class="column2">
                    <div class="card2">
                        <img class="card-img2" src="Image/kidsmain.jpg" alt="Card2">
                        <h3 class="card-title">Kids Section</h3>
                        <a href="kidssec.jsp" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
                <div class="column1">
                    <div class="card1">
                        <img class="card-img3" src="Image/gentsmain.jpg" alt="Card3">
                        <h3 class="card-title">Gents Section</h3>
                        <a href="gentssec.jsp" class="btn btn-primary">Shop Now</a>
                    </div>
                </div>
            </div>
            
            <div class="footer">
                <footer>
                    <h4>Contact No:</h4>
                    <ul class="contactnumber">
                        <li>071-5565840</li>
                        <li>071-5565841</li>
                        <li>071-5565842</li>
                    </ul>
                    
                    <h4>E-mail:</h4>
                    <a class="myemail" href="mailto:example@gmail.com">example@gmail.com</a>
                    
                    <h4>Address:</h4>
                    <p class="place">No.27, Malwaththa Road, Colombo-5, Sri Lanka</p>

                    <div class="payment">
                        <h4>We Accepted:</h4>
                        <img src="Image/visa.jpeg" alt="visacard" >
                        <img src="Image/master.png" alt="mastercard">
                    </div>
                </footer>   
           </div>
            
            
            
        </div>
    </body>
</html>
