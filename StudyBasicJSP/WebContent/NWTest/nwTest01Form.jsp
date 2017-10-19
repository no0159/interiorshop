<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 1번 폼</title>
<link href="style01Form.css" rel="stylesheet" type="text/css">
</head>
<body>
<form method="post" action="nwTest01Pro.jsp">
<h2>회원 가입</h2>
<fieldset>
<legend>로그인</legend>
<label>아이디  <input type="text" name="id"></label><br>
<label>비밀번호 <input type="password" name="passwd"></label><br>
<label>비밀번호 확인 <input type="password" name="passwd2"></label>
</fieldset>
<fieldset>
<legend>개인 정보</legend>
<label>이름 <input type="text" name="name"></label><br>
<label>메일 <input type="text" name="email"></label><br>
<label>전화번호 <input type="text" name="phone"></label><br>
<label>주소 <input type="text" name="address"></label>
</fieldset>
<div>
<input type="submit" value="가입하기">
<input type="reset" value="다시 작성">
</div>
</form>
</body>
</html>