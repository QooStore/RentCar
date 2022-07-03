<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원 가입</title>
<!-- <link rel="stylesheet" href="/rentCar/resources/css/member.css"> -->
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<form action="<c:url value='/member/memberJoin.do'/>" id="join_form" method="post">
			<div class="wrap">
				<div class="subjecet">
					<span>회원가입</span>
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
						<input type="password" class="pw_input" name="memberPw">
					</div>
				</div>
				<div class="pwck_wrap">
					<div class="pwck_name">비밀번호 확인</div>
					<div class="pwck_input_box">
						<input type="password" class="pwck_input">
					</div>
				</div>
				<div class="user_wrap">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName">
					</div>
				</div>

				<div class="birthday">
					<div class="birthday_name">생년 월일</div>
					
					<div class="info" id="info__birth">
						<select class="box" id="birth-year">
							<option disabled selected>출생 연도</option>
						</select> <select class="box" id="birth-month">
							<option disabled selected>월</option>
						</select> <select class="box" id="birth-day">
							<option disabled selected>일</option>
						</select>
					</div>
				</div>


				<div class="mail_wrap">
					<div class="mail_name">이메일</div>
					<div class="mail_input_box">
						<input class="mail_input" name="memberEmail">

					</div>
					<div class="mail_check_wrap">
						<div class="mail_check_input_box">
							<input class="mail_check_input">
						</div>
						<div class="mail_check_button">
							<span>인증번호 전송</span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="join_button_wrap">
					<input type="submit" class="join_button" value="가입하기">
				</div>
			</div>
		</form>
	</div>

	<script>
/* 		$(document).ready(function() {
			//회원가입 버튼(회원가입 기능 작동)
			$(".join_button").click(function() {
				$("#join_form").attr("action", "/member/memberJoin");
				$("#join_form").submit();
			});
		}); */
		// '출생 연도' 셀렉트 박스 option 목록 동적 생성
		const birthYearEl = document.querySelector('#birth-year')
		// option 목록 생성 여부 확인
		isYearOptionExisted = false;
		birthYearEl.addEventListener('focus', function() {
			// year 목록 생성되지 않았을 때 (최초 클릭 시)
			if (!isYearOptionExisted) {
				isYearOptionExisted = true
				for (var i = 1940; i <= 2022; i++) {
					// option element 생성
					const YearOption = document.createElement('option')
					YearOption.setAttribute('value', i)
					YearOption.innerText = i
					// birthYearEl의 자식 요소로 추가
					this.appendChild(YearOption);
				}
			}
		});
		// Month, Day도 동일한 방식으로 구현

		const birthMonths = document.querySelector('#birth-month')
		// option 목록 생성 여부 확인
		isMonthsOptionExisted = false;
		birthMonths.addEventListener('focus', function() {
			// months 목록 생성되지 않았을 때 (최초 클릭 시)
			if (!isMonthsOptionExisted) {
				isMonthsOptionExisted = true
				for (var i = 1; i <= 12; i++) {
					// option element 생성
					const MonthsOption = document.createElement('option')
					MonthsOption.setAttribute('value', i)
					MonthsOption.innerText = i
					// birthMonths의 자식 요소로 추가
					this.appendChild(MonthsOption);
				}
			}
		});
		//-----
		const birthDays = document.querySelector('#birth-day')
		// option 목록 생성 여부 확인
		isDaysOptionExisted = false;
		birthDays.addEventListener('focus', function() {
			// months 목록 생성되지 않았을 때 (최초 클릭 시)
			if (!isDaysOptionExisted) {
				isDaysOptionExisted = true
				for (var i = 1; i <= 31; i++) {
					// option element 생성
					const DaysOption = document.createElement('option')
					DaysOption.setAttribute('value', i)
					DaysOption.innerText = i
					// birthMonths의 자식 요소로 추가
					this.appendChild(DaysOption);
				}
			}
		});
	</script>


</body>
</html>