<%@ include file="shared/header.jsp" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Add supplier</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@ include file="shared/nav.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Supplier</h1>


            <p class="lead">Fill the below information to add a Supplier:</p>
        </div>
 <form:form action="${pageContext.request.contextPath}/admin/supplier/addSupplier"
                   method="post" commandName="supplier">
                   	
              <c:if test="${!empty supplier.name}">
              
              <div class="form-group">
                <label for="id">Supplier Id</label>
                <form:errors path="id" cssStyle="color:#ff0000;" />
                <form:input path="id" id="id" class="form-Control" />
            </div>
            </c:if>
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