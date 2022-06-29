<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원정보수정</title>
<link rel="stylesheet" href="/resources/css/member.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<form id="modify_form" method="post">
			<div class="wrap">
				<div class="subjecet">
					<span>회원정보수정</span>
				</div>
				<div class="id_wrap">
					<div class="id_name">아이디</div>
					<div class="id_input_box">
						<input class="id_input" name="memberId">
					</div>
				</div>
				<div class="pw_wrap">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input class="pw_input" name="memberPw">
					</div>
				</div>
				<div class="pwck_wrap">
					<div class="pwck_name">비밀번호 확인</div>
					<div class="pwck_input_box">
						<input class="pwck_input" >
					</div>
				</div>
				<div class="user_wrap">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName">
					</div>
				</div>
				<div class="mail_wrap">
					<div class="mail_name">이메일</div>
					<div class="mail_input_box">
						<input class="mail_input" name="memberEmail">
					</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="modify_button_wrap">
					<input type="button" class="modify_button" value="수정하기">
				</div>
			</div>
		</form>
	</div>

<script>

$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".modify_button").click(function(){
		$("#modify_form").attr("action", "/member/modify");
		$("#modify_form").submit();
	});
});

</script>
</body>
</html>