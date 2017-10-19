<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch14.bookshop.master.ShopBookDBBean" %>
<%@ page import="ch14.bookshop.master.ShopBookDataBean" %>
<%@ page import="java.text.NumberFormat" %>
<%@ include file="../etc/color.jspf" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>책 상세내용</title>
<link href="../etc/styles.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="<%=bodyback_c%>">
<%
	String book_kind = request.getParameter("book_kind");
	String book_id = request.getParameter("book_id");
	String id = "";
	int buy_price = 0;
	try {
		if(session.getAttribute("id")==null) {
			id="not";
		} else {
			id = (String)session.getAttribute("id");
		}
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	ShopBookDataBean bookList = null;
	String book_kindName = "";
	
	ShopBookDBBean bookProcess = ShopBookDBBean.getInstance();
	
	bookList = bookProcess.getBook(Integer.parseInt(book_id));
	
	if(book_kind.equals("100")) {
		book_kindName="문학";
	} else if(book_kind.equals("200")) {
		book_kindName="외국어";
	} else if(book_kind.equals("300")) {
		book_kindName="컴퓨터";
	} else if(book_kind.equals("400")) {
		book_kindName="요리";
	} else if(book_kind.equals("500")) {
		book_kindName="여행";
	}
%>
<form name="inform" method="post" action="cartInsert.jsp">
<table align="center">
	<tr height="30">
		<td rowspan="6" width="150">
			<img src="../../imageFile/<%=bookList.getBook_image() %>"
				border="0" width="150" height="200"></td>
		<td width="500"><font size="+1">
		<b><%=bookList.getBook_title() %></b></font></td>
	</tr>
	<tr> <td width="500">저자 : <%=bookList.getAuthor() %> </td> </tr>
	<tr> <td width="500">출판사 : <%=bookList.getPublishing_com() %> </td> </tr>
	<tr> <td width="500">출판일 : <%=bookList.getPublishing_date() %></td> </tr>
	<tr> <td width="500">정가 : <%=NumberFormat.getInstance().format(bookList.getBook_price()) %>원<br>
		<%buy_price = (int)(bookList.getBook_price()*((double)(100-bookList.getDiscount_rate())/100)) ;%>
		판매가 : <b> <font color="red" size="+1"><%=NumberFormat.getInstance().format((int)(buy_price)) %>원</font></b></td>
	<tr> <td width="500">수량 : <input type="text" size="5" name="buy_count" value="1">개
	<%
		if(id.equals("not")) {
			if(bookList.getBook_count()==0) {
	%>
		<b>일시 품절</b>
	<% }else {%>
			<b><font color="red">로그인 하시면 구매 가능합니다.</font></b>
	<%		}
		}else {
			if(bookList.getBook_count()==0) {
	%>
		<b>일시품절</b>
		
	<% }else{ %>
		<input type="hidden" name="book_id" value="<%=book_id %>">
		<input type="hidden" name="book_image" value="<%=bookList.getBook_image() %>">
		<input type="hidden" name="book_title" value="<%=bookList.getBook_title() %>">
		<input type="hidden" name="buy_price" value="<%=buy_price %>">
		<input type="hidden" name="book_kind" value="<%=book_kind %>">
		<input type="submit" value="장바구니에 담기">
	<%}} %>
		<input type="button" value="목록으로" onclick="javascript:window.location='list.jsp?book_kind=<%=book_kind %>'">
		<input type="button" value="메인으로" onclick="javascript:window.location='shopMain.jsp'">
		</td>
	</tr>
	<tr class="content">
		<td colspan="2" align="left" width="500">
			<br><font size="2em"><%=bookList.getBook_content() %></font></td>
	</tr>
</table>
</form>
</body>
</html>