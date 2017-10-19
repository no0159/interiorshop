<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 3번 처리</title>
<link href="style03Pro.css" rel="stylesheet" type="text/css">
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
<%
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String job = request.getParameter("job");
	String content = request.getParameter("content");
%>
<h2>회원 가입 결과</h2>
<p>회원 가입을 축하드립니다.</p>
<p>회원님의 정보를 알려드립니다.</p>
<table border="1">
	<tr>
		<td width="150">이름</td>
		<td width="350"><%=name %></td>
	</tr>
	<tr>
		<td width="150">연락처</td>
		<td width="350"><%=tel %></td>
	</tr>
	<tr>
		<td width="150">지원 분야</td>
		<td width="350"><%=job%></td>
	</tr>
	<tr>
		<td width="150">지원 동기</td>
		<td width="350"><%=content %></td>
	</tr>
</table>
</body>
</html>