<%@include file="shared/header.jsp" %>
<%@ page session="false" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Product Crud</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>

<h2>Product Page</h2>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>

<h1>
	Add a Product
</h1>

<c:url var="addAction" value="admin/product/add" ></c:url>

<form:form action="${addAction}" commandName="product" enctype="multipart/form-data">
<table>
	<c:if test="${!empty product.productname}">
	<tr>
		<td>
			<form:label path="productId">
				<spring:message text="ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="productId" readonly="true" size="8"  disabled="true" />
			<form:hidden path="productId" />
		</td> 
	</tr>
	</c:if>
	<tr>
		<td>
			<form:label path="productname">
				<spring:message text="Product Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="productname" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="category">
				<spring:message text="Category"/>
			</form:label>
		</td>
		<td>
			<form:input path="category" />
		</td>
	</tr>
	<tr>
		<td>
			<form:label path="brand">
				<spring:message text="Brand"/>
			</form:label>
		</td>
		<td>
			<form:input path="brand" />
		</td> 
		
	</tr>
		<tr>
		<td>
			<form:label path="productdescription">
				<spring:message text="Product Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="productdescription" />
		</td> 
	</tr>
		<tr>
		<td>
			<form:label path="scheem">
				<spring:message text="Scheem"/>
			</form:label>
		</td>
		<td>
			<form:input path="scheem" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="prize">
				<spring:message text="Prize"/>
			</form:label>
		</td>
		<td>
			<form:input path="prize" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="discount">
				<spring:message text="Discount"/>
			</form:label>
		</td>
		<td>
			<form:input path="discount" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="selling_price">
				<spring:message text="Selling Price"/>
			</form:label>
		</td>
		<td>
			<form:input path="selling_price" />
		</td> 
	</tr>
	
	<tr>
		<td>
			<form:label path="cost_price">
				<spring:message text="Cost Price"/>
			</form:label>
		</td>
		<td>
			<form:input path="cost_price" />
		</td> 
	</tr>
	
	
	<tr>
		<td>
			<form:label path="productImage">
				<spring:message text="Product Image"/>
			</form:label>
		</td>
	
		<td> <form:input type="file" path="productImage" id="productImage" />	</td> 
	</tr>
	
	<tr>
		<td colspan="2">
			<c:if test="${!empty product.productname}">
				<input type="submit"
					value="<spring:message text="Edit Product"/>" />
			</c:if>
			<c:if test="${empty product.productname}">
				<input type="submit"
					value="<spring:message text="Add Product"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>

<h3>Products List</h3>
<c:if test="${!empty listProducts}">
	<table class="tg">
	<tr>
		<th width="120">Product Image</th>
		<th width="80">Product ID</th>
		<th width="120">Product Name</th>
		<th width="120">Category</th>
		<th width="120">Brand</th>
		<th width="120">Product Description</th>
		<th width="120">Scheem</th>
		<th width="120">Prize</th>
		<th width="120">Discount</th>
		<th width="120">Selling Price</th>
		<th width="120">Cost Price</th>
				
		<th width="60">Info</th>
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	
	<c:forEach items="${listProducts}" var="product">
		<tr>
		
 <td> <img src="<c:url value="/resources/IMGS/${p.productID }.png"> </c:url>" alt="image" style="width:100%" align="middle"/></td>
			<td>${product.productId}</td>
			<td>${product.productname}</td>
			<td>${product.category}</td>
			<td>${product.brand}</td>
			<td>${product.productdescription}</td>
			<td>${product.scheem}</td>
			<td>${product.prize}</td>
			<td>${product.discount}</td>
			<td>${product.selling_price}</td>
			<td>${product.cost_price}</td>
			
			<%-- <c:url value="/resources/IMGS/${p.productID}.png" var="Src"> </c:url>
			<td> <img src="${Src}" /> ${product.productImage}</td> --%>
			<td><a href="getProductById/${product.productId}"><span class="glyphicon glyphicon-info-sign"></span></a>
	 		<td><a href="<c:url value='admin/edit/${product.productId}' />" ><span class="glyphicon glyphicon-edit"></span></a></td>
			<td><a href="<c:url value='admin/remove/${product.productId}' />" ><span class="glyphicon glyphicon-trash"></span></a></td>			
		</tr>
	</c:forEach>
	</table>
</c:if>
<%@include file="shared/footer.jsp" %>