<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 3번 폼</title>
<link href="style03Form.css" rel="stylesheet" type="text/css">
</head>
<body>
<form method="post" action="nwTest03Pro.jsp">
<h2 align="center">웹프로그래밍 개발자 지원서</h2>
<p>Java, JSP, Spring, Oracle, HTML5/CSS3, JavaScript에 대한 기술적 이해와 경험이 있는 분을 찾습니다.</p>
<hr>
<h2>개인 정보</h2>
이름 <label><input type="text" name="name"></label><br>
연락처 <label><input type="text" name="tel"></label><br>
<hr>
<h2>지원 분야</h2>
<label><input type="radio" name="job" value="JSP, Spring 개발자(백엔드 개발자)" checked>JSP, Spring 개발자(백엔드 개발자)</label><br>
<label><input type="radio" name="job" value="HTML5/CSS3, JAVAscript 개발자(프런트엔드 개발자)">HTML5/CSS3, JAVAscript 개발자(프런트엔드 개발자)</label><br>
<label><input type="radio" name="job" value="Oracle 서버 개발자(DB 서버 개발자)">Oracle 서버 개발자(DB 서버 개발자)</label>
<hr>
<h2>지원 동기</h2>
<textarea rows="5" cols="80" name="content">정말 열심히 노력해서 웹 프로그래머로 취업하고 싶습니다.</textarea>
<hr>
<input type="submit" value="접수하기">
<input type="reset" value="다시 쓰기">
</form>
</body>
</html>