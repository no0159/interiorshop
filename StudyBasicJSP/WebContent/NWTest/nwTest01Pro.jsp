<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네트워크 테스트 1번 처리</title>
<link href="style01Pro.css" rel="stylesheet" type="text/css">
</head>
<body>
<h2>회원 가입 결과</h2>
<p>회원가입을 축하드립니다.</p>
<p>회원님의 정보를 알려드립니다.</p>
<%request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String passwd2 = request.getParameter("passwd2");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
%>
<table border=1>
	<tr height="50">
		<td width="150">아이디</td>
		<td width="350"><%=id %></td>
	</tr>
	<tr height="50">
		<td width="150">비밀번호</td>
		<td width="350"><%=passwd %></td>
	</tr>
	<tr height="50">
		<td width="150">이름</td>
		<td width="350"><%=name %></td>
	</tr>
	<tr height="50">
		<td width="150">이메일</td>
		<td width="350"><%=email %></td>
	</tr>
	<tr height="50">
		<td width="150">전화번호</td>
		<td width="350"><%=phone %></td>
	</tr>
	<tr height="50">
		<td width="150">주소</td>
		<td width="350"><%=address %></td>
	</tr>
		
</table>
</body>
</html>