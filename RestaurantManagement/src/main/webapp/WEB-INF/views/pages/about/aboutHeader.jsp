<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/" var="resource" />
<spring:url value="/resources/images/" var="imageResource" />

<nav class="header">
	<div class="logo">
		<a href="${home }"> <img
			style="height: 60px; width: 65px; cursor: pointer;"
			src="${imageResource }home.svg" alt="FreshMenu">
		</a>
	</div>
	<ul>
		<li><a href="#" class="toggle-modal-support">Support</a></li>
	</ul>
</nav>