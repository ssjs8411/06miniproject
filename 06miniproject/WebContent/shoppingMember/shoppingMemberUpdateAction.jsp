<!-- 2018-07-05 김소희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingMemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<jsp:useBean id="sm" class="dto.ShoppingMember"/>
<jsp:setProperty name="sm" property="*"/>
<% request.setCharacterEncoding("euc-kr"); %>
</head>
<body>
<%

	String shopping_member_id = request.getParameter("shopping_member_id");
	String shopping_member_pw = request.getParameter("shopping_member_pw");
	String shopping_member_name = request.getParameter("shopping_member_name");
	String shopping_name = request.getParameter("shopping_name");
	int shopping_member_phone = Integer.parseInt(request.getParameter("shopping_member_phone"));
	String shopping_addr = request.getParameter("shopping_addr");
	
	
	shoppingMemberDao sMdao = new shoppingMemberDao();
	sMdao.sMdaoUpdate(sm);
%>
</body>
</html>