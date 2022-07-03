<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ�� ����</title>
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
					<span>ȸ������</span>
				</div>
				<div class="id_wrap">
					<div class="id_name">���̵�</div>
					<div class="id_input_box">
						<input class="id_input" name="memberId">
					</div>
				</div>
				<div class="pw_wrap">
					<div class="pw_name">��й�ȣ</div>
					<div class="pw_input_box">
						<input type="password" class="pw_input" name="memberPw">
					</div>
				</div>
				<div class="pwck_wrap">
					<div class="pwck_name">��й�ȣ Ȯ��</div>
					<div class="pwck_input_box">
						<input type="password" class="pwck_input">
					</div>
				</div>
				<div class="user_wrap">
					<div class="user_name">�̸�</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName">
					</div>
				</div>

				<div class="birthday">
					<div class="birthday_name">���� ����</div>
					
					<div class="info" id="info__birth">
						<select class="box" id="birth-year">
							<option disabled selected>��� ����</option>
						</select> <select class="box" id="birth-month">
							<option disabled selected>��</option>
						</select> <select class="box" id="birth-day">
							<option disabled selected>��</option>
						</select>
					</div>
				</div>


				<div class="mail_wrap">
					<div class="mail_name">�̸���</div>
					<div class="mail_input_box">
						<input class="mail_input" name="memberEmail">

					</div>
					<div class="mail_check_wrap">
						<div class="mail_check_input_box">
							<input class="mail_check_input">
						</div>
						<div class="mail_check_button">
							<span>������ȣ ����</span>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="join_button_wrap">
					<input type="submit" class="join_button" value="�����ϱ�">
				</div>
			</div>
		</form>
	</div>

	<script>
/* 		$(document).ready(function() {
			//ȸ������ ��ư(ȸ������ ��� �۵�)
			$(".join_button").click(function() {
				$("#join_form").attr("action", "/member/memberJoin");
				$("#join_form").submit();
			});
		}); */
		// '��� ����' ����Ʈ �ڽ� option ��� ���� ����
		const birthYearEl = document.querySelector('#birth-year')
		// option ��� ���� ���� Ȯ��
		isYearOptionExisted = false;
		birthYearEl.addEventListener('focus', function() {
			// year ��� �������� �ʾ��� �� (���� Ŭ�� ��)
			if (!isYearOptionExisted) {
				isYearOptionExisted = true
				for (var i = 1940; i <= 2022; i++) {
					// option element ����
					const YearOption = document.createElement('option')
					YearOption.setAttribute('value', i)
					YearOption.innerText = i
					// birthYearEl�� �ڽ� ��ҷ� �߰�
					this.appendChild(YearOption);
				}
			}
		});
		// Month, Day�� ������ ������� ����

		const birthMonths = document.querySelector('#birth-month')
		// option ��� ���� ���� Ȯ��
		isMonthsOptionExisted = false;
		birthMonths.addEventListener('focus', function() {
			// months ��� �������� �ʾ��� �� (���� Ŭ�� ��)
			if (!isMonthsOptionExisted) {
				isMonthsOptionExisted = true
				for (var i = 1; i <= 12; i++) {
					// option element ����
					const MonthsOption = document.createElement('option')
					MonthsOption.setAttribute('value', i)
					MonthsOption.innerText = i
					// birthMonths�� �ڽ� ��ҷ� �߰�
					this.appendChild(MonthsOption);
				}
			}
		});
		//-----
		const birthDays = document.querySelector('#birth-day')
		// option ��� ���� ���� Ȯ��
		isDaysOptionExisted = false;
		birthDays.addEventListener('focus', function() {
			// months ��� �������� �ʾ��� �� (���� Ŭ�� ��)
			if (!isDaysOptionExisted) {
				isDaysOptionExisted = true
				for (var i = 1; i <= 31; i++) {
					// option element ����
					const DaysOption = document.createElement('option')
					DaysOption.setAttribute('value', i)
					DaysOption.innerText = i
					// birthMonths�� �ڽ� ��ҷ� �߰�
					this.appendChild(DaysOption);
				}
			}
		});
	</script>


</body>
</html>