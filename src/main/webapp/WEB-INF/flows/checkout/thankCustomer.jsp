<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/views/shared/header.jsp" %>
<%@ page isELIgnored="false" %>
<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Thank you for choosing Stationary Needs ..!!</h1>

                    <p>Your order will be shipped in three business days!</p>
                </div>
            </div>
        </section>
<br> <br>
        <section class="container">
            <p><a href="<spring:url value="/" />" class="btn btn-success">OK</a></p>
        </section>
<br><br>
<%@ include file="/WEB-INF/views/shared/footer.jsp" %>