<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<tiles:insertAttribute name="header"/>
<tiles:insertAttribute name="body"/>
<tiles:insertAttribute name="footer"/>

</body>
</html>