<!-- 18.7.6 최지수 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<%@ page import = "dto.WishList" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	table, th, td{
		border : 1px solid #444444;
	}
</style>
</head>
<body>
	<h2>내 찜목록</h2>
		<table>
			<tr>
				<th>쇼핑몰 이름</th>
				<th>삭제</th>
			</tr>
<%
	request.setCharacterEncoding("euc-kr");
	shoppingListDao sldao = new shoppingListDao();
	ArrayList<WishList> alwl = sldao.seleteWishList((int)session.getAttribute("generalMemberNo"));
	
	for(int i=0; i<alwl.size(); i++){
		WishList w = alwl.get(i);
%>
			<tr>
				<td><a href="<%=w.getShopping_addr()%>"><%=w.getShopping_name() %></a></td>
				<td><a href="<%=request.getContextPath()%>/wishlist/deleteWishList.jsp?wishlist_no=<%=w.getWishlist_no()%>">삭제</a></td>
			</tr>
<%
	}
%>
		</table>
</body>
</html>