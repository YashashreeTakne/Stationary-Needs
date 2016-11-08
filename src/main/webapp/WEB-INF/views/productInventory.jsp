<%@include file="shared/header.jsp" %>
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Product Inventory Page</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
        <br><br><br><br><br>
        
            <h1>Product Inventory Page</h1>


            <p class="lead">This is the product inventory page:</p>

        <table class="table table-striped table-hover">
            <thead>
          <tr>
		<th width="120">Product Image</th>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Category</th>
		<th width="120">Product Description</th>
		<th width="120">Prize</th>
		<th width="120">Discount</th>
		<th width="120">Selling Price</th>
		<th width="120">Supplier</th>
				
		<th width="60">Info</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
             <td><img src="<c:url value="/resources/IMGS/${product.productId}.png" />" alt="image" style="width:100%"/></td>
            <td>${product.productId}</td>
			<td>${product.productname}</td>
			<td>${product.category.Catname}</td>
			<td>${product.productdescription}</td>
			<td>${product.prize}</td>
			<td>${product.discount}</td>
			<td>${product.selling_price}</td>
			<td>${product.supplierId}</td>
            <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a></td>
            <td><a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-pencil"></span></a></td>
            <td><a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-remove"></span></a></td>
            
                </tr>
            </c:forEach>
        </table>
<br><br>

        <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
<br>
<br><br>
<%@ include file="shared/footer.jsp" %>