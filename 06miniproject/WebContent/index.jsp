<!-- 18.6.29 ������ -->
<!-- ����ȭ�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<%@ page import = "dto.ShoppingMember" %>
<!DOCTYPE html>
<a href="<%=request.getContextPath()%>/insertChoice/insertChoice.jsp">ȸ������</a>	
<a href="<%=request.getContextPath()%>/shoppingList/shoppingSearchForm.jsp">���θ��˻�</a>	<br>
<!-- �α����� -->
<%
	if(session.getAttribute("sessionId") == null){
%>
	<form action="<%=request.getContextPath()%>/login/loginAction.jsp">
		<input type="text" name="loginId"> <br>
		<input type="password" name="loginPw"> <br>
		<input type="submit" value="�α���">
	</form>
<%
	}else{
%>
		<%= session.getAttribute("sessionName") %>�� ȯ���մϴ�! <br>
		<a href="<%=request.getContextPath()%>/login/logout.jsp">�α׾ƿ�</a>
		
		
<%		
	

	if(session.getAttribute("shoppingMemberNo") != null){
		
		shoppingListDao sldao = new shoppingListDao();
		int shoppingMemberNo = (int)session.getAttribute("shoppingMemberNo");
		ShoppingMember sm = sldao.approvalList(shoppingMemberNo);
%>
			<a href="<%=request.getContextPath()%>/shoppingMember/shoppingMemberUpdateForm.jsp?shopping_member_no=<%=session.getAttribute("shoppingMemberNo")%>">ȸ������</a>
<%		
		
		if(sm.getShopping_approval() == null){
%>
			<a href="<%=request.getContextPath()%>/shoppingMember/shoppingRequestApprovalForm.jsp">���θ� ��Ͻ�û</a>
<%			
		}else{
%>
		<%=sm.getShopping_approval() %> �����Դϴ�.
<%		
			}
		}else{
%>
			<a href="<%=request.getContextPath()%>/generalMember/generalMemberUpdateForm.jsp?general_member_no=<%=session.getAttribute("generalMemberNo")%>">ȸ������</a>
			
<%
		}
	}
%>