<%@page import="com.RentLoGo.member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>렌터카 관리</title>
</head>
<body>
<h1>렌터카 관리</h1>

<table border=1 style="width:800px;align:center">
    <tr align=center bgcolor="#ffc224">
        <th>차량번호</th>
        <th>모델</th>
        <th>색상</th>
        <th>크기</th>
        <th>종류</th>
        <th>주행거리</th>
        <th>제조사</th>
    </tr>
<%--     <c:forEach var="rentCar" items="${list }">
 		<tr align=center>
        	<th>${member.memberId }</th>
        	<th>${member.memberPw }</th>
        	<th>${member.memberClass }</th>
	        <th>${member.memberName }</th>
	        <th>${member.memberBirth }</th>
	        <th>${member.memberPhone }</th>
	        <th>${member.memberEmail }</th>
	        <th>${member.memberDate }</th>
    	</tr>
     </c:forEach> --%>
</table>
</body>
</html>