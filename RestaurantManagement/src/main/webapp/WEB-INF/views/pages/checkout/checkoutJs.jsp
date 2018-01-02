<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/" var="resource" />

<spring:url value="/resources/js/jquery.simple-dtpicker.js" var="dtpickerJs"></spring:url>
<spring:url value="/resources/js/jquery-1.11.3.min.js" var="jqueryJs"></spring:url>
<spring:url value="/resources/js/checkout.js" var="checkoutJs"></spring:url>
<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs"></spring:url>

<script type="text/javascript" src="${jqueryJs }"></script>
<script type="text/javascript" src="${bootstrapJs }"></script>
<script type="text/javascript" src="${checkoutJs }"></script>
<script type="text/javascript" src="${dtpickerJs }"></script>

<script
	src="https://maps.googleapis.com/maps/api/js?libraries=places&callback=initMap&key=AIzaSyDUowBEKe-0TMfWn0vET_q8yyYdUTMAs1w"></script>
