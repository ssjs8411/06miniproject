<!-- 2018-07-05 김소희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingMemberDao" %>
<%@ page import = "dto.ShoppingMember" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<jsp:useBean id="sm" class="dto.ShoppingMember"/>
<jsp:setProperty name="sm" property="*"/>
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String shopping_member_id = request.getParameter("shopping_member_id");
	shoppingMemberDao sMdao = new shoppingMemberDao();
	sMdao.sMdaoDelete(shopping_member_id);
	
%>
</body>
</html>