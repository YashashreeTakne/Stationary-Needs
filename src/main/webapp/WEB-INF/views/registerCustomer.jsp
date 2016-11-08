<%@ include file="shared/header.jsp" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Register / Sign Up </li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<br><br><br><br>

			<h2>Create an account</h2>
			<br><br>
					
			<form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">
        
         <h3>Basic Info:</h3><br><br>
           	<label for="customerName">Name</label>
            <form:errors path="customerName" cssStyle="color: #ff0000" />
            <form:input placeholder="Name" path="customerName" id="name" type="text" class="form-Control" />

			<label for="customerEmail">Email</label>
            <span style="color: #ff0000">${emailMsg}</span>
            <form:errors path="customerEmail" cssStyle="color:#ff0000"/>
            <form:input path="customerEmail" placeholder="Email" id="email" type="text" class="form-Control" />

			<label for="customerPhone">Phone</label>
			<span style="color: #ff0000">${PhoneMsg}</span>
            <form:errors path="customerPhone" cssStyle="color:#ff0000"/>
            <form:input path="customerPhone" placeholder="Phone No." id="customerPhone" type="text" class="form-Control" />

			<label for="users.username">Username</label>
            <span style="color: #ff0000">${usernameMsg}</span>
            <form:errors path="users.username" cssStyle="color: #ff0000" />
            <form:input path="users.username" placeholder="Username" id="users.username" type="text" class="form-Control" />
       
       		<label for="users.password">Password</label>
       		<span style="color: #ff0000">${passwordMsg}</span>
            <form:errors path="users.password" cssStyle="color: #ff0000" />
            <form:input path="users.password" placeholder="Password" id="users.password" type="password" class="form-Control" />
        <br/>
<br><br>
		 <h3>Billing Address:</h3>
<br><br>
        <div class="form-group">
            <label for="billingStreet">Street Name</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Apartment Number</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCity">City</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingState">State</label>
            <form:input path="billingAddress.state" id="billingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingCountry">Country</label>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingZip">Zipcode</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control" />
        </div>

        <br/>
<br><br>
        <h3>Shipping Address:</h3>
<br><br>
        <div class="form-group">
            <label for="shippingStreet">Street Name</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Apartment Number</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCity">City</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingState">State</label>
            <form:input path="shippingAddress.state" id="shippingState" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingCountry">Country</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingZip">Zipcode</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control" />
        </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-success">
        <a href="<c:url value="/" />" class="btn btn-danger">Cancel</a>

        
        </form:form>
        
        <br><br><br><br><br><br><br>
<%@ include file="shared/footer.jsp" %>