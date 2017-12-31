<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title><tiles:getAsString name="title" /></title>
	<link href="<c:url value='/resources/css/home.css' />"  rel="stylesheet"></link>
</head>
 
<body class="menu-page" id="mainController">
		
			<tiles:insertAttribute name="header" />
		
			<tiles:insertAttribute name="body" />
		
			<tiles:insertAttribute name="footer" />
                        
		<!-- /.container-fluid -->
                <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
                <script src="resources/js/jquery-1.11.3.min.js"></script>
                <!-- Include all compiled plugins (below), or include individual files as needed -->
                <script src="resources/js/bootstrap.js"></script>
                <script src="resources/js/home.js"></script>
</body>
</html>