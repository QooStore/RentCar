<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>
	
<section>
    <h1>회원가입 페이지</h1>
  </section>
  
  <section>
    <form name="login" action="index.html" method="post">
      아이디<br>
      <input type="text" name="memberID" placeholder="아이디 입력" >
      <input type="button" name="member_IDcheck" value="아이디 확인">
      <br>
      비밀번호<br> 
      <input type="password" name="memberPw1"><br>
      비밀번호 재확인<br> 
      <input type="password" name="memberPw2">
      <input type="button" name="memberPw_check" value="비밀번호 재확인">
      <br><br>
      이름<br>  <input type="text" name="memberNAME" value=""> <br>
      생년월일<br> 
	<input type="text" name="memberBIRTH">
      <br><br>
      이메일<br><input type="email" name="memberEMAIL" placeholder="email@gmail.com"><br><br>
      휴대전화<br>  
      <input type="text" name="memberPHONE" placeholder="01011112222">
	<br><br>
	<br><br>
      <input type="submit" name="" value="제출">
      
    </form>
  </section>
	
</body>
</html>