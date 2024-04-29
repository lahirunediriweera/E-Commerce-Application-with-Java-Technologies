<%-- 
    Document   : cart
    Created on : Apr 7, 2024, 12:41:35 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/cart.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
    </head>
    <body>
        
<main class="page">
    <section class="shopping-cart dark">
       <div class="container">
	<div class="block-heading">
            <h2>Shopping Cart</h2>
              
        </div>
        <div class="content">
            <div class="row">
                <div class="col-md-12 col-lg-8">
                    <div class="items">
			<div class="product">
                            <div class="row">
				<div class="col-md-3">
                                    <img class="img-fluid mx-auto d-block image" src="Image/ladiesmain.jpg">
				</div>
				<div class="col-md-8">
                                    <div class="info">
					<div class="row">
                                            <div class="col-md-5 product-name">
						<div class="product-name">
                                                    <a href="#">Lorem Ipsum dolor</a>
                                                    <div class="product-info">
                                                    <div>Price: <span class="value">#</span></div>
                                                    <div>Size: <span class="value">#</span></div>
                                                    </div>
						</div>
                                            </div>
                                                <div class="col-md-4 quantity">
                                                    <label for="quantity">Quantity:</label>
                                                    <input id="quantity" type="number" value ="1" class="form-control quantity-input">
                                                </div>
                                            <div class="col-md-3 price">
                                                <span>$120</span>
                                            </div>
                                        </div>
                                    </div>
				</div>
                            </div>
			</div>
			<div class="product">
                            <div class="row">
				<div class="col-md-3">
                                    <img class="img-fluid mx-auto d-block image" src="Image/gentsmain.jpg">
				</div>
				<div class="col-md-8">
                                    <div class="info">
					<div class="row">
                                            <div class="col-md-5 product-name">
						<div class="product-name">
                                                    <a href="#">Lorem Ipsum dolor</a>
							<div class="product-info">
                                                            <div>Price: <span class="value">#</span></div>
                                                            <div>Size: <span class="value">#</span></div>
							</div>
						</div>
                                            </div>
                                            <div class="col-md-4 quantity">
						<label for="quantity">Quantity:</label>
                                                    <input id="quantity" type="number" value ="1" class="form-control quantity-input">
                                            </div>
                                            <div class="col-md-3 price">
						<span>$120</span>
                                            </div>
					</div>
                                    </div>
				</div>
                            </div>
			</div>
			<div class="product">
                           <div class="row">
				<div class="col-md-3">
                                    <img class="img-fluid mx-auto d-block image" src="Image/13245.jpg">
				</div>
                            <div class="col-md-8">
				<div class="info">
                                    <div class="row">
					<div class="col-md-5 product-name">
                                            <div class="product-name">
						<a href="#">shirt</a>
						<div class="product-info">
                                                    <div>Price: <span class="value">#</span></div>
                                                    <div>Size: <span class="value">#</span></div>
						</div>
                                            </div>
					</div>
					<div class="col-md-4 quantity">
                                            <label for="quantity">Quantity:</label>
						<input id="quantity" type="number" value ="1" class="form-control quantity-input">
					</div>
					<div class="col-md-3 price">
					<span>$120</span>
					</div>
                                    </div>
				</div>
                            </div>
                          </div>
			</div>
                    </div>
		</div>
		<div class="col-md-12 col-lg-4">
                    <div class="summary">
			 <h3>Summary</h3>
                            <div class="summary-item"><span class="text">Subtotal</span><span class="price">Rs360</span></div>
                            
                            <button type="button" class="btn btn-primary btn-lg btn-block">Checkout</button> 
                    </div>
		</div>
            </div> 
	</div>
      </div>
  </section>
</main>


        
</body>
</html>
