<%@page import="com.RentLoGo.rentCar.model.AllCarDTO"%>
<%@page import="com.RentLoGo.rentCar.model.CarDTO"%>
<%@page import="com.RentLoGo.rentCar.model.RentCarDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����ī ����</title>
</head>
<body>

<h1>����ī ����</h1>


<table border=1 style="width:800px; align:center">
    <tr align=center bgcolor="#ffc224">
        <th>������ȣ</th>
        <th>��</th>
        <th>����</th>
        <th>ũ��</th>
        <th>����</th>
        <th>����Ÿ�</th>
        <th>������</th>
        <th>����</th>
    </tr>
    
    <c:forEach var="allCar" items="${list }">
 		<tr align=center>
        	<th>${allCar.rentCarDTO.carNumber}</th>
        	<th>${allCar.carDTO.carModel }</th>
        	<th>${allCar.rentCarDTO.carColor }</th>
	        <th>${allCar.carDTO.carSize }</th>
	        <th>${allCar.carDTO.carType }</th>
	        <th>${allCar.rentCarDTO.carDistance }</th>
	        <th>${allCar.carDTO.carMade }</th>
	        <th>${allCar.carDTO.carPrice }</th>
    	</tr>
     </c:forEach>
</table>
</body>
</html>