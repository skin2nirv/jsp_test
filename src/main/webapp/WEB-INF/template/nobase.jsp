<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>

<html>
	<head>
	    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" id="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0">
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
	</head>
	 
	<body>
		<div class="wrapper">
	    	<tiles:insertAttribute name="body" />
		    
		    <tiles:insertAttribute name="modal" />
	    </div>
	</body>
</html>