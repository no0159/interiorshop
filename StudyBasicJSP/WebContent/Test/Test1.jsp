<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이름 출력</title>
</head>
<body>
<%!
	String name = "허준원";

	public String getName() {
		return name;
	}
%>


<%
	String hobby = "음악 감상";
%>

저의 이름은 <%=getName() %> 이고 취미는 <%=hobby %> 입니다.
</body>
</html>