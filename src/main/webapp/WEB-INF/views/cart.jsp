 <%@include file="shared/header.jsp" %>

<div class="container-wrapper">
<div class="container">

<section>
<div class="jumbotron">
<div class="container">
<h3>Cart</h3>
<p>All the selected products in your shopping cart</p>
</div>
</div>
</section>

<div ng-app="myapp" ng-controller="productsController">

<div ng-init="getCart(${cartId})">
<br>
List of products purchased

{{20+10}}20+10

{{cartId}}
		<div> <a class="btn btn-danger pull-left" ng-click="clearCart()">
			  <span class="glyphicon glyphicon-remove-sign"> </span> Clear Cart </a>
		</div>
		
		<a href="<c:url value="/order/${cartId }"></c:url>" class="btn btn-success pull-right">
		<span class="glyphicon glyphicon-shopping-cart"></span> Check Out </a>
<table class="table table-hover">
<thead>
<tr>
<th>TITLE</th>
<th>QUANTITY</th>
<th>Price</th>
<th>TOTAL PRICE</th>
<th>Action</th>
</tr>
</thead>
<tbody>

<tr ng-repeat="cartItem in cart.cartItems">

<td> {{cartItem.product.productname}} </td>
<td> {{cartItem.quantity}} </td>
<td> {{cartItem.product.prize}} </td>
<td> {{cartItem.totalprice}} </td>

<td> <a href="#"class="label label-danger" ng-click="removeFromCart(cartItem.cartItemId)">
			<span class="glyphicon glyphicon-remove"></span> Remove</a> </td>
</tr>
</tbody>
</table>
GrandTotal Price {{calculateGrandTotal()}}
</div>
<c:url value="/product/productListAngular" var="url"></c:url>
<a href="${url }" class="btn btn-default"> Continue shopping</a>

</div>
</div>
</div>

<br><br>
<%@include file="shared/footer.jsp" %>