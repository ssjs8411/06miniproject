<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingMemberDao" %>
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

shoppingMemberDao sMdao = new shoppingMemberDao();
sMdao.sMdaoInsert(sm);

%>
</body>
</html>