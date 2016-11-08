<%@include file="shared/header.jsp" %>
<%@include file="shared/nav.jsp" %>

<c:url value="/resources/IMGS/{{product.productId}}.png" var="src1" />

<div ng-app="app" ng-controller="myController">
<div ng-init="productList()">
		
	
		
<div class="w3l_banner_nav_right">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3l_banner_nav_right_banner">
								<h3>Make your <span>Office</span> Stationary Prosporous.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner1">
								<h3>keep your <span>College Life</span> Upto date.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
						<li>
							<div class="w3l_banner_nav_right_banner2">
								<h3>upto <i>50%</i> off.</h3>
								<div class="more">
									<a href="#" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- flexSlider -->
				<link rel="stylesheet" href="${css}/flexslider.css" type="text/css" media="screen" property="" />
				<script defer src="${js}/jquery.flexslider.js"></script>
				<script type="text/javascript">
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
			  </script>
			<!-- //flexSlider -->
		</div>
		<div class="clearfix"></div>
	</div>
<!-- banner -->

		
	<div class="banner_bottom">
			<div class="wthree_banner_bottom_left_grid_sub">
			</div>
			<div class="wthree_banner_bottom_left_grid_sub1">
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="${img}/129.jpg" alt=" " class="img-responsive" href="#" />
						<div class="wthree_banner_bottom_left_grid_pos">
							<h4>Discount Offer <span>25%</span></h4>
						</div>
					</div>
				</div>
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="${img}/130.jpg" alt=" " class="img-responsive" href="#"/>
						<div class="wthree_banner_btm_pos">
							<h3>introducing <span>best store</span> for <i>Stationary</i></h3>
						</div>
					</div>
				</div>
				<div class="col-md-4 wthree_banner_bottom_left">
					<div class="wthree_banner_bottom_left_grid">
						<img src="${img}/161.jpg" alt=" " class="img-responsive" href="#" />
						<div class="wthree_banner_btm_pos1">
							<h3>Save <span>Upto</span> Rs.50</h3>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
	</div>
<!-- top-brands -->

	<center>
Search: <input type="text" ng-model="searchCondition" aline="center" placeholder="Search Products">
</center>
	<br><br><br>
	<div class="top-brands">
		<div class="container">
			<h3>Hot Offers</h3>
			<div class="agile_top_brands_grids">
						<div ng-repeat="product in products | filter:searchCondition">
			
				<div class="col-md-3 top_brand_left">
					<div class="hover14 column">
					
						<div class="agile_top_brand_left_grid">
							<div class="tag"><img src="${img}/tag.png" alt=" " class="img-responsive" /></div>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block" >
										<div class="snipcart-thumb">
		<a href="<c:url value="/product/viewProduct/{{product.productId}}" />"><img src="${src1 }" alt="image" class="img-responsive"></a>		
											<p>{{product.productname}}</p>
											<h4>Rs.{{product.selling_price}} <span>Rs.{{product.prize}}</span></h4>
										</div>
										<div class="snipcart-details top_brand_home_details">
											<form action="product/productListAngular" method="post">
												<fieldset>
<!-- 													<input type="hidden" name="cmd" value="_cart" /> -->
<!-- 													<input type="hidden" name="add" value="1" /> -->
<!-- 													<input type="hidden" name="business" value=" " /> -->
<!-- 													<input type="hidden" name="item_name" value="Fortune Sunflower Oil" /> -->
<!-- 													<input type="hidden" name="amount" value="7.99" /> -->
<!-- 													<input type="hidden" name="discount_amount" value="1.00" /> -->
<!-- 													<input type="hidden" name="currency_code" value="USD" /> -->
<!-- 													<input type="hidden" name="return" value=" " /> -->
<!-- 													<input type="hidden" name="cancel_return" value=" " /> -->
													<input type="submit" name="submit" value="View" class="button" />
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
					</div>
				</div>
				</div>
								<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
</div>	
<!-- //top-brands -->
<!-- fresh-vegetables -->
	<div class="fresh-vegetables">
		<div class="container">
			<h3>Top Products</h3>
			<div class="w3l_fresh_vegetables_grids">
				<div class="col-md-3 w3l_fresh_vegetables_grid w3l_fresh_vegetables_grid_left">
					<div class="w3l_fresh_vegetables_grid2">
						<ul>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">All Brands</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">Desk Accesories</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">Writting Suppies</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">Measuring tools</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">School Accesories</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">metal Tools</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">Paper Products</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">Office Equipments</a></li>
							<li><i class="fa fa-check" aria-hidden="true"></i><a href="product/productListAngular">Adhesives</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-9 w3l_fresh_vegetables_grid_right">
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="${img}/152.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<div class="w3l_fresh_vegetables_grid1_rel">
								<img src="${img}/174.jpg" alt=" " class="img-responsive" />
								<div class="w3l_fresh_vegetables_grid1_rel_pos">
									<div class="more m1">
										<a href="product/productListAngular" class="button--saqui button--round-l button--text-thick" data-text="Shop now">Shop now</a>
									</div>
								</div>
							</div>
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="${img}/158.jpg" alt=" " class="img-responsive" />
							<div class="w3l_fresh_vegetables_grid1_bottom_pos">
								<h5>Special Offers</h5>
							</div>
						</div>
					</div>
					<div class="col-md-4 w3l_fresh_vegetables_grid">
						<div class="w3l_fresh_vegetables_grid1">
							<img src="${img}/162.jpg" alt=" " class="img-responsive" />
						</div>
						<div class="w3l_fresh_vegetables_grid1_bottom">
							<img src="${img}/165.jpg" alt=" " class="img-responsive" />
						</div>
					</div>
					<div class="clearfix"> </div>
					<div class="agileinfo_move_text">
						<div class="agileinfo_marquee">
							<h4>Get <span class="blink_me">25% Off on first order and also get a FREE "Gift voucher"</span></h4>
						</div>
						<div class="agileinfo_breaking_news">
							<span> </span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>

<!-- //fresh-vegetables -->

<br><br>
<%@include file="shared/footer.jsp"%>