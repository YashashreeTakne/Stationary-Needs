<%@include file="shared/header.jsp" %>
<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Supplier Inventory Page</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Supplier Inventory Page</h1>

            <p class="lead">This is the Supplier inventory page:</p>
<div ng-app="myssapp" ng-controller="mysController">
<div ng-init="getAllSupplier()">

20+30{{30+20}}

Search: <input type="text" ng-model="searchCondition2" placeholder="Search Supplier">

<table class="table table-striped table-hover">
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
		<tr ng-repeat="supplier in suppliers | filter:searchCondition2">
           
			<td>{{supplier.id}}</td>
			<td>{{supplier.name}}</td>
			<td>{{supplier.address}}</td>
			<td>{{supplier.phoneNo}}</td>
			<td>{{supplier.email}}</td>
			
			<security:authorize ifAnyGranted="ROLE_ADMIN">
	 		<td><a href="admin/supplier/editSupplier/{{supplier.id}}>"  ><span class="glyphicon glyphicon-edit"></span></a></td>
			<td><a href="admin/supplier/deletSupplier/{{supplier.id}}>"  ><span class="glyphicon glyphicon-trash"></span></a></td>			
			</security:authorize>
		</tr>
	</tbody>
	</table>
	
	</div></div>
		<a href="<spring:url value="/admin/supplier/addSupplier" />" class="btn btn-primary">Add Supplier</a>
		<%@include file="shared/footer.jsp" %>