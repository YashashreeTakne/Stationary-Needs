<!-- newsteller -->
	<div class="newsletter">
		<div class="container">
			<div class="w3agile_newsletter_left">
				<h3>Newsletter</h3>
			</div>
			<div class="w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required>
					<input type="submit" value="subscribe now">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-3 w3_footer_grid">
				<h3>information</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="#">Events</a></li>
					<li><a href="about">About Us</a></li>
					<li><a href="productsListAngular">Best Deals</a></li>
					<li><a href="#">Services</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>policy info</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="#">FAQ</a></li>
					<li><a href="#">privacy policy</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>Categories</h3>
				<ul class="w3_footer_grid_list">
					<li><a href="product/productListAngular">Office Needs</a></li>
						<li><a href="product/productListAngular">College Needs</a></li>
						<li><a href="product/productListAngular">School Needs</a></li>
						<li><a href="product/productListAngular">Tools </a></li>
						<li><a href="product/productListAngular">All Categories</a></li>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid">
				<h3>twitter posts</h3>
				<ul class="w3_footer_grid_list1">
					<li><label class="fa fa-twitter" aria-hidden="true"></label><i>01 day ago</i>
					<span>I like this site because of best quality of product at most reasonable rates.</span></li>
					<li><label class="fa fa-twitter" aria-hidden="true"></label><i>02 day ago</i><span>
					I ordered many things from this site, it is trustable shopping website and also it offers 
					cash on delivery in even small things which is very good facility I think.</span></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
			<div class="agile_footer_grids">
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h4>100% secure payments</h4>
						<img src="${img}/card.png" alt=" " class="img-responsive" />
					</div>
				</div>
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h5>connect with us</h5>
						<ul class="agileits_social_icons">
							<li><a href="#" class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#" class="google"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
							<li><a href="#" class="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#" class="dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="wthree_footer_copy">
				<p>© 2016 Stationary Needs. All rights reserved</p>
			</div>
		</div>
	</div>
<!-- //footer -->


<!-- Bootstrap Core JavaScript -->
<script src="${js}/bootstrap.min.js"></script>

<!-- $(function () { -->

    
<!-- var goToCartIcon = function($addTocartBtn){ -->
   
<!--    var $cartIcon = $(".my-cart-icon"); -->
 
<!--      var $image = $('<img width="30px" height="30px" src="' + $addTocartBtn.data("image") + '"/>').css({"position": "fixed", "z-index": "999"}); -->
 
<!--      $addTocartBtn.prepend($image); -->
   
<!--    var position = $cartIcon.position() -->
<!-- ; -->
<!--       $image.animate({ -->
<!--         top: position.top, -->
<!--         left: position.left -->
<!--       }, 500 , "linear", function() { -->


<!--         $image.remove(); -->
<!--       }); -->
<!--     } -->

  
<!--   $('.my-cart-btn').myCart({ -->
<!--       classCartIcon: 'my-cart-icon', -->
<!--       classCartBadge: 'my-cart-badge', -->
   
<!-- 		   classProductQuantity: 'my-product-quantity', -->
<!--       classProductRemove: 'my-product-remove', -->
   
<!-- 		   classCheckoutCart: 'my-cart-checkout', -->
<!--       affixCartIcon: true, -->
<!--       showCheckoutModal: true, -->
 

<!--     cartItems: [ -->
<!--   {id: 1, name: 'product 1', summary: 'summary 1', price: 10, quantity: 1, image: 'images/img_1.png'}, -->
  
<!--       {id: 2, name: 'product 2', summary: 'summary 2', price: 20, quantity: 2, image: 'images/img_2.png'}, -->
       
<!--  {id: 3, name: 'product 3', summary: 'summary 3', price: 30, quantity: 1, image: 'images/img_3.png'} -->
<!--       ], -->
   

<!--    clickOnAddToCart: function($addTocart){ -->
<!--         goToCartIcon($addTocart); -->
<!--       }, -->
    
<!--   clickOnCartIcon: function($cartIcon, products, totalPrice, totalQuantity) { -->
 
<!--        console.log("cart icon clicked", $cartIcon, products, totalPrice, totalQuantity); -->
<!--       }, -->
     
<!--  checkoutCart: function(products, totalPrice, totalQuantity) { -->
     
<!--    console.log("checking out", products, totalPrice, totalQuantity); -->
<!--       }, -->
    
<!--   getDiscountPrice: function(products, totalPrice, totalQuantity) { -->
      
<!--   console.log("calculating discount", products, totalPrice, totalQuantity); -->
    
<!--     return totalPrice * 0.5; -->
<!--       } -->
   
<!--  }); -->

 
<!--  }); -->
  




<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="${js}/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
</body>
</html>