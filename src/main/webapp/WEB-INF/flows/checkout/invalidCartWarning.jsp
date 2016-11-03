<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/shared/header.jsp" %>
<%@ page isELIgnored="false" %>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Invalid Cart!</h1>
                </div>
            </div>
        </section>
<br> <br>
        <section class="container">
            <p><a href="<spring:url value="/product/productListAngular" />" class="btn btn-success">Browse Products</a></p>
        </section>
<br> <br>
<%@ include file="/WEB-INF/views/shared/footer.jsp" %>