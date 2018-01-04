<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title" /></title>

    <tiles:insertAttribute name="boostrapmincss" />
    <link rel="stylesheet" href="resources/css/home.css">

    <!-- MetisMenu CSS -->
    <link href="resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


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
              

                <!-- Metis Menu Plugin JavaScript -->
                <script src="resources/vendor/metisMenu/metisMenu.min.js"></script>

                <!-- DataTables JavaScript -->
                <script src="resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
                <script src="resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
                <script src="resources/vendor/datatables-responsive/dataTables.responsive.js"></script>

                <!-- Custom Theme JavaScript -->
                <script src="resources/js/sb-admin-2.js"></script>

                <!-- Page-Level Demo Scripts - Tables - Use for reference -->
                <script>
                $(document).ready(function() {
                    $('#dataTables-example').DataTable({
                        responsive: true
                    });
                });
                </script>
</body>
</html>
