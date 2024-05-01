<%-- 
    Document   : cart
    Created on : Apr 7, 2024, 12:41:35 AM
    Author     : USER
--%>
<html>
    <head>
        <link rel="stylesheet" href="CSS/cart.css">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    </head>
    <body>
        
        <div class="navbar">
                <div class="logo">
                    <img src="Image/Logo.jpg" width="50" height="40"> 
                </div>
            <nav>
                <ul>
                    <li><a href="home.jsp">Home</a></li>
                    <li><a href="ladiessec.jsp">Ladies Section</a></li>
                    <li><a href="gentssec.jsp">Gents Section</a></li>
                    <li><a href="kidssec.jsp">Kids Section</a></li>
                    <li class="rightcorner"><a href="profile.jsp">Profile</a></li>
                    <li class="rightcorner"><a href="index.jsp">Logout</a></li>
                    <li class="rightcorner"><a href="cart.jsp">Cart</a></li>
                    <li class="rightcorner"><a href="search.jsp">Search</a></li>
                </ul>
            </nav> 
            </div>
        
        <div class="container">
                <div class="row">
                        <div class="col-xs-8">
                                <div class="panel panel-info">
                                        <div class="panel-heading">
                                                <div class="panel-title">
                                                        <div class="row">
                                                                <div class="col-xs-6">
                                                                        <h5><span class="glyphicon glyphicon-shopping-cart"></span> Shopping Cart</h5>
                                                                </div>
                                                                <div class="col-xs-6">
                                                                        <button type="button" class="btn btn-primary btn-sm btn-block">
                                                                                <span class="glyphicon glyphicon-share-alt"></span> Continue shopping
                                                                        </button>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                        <div class="panel-body">
                                                <div class="row">
                                                        <div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
                                                        </div>
                                                        <div class="col-xs-4">
                                                                <h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
                                                        </div>
                                                        <div class="col-xs-6">
                                                                <div class="col-xs-6 text-right">
                                                                        <h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
                                                                </div>
                                                                <div class="col-xs-4">
                                                                        <input type="text" class="form-control input-sm" value="1">
                                                                </div>
                                                                <div class="col-xs-2">
                                                                        <button type="button" class="btn btn-link btn-xs">
                                                                                <span class="glyphicon glyphicon-trash"> </span>
                                                                        </button>
                                                                </div>
                                                        </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                        <div class="col-xs-2"><img class="img-responsive" src="http://placehold.it/100x70">
                                                        </div>
                                                        <div class="col-xs-4">
                                                                <h4 class="product-name"><strong>Product name</strong></h4><h4><small>Product description</small></h4>
                                                        </div>
                                                        <div class="col-xs-6">
                                                                <div class="col-xs-6 text-right">
                                                                        <h6><strong>25.00 <span class="text-muted">x</span></strong></h6>
                                                                </div>
                                                                <div class="col-xs-4">
                                                                        <input type="text" class="form-control input-sm" value="1">
                                                                </div>
                                                                <div class="col-xs-2">
                                                                        <button type="button" class="btn btn-link btn-xs">
                                                                                <span class="glyphicon glyphicon-trash"> </span>
                                                                        </button>
                                                                </div>
                                                        </div>
                                                </div>
                                                <hr>
                                                <div class="row">
                                                        <div class="text-center">
                                                                <div class="col-xs-9">
                                                                        <h6 class="text-right">Added items?</h6>
                                                                </div>
                                                                <div class="col-xs-3">
                                                                        <button type="button" class="btn btn-default btn-sm btn-block">
                                                                                Update cart
                                                                        </button>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                        <div class="panel-footer">
                                                <div class="row text-center">
                                                        <div class="col-xs-9">
                                                                <h4 class="text-right">Total <strong>Rs50.00</strong></h4>
                                                        </div>
                                                        <div class="col-xs-3">
                                                            <button type="button" class="btn btn-success btn-block"><a href="checkout.jsp">Checkout</a></button>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
    </body>
</html>