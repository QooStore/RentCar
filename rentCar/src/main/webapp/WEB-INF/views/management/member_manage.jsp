<%@page import="com.RentLoGo.member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
</head>
<body>
<h1>ȸ�� ����</h1>

<table border=1 style="width:800px;align:center">
    <tr align=center bgcolor="#ffc224">
        <th>���̵�</th>
        <th>��й�ȣ</th>
        <th>ȸ���з�</th>
        <th>�̸�</th>
        <th>�������</th>
        <th>��ȭ��ȣ</th>
        <th>�̸���</th>
        <th>��������</th>
    </tr>
    <c:forEach var="member" items="${list }">
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
     </c:forEach>
</table>
</body>
</html>