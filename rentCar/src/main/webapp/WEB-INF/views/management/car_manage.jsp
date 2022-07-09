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


<script src="/rentCar/resources/jQuery/jQuery3.6.js"></script>
<script src="/rentCar/resources/jQuery/jquery.validate.min.js"></script>
<script>

$(document).ready(function(){
	$('.delete_rentCar').click(function() {
		if(confirm("���� ��, ������ �� �����ϴ�. �����Ͻðڽ��ϱ�?")==false){
			return false;
		}
	})
})
</script>

</head>
<body>

<h1>����ī ����</h1>

<div>�˻�������<input type="search"/></div>

<table border=1 style="width:1200px; align:center" class="rentCar_list">
    <tr align=center bgcolor="#ffc224">
        <th>������ȣ</th>
        <th>��</th>
        <th>����</th>
        <th>ũ��</th>
        <th>����</th>
        <th>����Ÿ�</th>
        <th>������</th>
        <th>����</th>
        <th></th>
        <th></th>
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
	        <th><input type="button" value="����" onclick="location='������'"></th>
	        <th><input type="button" value="����" class=".delete_rentCar"></th>
    	</tr>
     </c:forEach>
</table>
</body>
</html>