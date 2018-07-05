<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingMemberDao" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
</head>
<body>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="sm" class="dto.ShoppingMember"/>
<jsp:setProperty name="sm" property="*"/>


<%


String style[] = request.getParameterValues("style");
System.out.println(style[0]);
System.out.println(style[1]);

shoppingMemberDao sMdao = new shoppingMemberDao();
int maxno = sMdao.maxCheck();
System.out.println(maxno);

sMdao.sMdaoInsert(sm);
sMdao.insertStyle(maxno, style[0], style[1]);


%>
</body>
</html>