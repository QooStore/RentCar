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
<h1>회원 관리</h1>
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
        <th>아이디</th>
        <th>비밀번호</th>
        <th>회원분류</th>
        <th>이름</th>
        <th>생년월일</th>
        <th>전화번호</th>
        <th>이메일</th>
        <th>가입일자</th>
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