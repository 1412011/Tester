<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/images/" var="imageResource" />

<div class="features">
	<h1>You know the saying, 'nothing good comes easy'? It's a lie.</h1>
	<div class="content">
		<div>
			<img src="${imageResource }download.svg">
			<h2>Order like a boss</h2>
			<p>Just use our site or download our app. Don't bother about a
				road to goodness, when you can get it on tap.</p>
		</div>
		<div>
			<img src="${imageResource }time.svg">
			<h2>Don't be patient</h2>
			<p>Because in less than an hour, your command will be fulfilled,
				and you'll be devouring the delicious goodness our chefs have sent
				you.</p>
		</div>
		<div>
			<img src="${imageResource }pointer.svg">
			<h2>Goodness isn't choosy about location</h2>
			<p>We'll deliver to you wherever you are. We have even delivered
				to a customer who was in the park and decided on an impromptu
				picnic. True story. Try it.</p>
		</div>
	</div>
</div>