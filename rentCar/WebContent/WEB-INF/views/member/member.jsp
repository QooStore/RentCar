<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>
	
<section>
    <h1>ȸ������ ������</h1>
  </section>
  
  <section>
    <form name="login" action="index.html" method="post">
      ���̵�<br>
      <input type="text" name="memberID" placeholder="���̵� �Է�" >
      <input type="button" name="member_IDcheck" value="���̵� Ȯ��">
      <br>
      ��й�ȣ<br> 
      <input type="password" name="memberPw1"><br>
      ��й�ȣ ��Ȯ��<br> 
      <input type="password" name="memberPw2">
      <input type="button" name="memberPw_check" value="��й�ȣ ��Ȯ��">
      <br><br>
      �̸�<br>  <input type="text" name="memberNAME" value=""> <br>
      �������<br> 
	<input type="text" name="memberBIRTH">
      <br><br>
      �̸���<br><input type="email" name="memberEMAIL" placeholder="email@gmail.com"><br><br>
      �޴���ȭ<br>  
      <input type="text" name="memberPHONE" placeholder="01011112222">
	<br><br>
	<br><br>
      <input type="submit" name="" value="����">
      
    </form>
  </section>
	
</body>
</html>