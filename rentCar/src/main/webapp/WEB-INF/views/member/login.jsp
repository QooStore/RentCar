<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
<script src="/rentCar/resources/jQuery/jQuery3.6.js"></script>
<script src="/rentCar/resources/jQuery/jquery.validate.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="/rentCar/resources/css/member.css">
</head>
<body>

	
		<form id="login_form" action="${contextPath }/member/memberLogin.do" method="post"
			novalidate class="loginForm">
			<fieldset>
				<div class="wrap">
					<div class="logo_wrap">
						<span>Rent Car</span>
					</div>
					<div class="login_wrap">
						<div class="id_wrap">
							<div class="id_input_box">
								<input class="id_input" name="memberId">
							</div>
						</div>
						<div class="pw_wrap">
							<div class="pw_input_box">
								<input type="password" class="pw_iput" name="memberPw">
							</div>
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