<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/" var="resource" />
<spring:url value="/resources/images/" var="imageResource" />

<header class="header white fm-checkout-header">
	<nav class="nav-bar">
		<a class="nav-item nav-link logo-container" href="${home }"> <img
			style="height: 60px; width: 65px; cursor: pointer;"
			src="${imageResource }home.svg" alt="FreshMenu">
		</a>
		<ul class="nav navbar-nav pull-right">
			<li><a class="nav-link mobile-link " href="#">080-4042-4242</a>
			</li>
			<li class="toggle-modal-support"><a
				class="nav-item nav-link hover support-link fm-nav-item-hover"
				href="#">Support</a></li>
		</ul>
	</nav>
</header>