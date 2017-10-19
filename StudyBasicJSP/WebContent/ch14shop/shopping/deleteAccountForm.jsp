<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../etc/color.jspf" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 계좌 삭제 폼</title>
<link href="../etc/style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
<%
	String buyer = (String)session.getAttribute("id");
	String accountList = request.getParameter("accountList");
	if(buyer == null) {
		response.sendRedirect("shopMain.jsp");
	} else {
%>
<h3><%=buyer %>님의 계좌 삭제할꺼지롱</h3>
<form method="post" action="deleteAccountPro.jsp">
<table align="center">
	<tr>
		<td width="80">결제 계좌</td>
		<td width="300"><%=accountList %></td>
		<input type="hidden" name="accountList" value="<%=accountList %>">
	</tr>
	<tr>
		<td width="80">비밀번호 확인</td>
		<td width="300">
			<input type="password" name="passwd">
		</td>
	</tr>
	<tr>
		<td colspan="2" width="300">
			<input type="submit" value="확인">
			<input type="button" value="취소"
				onclick="javascript:window.location='buyForm.jsp'">
		</td>
	</tr>
</table>
</form>
<%} %>
</body>
</html>