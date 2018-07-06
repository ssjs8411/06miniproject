<!-- 2018-07-05 김소희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingMemberDao" %>
<%@ page import = "dto.ShoppingMemberStyle" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="sm" class="dto.ShoppingMember"/>
<jsp:setProperty name="sm" property="*"/>
</head>
<body>
<%

	shoppingMemberDao sMdao = new shoppingMemberDao();
	sMdao.sMdaoUpdate(sm);
	System.out.println("sm");
	int shopping_no = Integer.parseInt(request.getParameter("shopping_no"));
	
	String style[] = null;

	if(request.getParameter("style")!=null){
		
		style = request.getParameterValues("style");
		System.out.println(style[0] +"<-style[0]");
		System.out.println(style[1] +"<-style[1]");
		
		ArrayList<ShoppingMemberStyle> als = sMdao.selctStyleNo(shopping_no);
		
		for(int i=0; i<als.size(); i++){
			
			ShoppingMemberStyle sss = als.get(i);
			System.out.println(sss.getShopping_member_style_no());
			System.out.println(style[i]);
			sMdao.updateStyle(sss.getShopping_member_style_no(),style[i]);
		}
		
		
		
	}
	

%>
</body>
</html>