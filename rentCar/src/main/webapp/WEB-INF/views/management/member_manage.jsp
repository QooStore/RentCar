<%@page import="com.RentLoGo.member.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>ȸ�� ����</h1>
<%-- <%
    request.setCharacterEncoding("utf-8");
    String name_1 = request.getParameter("name");
    MemberDTO memberDTO = new MemberDTO();
    memberVO.setName(name_1);
    MemberDAO dao = new MemberDAO();
    List membersList = dao.listmembers(memberVO);
%> --%>
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
<%--     <%
        for(int i=0; i<membersList.size(); i++){
            MemberVO vo = (MemberVO) membersList.get(i);
            String id=vo.getId();
            String pwd = vo.getPwd();
            String name = vo.getName();
            String email = vo.getEmail();
            Date joinDate = vo.getJoinDate();
        
    %>
    
    <tr align="center">
        <td><%= id %></td>
        <td><%= pwd %></td>
        <td><%= name %></td>
        <td><%= email %></td>
        <td><%= joinDate %></td>
    </tr>
    <%    
        }
    %> --%>
</table>
</body>
</html>