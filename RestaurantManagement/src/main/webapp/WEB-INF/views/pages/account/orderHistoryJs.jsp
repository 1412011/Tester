<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:url value="/" var="home" scope="application"></c:url>

<spring:url value="/resources/" var="resource" />

<spring:url value="/resources/js/jquery.dataTables.min.js" var="dataTableJs"></spring:url>
<spring:url value="/resources/js/orderHistory.js" var="orderHistoryJs"></spring:url>
<spring:url value="/resources/js/jquery-1.11.3.min.js" var="jqueryJs"></spring:url>

<script type="text/javascript" src="${jqueryJs }"></script>
<script type="text/javascript" src="${orderHistoryJs }"></script>
<script type="text/javascript" src="${dataTableJs }"></script>
