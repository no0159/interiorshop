<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404에러 페이지</title>
</head>
<body>
<% response.setStatus(HttpServletResponse.SC_OK); %>

요청하신 페이지는 누구페이지~
</body>
</html>