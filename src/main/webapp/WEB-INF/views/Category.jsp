<%@include file="shared/header.jsp" %>
<%@ page session="false" %>

<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="Hello">Home</a><span>|</span></li>
				<li>Category Crud</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->

<%@include file="shared/nav.jsp" %>

<h2>Category Page</h2>
	<style type="text/css">
		.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
		.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
		.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
		.tg .tg-4eph{background-color:#f9f9f9}
	</style>

<h1>
	Add a Category
</h1>

<c:url var="addAction2" value="admin/category/add" ></c:url>

<form:form action="${addAction2}" commandName="category" >
<table>
<%-- 	<c:if test="${!empty category.Catname}"> --%>
	<tr>
		<td>
			<form:label path="Catid">
				<spring:message text="Category ID"/>
			</form:label>
		</td>
		<td>
			<form:input path="Catid" readonly="true" size="8"  disabled="true" />
			<form:hidden path="Catid" />
		</td> 
	</tr>
<%-- 	</c:if> --%>
	<tr>
		<td>
			<form:label path="Catname">
				<spring:message text="Category Name"/>
			</form:label>
		</td>
		<td>
			<form:input path="Catname" />
		</td> 
	</tr>
	<tr>
		<td>
			<form:label path="description">
				<spring:message text="Description"/>
			</form:label>
		</td>
		<td>
			<form:input path="description" />
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:if test="${!empty category.Catname}">
				<input type="submit"
					value="<spring:message text="Edit Category"/>" />
			</c:if>
			<c:if test="${empty category.Catname}">
				<input type="submit"
					value="<spring:message text="Add Category"/>" />
			</c:if>
		</td>
	</tr>
</table>	
</form:form>
<br>

<h3>Category List</h3>
<c:if test="${!empty getAllCategory}">
	<table class="tg">
	<tr>
		<th width="80">Category ID</th>
		<th width="120">Category Name</th>
		<th width="120">Description</th>
				
		<th width="60">Edit</th>
		<th width="60">Delete</th>
	</tr>
	
	<c:forEach items="${getAllCategory}" var="category">
		<tr>
			<td>${category.Catid}</td>
			<td>${category.Catname}</td>
			<td>${category.Catdescription}</td>
						
			<%-- <td><a href="getBookByIsbn/${b.isbn}"><span class="glyphicon glyphicon-info-sign"></span></a> --%>
		
	 		<td><a href="<c:url value='admin/edit/${category.Catid}' />" ><span class="glyphicon glyphicon-edit"></span></a></td>
			<td><a href="<c:url value='admin/remove/${category.Catid}' />" ><span class="glyphicon glyphicon-trash"></span></a></td>			
		</tr>
	</c:forEach>
	</table>
</c:if>
<%@include file="shared/footer.jsp" %>