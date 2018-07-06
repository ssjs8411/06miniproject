<!-- 18.7.6 최지수 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<%@ page import = "dto.ShoppingMember" %>
<!DOCTYPE html>
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="sm" class="dto.ShoppingMember"/>
<jsp:setProperty name="sm" property="*"/>
<%
	shoppingListDao sldao = new shoppingListDao();
	sldao.deleteRequestApproval(sm.getShopping_member_no());
%>
<script>
	alert("등록요청 되었습니다");
	location.href='<%=request.getContextPath()%>/index.jsp'
</script>