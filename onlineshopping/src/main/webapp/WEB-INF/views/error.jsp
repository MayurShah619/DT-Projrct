<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- bootstrap core css -->
<link href="${css}/bootstrap.min.css" rel="stylesheet">

<!-- custom css -->
<link href="${css}/shopstyle.css" rel="stylesheet">

<title>Online Handicraft - ${title}</title>

</head>
<body>
<div class="bg" style="background-image: url('resources/images/background_gaming__website__by_fnkk-d758mbq.png')">
	<div class="wrapper">

		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
		<!-- Brand and Toggle get grouped for better display -->
		<div class="navbar-header">
		<a class="navbar-brand" href="${contextRoot}/home">Home</a>
		</div>
		</div>
		</nav>
		
		<div class="content">
		
		<div class="container">
		
		<div class="row">
		
		<div class="col-xs-12">
		
		<div class="jumbotron">
		
		<h1>${errorTitle}</h1>
		<hr/>
		
		<blockquote style="word-wrap:break-word">
		
		${errorDescription}
	
		
		</blockquote>
		
		</div>
		
		</div>
	
		</div>
	
		</div>
	
		</div>

		<%@include file="./shared/footer.jsp" %>
		
		</div>
		</div>
		</body>
		</html>