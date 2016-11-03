<%@include file="shared/header.jsp" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Product List</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>
<div ng-app="app" ng-controller="myController">
<div ng-init="productList()">
		

<br><br><br>
<br><br><br>

20+30{{30+20}}

Search: <input type="text" ng-model="searchCondition" placeholder="Search Products">

<H1> All Products</H1>
	<!--  use JSTL tags -->
	<!--  iterate list of objects -->
	<!--  For each book b in books -->
	<p class="lead">Checkout all the awesome products available now!</p>

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
		<security:authorize ifAnyGranted="ROLE_ADMIN">
		<th width="120">Supplier</th>
		</security:authorize>
		<th width="60">Info</th>
		<security:authorize ifAnyGranted="ROLE_ADMIN">
			<th width="60">Edit</th>
			<th width="60">Delete</th>
		</security:authorize>
	</tr>	
	</thead>
								<!--  for Each product product in products -->
		<tbody>
		<tr ng-repeat="product in products | filter:searchCondition">
            
            <c:url value="/resources/IMGS/{{product.productId}}.png" var="src" />
           
            <td><a href="<c:url value="/product/viewProduct/{{product.productId}}" />"><img src="${src }" alt="image" style="width:100%"/></a></td>
            <td>{{product.productId}}</td>
			<td>{{product.productname}}</td>
			<td>{{product.category.Catname}}</td>
			<td>{{product.productdescription}}</td>
			<td>{{product.prize}}</td>
			<td>{{product.discount}}</td>
			<td>{{product.selling_price}}</td>
					<security:authorize ifAnyGranted="ROLE_ADMIN">
			<td>{{product.supplierId}}</td>
					</security:authorize>
            <td><a href="<c:url value="/product/viewProduct/{{product.productId}}" />"><span class="glyphicon glyphicon-info-sign"></span></a>
		<security:authorize ifAnyGranted="ROLE_ADMIN">
			<td><a href="admin/product/editProduct/${product.productId} >" ><span class="glyphicon glyphicon-edit"></span></a></td>
			<td><a href="admin/product/deleteProduct/${product.productId} >" ><span class="glyphicon glyphicon-trash"></span></a></td>			
		</security:authorize> 		
		</tr>  
		</tbody>
	</table>
</div></div>
<%@include file="shared/footer.jsp" %>	