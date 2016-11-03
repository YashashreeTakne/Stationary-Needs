<%@include file="shared/header.jsp" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Supplier List</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<%@include file="shared/nav.jsp" %>

<div ng-app="mysapp">
<div ng-controller="suppliersController" >

Search: <input type="text" ng-model="searchCondition1" placeholder="Search Supplier">

<h3>suppliers List</h3>
	<table class="tg">
	<thead>
	<tr>
		<th width="80">Supplier ID</th>
		<th width="120">Supplier Name</th>
		<th width="120">Address</th>
		<th width="120">Phone No.</th>
		<th width="120">E-mail</th>
		<security:authorize ifAnyGranted="ROLE_ADMIN">
		<th width="60">Edit</th>
		<th width="60">Delete</th>
		</security:authorize>
	</tr>
	</thead>
	<tbody>
		<tr ng-repeat="supplier in supplier1 | filter:searchCondition1">
		<tr>
			<td>{{supplier.id}}</td>
			<td>{{supplier.name}}</td>
			<td>{{supplier.address}}</td>
			<td>{{supplier.phoneNo}}</td>
			<td>{{supplier.email}}</td>
			
			<security:authorize ifAnyGranted="ROLE_ADMIN">
	 		<td><a href="admin/supplier/editSupplier/${supplier.id}>"  ><span class="glyphicon glyphicon-edit"></span></a></td>
			<td><a href="admin/supplier/deletSupplier/${supplier.id}>"  ><span class="glyphicon glyphicon-trash"></span></a></td>			
			</security:authorize>
		</tr>
	</tbody>
	</table>
	</div></div>
<%@include file="shared/footer.jsp" %>