<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html>
<head>
<title><tiles:insertAttribute name="title" /></title>

<tiles:insertAttribute name="css" />
</head>

<body class="menu-page " id="checkout-body-container">
	<tiles:insertAttribute name="header" />

	<tiles:insertAttribute name="content" />

	<tiles:insertAttribute name="footer" />

	<tiles:insertAttribute name="js"></tiles:insertAttribute>
</body>
</html>