<!-- 18.6.29 ������ -->
<!-- ����ȭ�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<a href="<%=request.getContextPath()%>/insertChoice/insertChoice.jsp">ȸ������</a>
<a href="<%=request.getContextPath()%>/shoppingList/shoppingSearchForm.jsp">���θ��˻�</a>
<!-- �α����� -->
<form action="<%=request.getContextPath()%>/login/loginAction.jsp">
	<input type="text" name="loginId"> <br>
	<input type="password" name="loginPw"> <br>
	<input type="submit" value="�α���">
</form>