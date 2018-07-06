<!-- 2018-07-05 김소희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingMemberDao" %>
<%@ page import = "dto.ShoppingMember" %>
<%@ page import = "dto.ShoppingMemberStyle" %>
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
	int shopping_member_no = Integer.parseInt(request.getParameter("shopping_member_no"));
	System.out.println("shopping_member_no");
	
	shoppingMemberDao sMdao = new shoppingMemberDao();
	int s = sMdao.styleDelete(shopping_member_no);
	if(s==1){
		sMdao.sMdaoDelete(shopping_member_no);
	}

%>
</body>
</html>