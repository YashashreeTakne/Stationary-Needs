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
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill the below information to add a product:</p>
        </div>


        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct"
                   method="post" commandName="product" enctype="multipart/form-data">
        
	 	 <form:hidden path="productId" value="${product.productId}" />

            <div class="form-group">
                <label for="productname">Name</label>
                <form:errors path="productname" cssStyle="color:#ff0000;" />
                <form:input path="productname" id="productname" class="form-Control" />
<!--             </div>            <div class="form-group"> -->
<!--                 <label for="brand">Brand</label> -->
<%--                 <form:textarea path="brand" id="brand" class="form-Control" /> --%>
<!--             </div> -->
            
            <div class="form-group">
                <label for="productdescription">Description</label>
                <form:textarea path="productdescription" id="productdescription" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="prize">Price</label>
                <form:errors path="prize" cssStyle="color:#ff0000;" />
                <form:input path="prize" id="prize" class="form-Control" />
            </div>

			<div class="form-group">
                <label for="discount">Discount</label>
                <form:errors path="discount" cssStyle="color:#ff0000;" />
                <form:input path="discount" id="discount" class="form-Control" />
            </div>
            
            <div class="form-group">
                <label for="selling_price">Selling Price</label>
                <form:errors path="selling_price" cssStyle="color:#ff0000;" />
                <form:input path="selling_price" id="selling_price" class="form-Control" />
            </div>
            
            <div class="form-group">
                <label for="supplierId">Supplier</label>
<%--                 <form:input path="supplierId" id="supplierId" class="form-Control" /> --%>
 			<form:select path="supplierId" cssClass="form-control">
				<form:options items="${suppliers}" class="form-Control" width="50%"/>
			</form:select>    
	       
	        </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Upload Picture</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Cancel</a>

    </form:form>
<%@ include file="shared/footer.jsp" %>