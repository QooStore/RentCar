<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>header</title>
    <script src="https://kit.fontawesome.com/166dc8a7b4.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/rentCar/resources/css/header.css">
</head>
<body>
    <header>
        <div class="logo">
            <a href="#">RentLoGo</a>
        </div>
        <div>
            <a href="#">�ܱ� ����ī</a>
            <ul>
                <li><a href="#">�����ϱ�</a></li>
                <li><a href="#">�̿�ȳ�</a></li>
            </ul>
        </div>
        <div><a href="#">��������</a></div>
        <div><a href="#">������</a></div>
        <div class="list">
            <input type="checkbox" class="member_menu" id="member_menu" />
            <label for="member_menu" class="burger"><i class="fa-solid fa-bars"></i></label>
            <ul>
                <li><a href="#"><i class="fa-solid fa-plus headerIcons"></i>ȸ������</a></li>
                <li><a href="#"><i class="fa-solid fa-clipboard-user headerIcons"></i>�α���</a></li>
                <li><a href="#"><i class="fa-solid fa-align-right headerIcons"></i>��������</a></li>
                <li><a href="#"><i class="fa-solid fa-basket-shopping headerIcons"></i>��ٱ���</a></li>
            </ul>
        </div>
    </header>
</body>
</html>