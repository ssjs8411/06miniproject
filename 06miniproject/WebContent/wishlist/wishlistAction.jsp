<!-- 18.7.6 ÃÖÁö¼ö -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");

	int general_member_no = (int)session.getAttribute("generalMemberNo");
	String general_member_name = (String)session.getAttribute("sessionName");
	String shopping_name = request.getParameter("shopping_name");
	String shopping_addr = request.getParameter("shopping_addr");

	shoppingListDao sldao = new shoppingListDao();
	sldao.insertWishList(general_member_no, general_member_name, shopping_name, shopping_addr);
	
	response.sendRedirect(request.getContextPath() + "/wishlist/wishList.jsp");
%>