<%@ include file="shared/header.jsp" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Admin</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@ include file="shared/nav.jsp" %>

	<div class="container-wrapper">
	    <div class="container">
	        <div class="page-header">
	            <h1>Administrator page</h1>
	
	            <p class="lead">This is the administrator page!</p>
	        </div>
	        <c:if test="${pageContext.request.userPrincipal.name != null}">
	            <h2>
	                Welcome: ${pageContext.request.userPrincipal.name} |
	                <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
	            </h2>
	
	        </c:if>
	
	        <h3>
	            <a href="<c:url value="/admin/productInventory" /> ">Product Inventory</a>
	        </h3>
	        <p>Here you can view, check and modify the product inventory!</p>
	        
	         <br/><br/>

			 <h3>
	            <a href="<c:url value="/admin/supplierInventory" /> ">Supplier Inventory</a>
	        </h3>
	        <p>Here you can view, check and modify the Supplier inventory!</p>
	        
<!--         <h3> -->
<%--             <a href="<c:url value="/admin/customer" /> ">Customer Management</a> --%>
<!--         </h3> -->
	        
	</div></div>
<%@ include file="shared/footer.jsp" %>