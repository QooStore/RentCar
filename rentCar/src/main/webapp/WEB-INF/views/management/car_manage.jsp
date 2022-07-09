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
<title>렌터카 관리</title>


<script src="/rentCar/resources/jQuery/jQuery3.6.js"></script>
<script src="/rentCar/resources/jQuery/jquery.validate.min.js"></script>
<script>

$(document).ready(function(){
	$('.delete_rentCar').click(function() {
		if(confirm("삭제 시, 복구할 수 없습니다. 삭제하시겠습니까?")==false){
			return false;
		}
	})
})
</script>

</head>
<body>

<h1>렌터카 관리</h1>

<div>검색아이콘<input type="search"/></div>

<table border=1 style="width:1200px; align:center" class="rentCar_list">
    <tr align=center bgcolor="#ffc224">
        <th>차량번호</th>
        <th>모델</th>
        <th>색상</th>
        <th>크기</th>
        <th>종류</th>
        <th>주행거리</th>
        <th>제조사</th>
        <th>가격</th>
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
	        <th><input type="button" value="수정" onclick="location='수정폼'"></th>
	        <th><input type="button" value="삭제" class=".delete_rentCar"></th>
    	</tr>
     </c:forEach>
</table>
</body>
</html>