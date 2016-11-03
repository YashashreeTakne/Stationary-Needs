<%@include file="shared/header.jsp" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Log In</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>

<div class="w3l_banner_nav_right">
<!-- login -->
		<div class="w3_login">
			<h3>Sign In And Sign Up</h3>
			<div class="w3_login_module">
				<div class="module form-module">
				  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
					<div class="tooltip">Click Me</div>
				  </div>
				  
				  <div class="form" id="login-box">
					<h2>Login to your account</h2>
													
							<c:if test="${not empty logout}">
								<div class="error"style="color: #ff0000;">${logout}</div>
							</c:if>
					<form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">
					
					 <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>
					
					  <input type="text" placeholder="Username" id="username" name="j_username">
					  <input type="password" placeholder="Password" id="password" name="j_password" class="form-control" >
					  <input type="submit" value="Login">
					</form>
				  </div>
						  
						  <div class="cta"><a href="#">Forgot your password?</a></div>
				  
				  <div class="form" >
					<h2>Create an account</h2> 
				  
        <form:form action="SaveCustomer"
            method="post" commandName="customer">
	
	        <div class="form-group">
            <label for="name">Name</label>
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input path="customerName" type="text" placeholder="Name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color: #ff0000" />
            <form:input path="customerEmail" placeholder="Email Address" type="text" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone" placeholder="Phone Number" type="text" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="username">Username</label>
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="username" cssStyle="color: #ff0000" />
            <form:input path="username" placeholder="Username" type="text" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <form:errors path="password" cssStyle="color: #ff0000" />
            <form:input path="password" placeholder="Password" type="password" class="form-Control" />
        </div>
        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
      
        </form:form>
         </div>
         <div class="cta"><a href="continue">Save And Continue ...</a></div>
				</div>
			</div>
			<script>
				$('.toggle').click(function(){
				  // Switches the Icon
				  $(this).children('i').toggleClass('fa-pencil');
				  // Switches the forms  
				  $('.form').animate({
					height: "toggle",
					'padding-top': 'toggle',
					'padding-bottom': 'toggle',
					opacity: "toggle"
				  }, "slow");
				});
			</script>
		</div>
<!-- //login -->
		</div>
		
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
<!-- newsletter-top-serv-btm -->
	<div class="newsletter-top-serv-btm">
		<div class="container">
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i>
				</div>
				<h3>Nam libero tempore</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-bar-chart" aria-hidden="true"></i>
				</div>
				<h3>officiis debitis aut rerum</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="col-md-4 wthree_news_top_serv_btm_grid">
				<div class="wthree_news_top_serv_btm_grid_icon">
					<i class="fa fa-truck" aria-hidden="true"></i>
				</div>
				<h3>eveniet ut et voluptates</h3>
				<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus 
					saepe eveniet ut et voluptates repudiandae sint et.</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	
<%@include file="shared/footer.jsp"%>