<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 2번 폼</title>
<link href="style02Form.css" rel="stylesheet" type="text/css">
</head>
<body>
<h2>개인 정보 조회</h2>
<form method="post" action="nwTest02Pro.jsp">
<fieldset>
<legend>로그인</legend>
<label>아이디 <input type="text" name="id"></label> <br>
<label>비밀번호 <input type="password" name="passwd"></label>
</fieldset>
<fieldset>
<legend>개인 정보</legend>
<label>이름 <input type="text" name="name"></label><br><br>
성별
남<input type="radio" name="gender"value="남" checked>
여<input type="radio" name="gender"value="여"> <br> <br>
취미
독서 <input type="checkbox" name="hobby" value="독서">
음악 감상 <input type="checkbox" name="hobby" value="음악 감상">
영화 감상 <input type="checkbox" name="hobby" value="영화 감상">
등산 <input type="checkbox" name="hobby" value="등산">
여행 <input type="checkbox" name="hobby" value="여행">
</fieldset>
<div>
<input type="submit" value="가입하기">
<input type="reset" value="다시작성">
</div>
</form>
</body>
</html>