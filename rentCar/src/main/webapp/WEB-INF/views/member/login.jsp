<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>

</head>
<body>

	<div class="wrapper">
		<form action="/member/login.do"  method="post">
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
							<input class="pw_iput" name="memberPw">
						</div>
					</div>
					<div class="login_button_wrap">
						<input type="submit" class="login_button" value="로그인">
					</div>
				</div>


			</div>
		</form>
	</div>

</body>
</html>