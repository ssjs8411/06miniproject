<!-- 18.6.29 ������ -->
<!-- ����ȭ�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
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
	}
%>