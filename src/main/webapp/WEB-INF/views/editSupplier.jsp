<%@include file="shared/header.jsp" %>
<%@ page session="false" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Supplier Crud</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>
<h2>Supplier Page</h2>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>

<h1>
	Add a Supplier
</h1>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1>


            <p class="lead">Fill the below information to add a Supplier:</p>
        </div>


        <form:form action="${pageContext.request.contextPath}/admin/supplier/addSupplier"
                   method="post" commandName="supplier">
        
	 	 <form:hidden path="id" value="${supplier.id}" />

            <div class="form-group">
                <label for="name">Name</label>
                <form:errors path="name" cssStyle="color:#ff0000;" />
                <form:input path="name" id="name" class="form-Control" />
            </div>

            
            <div class="form-group">
                <label for="address">Address</label>
                <form:textarea path="address" id="address" class="form-Control" />
            </div>
            
            <div class="form-group">
                <label for="phoneNo">Phone No</label>
                <form:textarea path="phoneNo" id="phoneNo" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="email">email</label>
                <form:errors path="email" cssStyle="color:#ff0000;" />
                <form:input path="email" id="email" class="form-Control" />
            </div>
        <br/><br/>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/supplierInventory" />" class="btn btn-default">Cancel</a>

    </form:form>
<%@ include file="shared/footer.jsp" %>