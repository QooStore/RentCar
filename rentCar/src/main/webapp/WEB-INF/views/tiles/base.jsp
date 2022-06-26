<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	html, body {
		margin: 0;
		padding: 0;
		width: 100%;
		height: 100%;
	}
	
	.wrapper {
		display: flex;
		flex-direction: column;
 		align-items: center; 
		height: 100%;
	}
	.container {
		flex: 1
	}
	.footer {
		width: 1200px;
	}
</style>
</head>
<body>

<div class="wrapper">
	<header>
		<tiles:insertAttribute name="header"/>
	</header>
	<div class="container">
		<tiles:insertAttribute name="body"/>
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>

</body>
</html>