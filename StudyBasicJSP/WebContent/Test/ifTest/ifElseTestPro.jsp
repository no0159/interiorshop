<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름나이 처리</title>
</head>
<body>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	
	if(age >= 20) {
%>
<b><%=name %></b> 님의 나이는 20세 이상입니다.
<%}else { %>
<b><%=name %></b> 님의 나이는 미성년 입니다.
<%} %>
</body>
</html>