<!-- 18.6.29 최지수 -->
<!-- 메인화면 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<%@ page import = "dto.ShoppingMember" %>
<!DOCTYPE html>
<a href="<%=request.getContextPath()%>/insertChoice/insertChoice.jsp">회원가입</a>	
<a href="<%=request.getContextPath()%>/shoppingList/shoppingSearchForm.jsp">쇼핑몰검색</a>	<br>
<!-- 로그인폼 -->
<%
	if(session.getAttribute("sessionId") == null){
%>
	<form action="<%=request.getContextPath()%>/login/loginAction.jsp">
		<input type="text" name="loginId"> <br>
		<input type="password" name="loginPw"> <br>
		<input type="submit" value="로그인">
	</form>
<%
	}else{
%>
		<%= session.getAttribute("sessionName") %>님 환영합니다! <br>
		<a href="<%=request.getContextPath()%>/login/logout.jsp">로그아웃</a>
		
		
<%		
	

	if(session.getAttribute("shoppingMemberNo") != null){
		
		shoppingListDao sldao = new shoppingListDao();
		int shoppingMemberNo = (int)session.getAttribute("shoppingMemberNo");
		ShoppingMember sm = sldao.approvalList(shoppingMemberNo);
%>
			<a href="<%=request.getContextPath()%>/shoppingMember/shoppingMemberUpdateForm.jsp?shopping_member_no=<%=session.getAttribute("shoppingMemberNo")%>">회원수정</a>
<%		
		
		if(sm.getShopping_approval() == null){
%>
			<a href="<%=request.getContextPath()%>/shoppingMember/shoppingRequestApprovalForm.jsp">쇼핑몰 등록신청</a>
<%			
		}else{
%>
		<%=sm.getShopping_approval() %> 상태입니다.
<%		
			}
		}else{
%>
			<a href="<%=request.getContextPath()%>/generalMember/generalMemberUpdateForm.jsp?general_member_no=<%=session.getAttribute("generalMemberNo")%>">회원수정</a>
			
<%
		}
	}
%>