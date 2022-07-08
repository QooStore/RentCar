<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
<script src="/rentCar/resources/jQuery/jQuery3.6.js"></script>
<link rel="stylesheet" href="/rentCar/resources/css/member.css">
<style>
	#login_form {
		text-align: center;
	}
</style>
</head>
<body>

		<form id="login_form" action="${contextPath }/member/memberLogin.do" method="post" class="loginForm">
			<fieldset>
			<legend><span>Rent Car</span></legend>
				<div class="wrap">
					<div class="login_wrap">
							<div class="id_input_box">
								<input class="id_input" name="memberId" placeholder="ID">
							</div>
						<div class="pw_wrap">
								<input type="password" class="pw_iput" name="memberPw" placeholder="Password">
						</div>
						<c:if test="${result == 0 }">
							<div class="login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
						</c:if>
						<div>
							<input class="login_button" type="submit" value="로그인">
						</div>
					</div>
				</div>
			</fieldset>
		</form>
		
</body>
</html>