<!-- 18.6.29 최지수 -->
<!-- 메인화면 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<a href="<%=request.getContextPath()%>/insertChoice/insertChoice.jsp">회원가입</a>
<a href="<%=request.getContextPath()%>/shoppingList/shoppingSearchForm.jsp">쇼핑몰검색</a>
<!-- 로그인폼 -->
<form action="<%=request.getContextPath()%>/login/loginAction.jsp">
	<input type="text" name="loginId"> <br>
	<input type="password" name="loginPw"> <br>
	<input type="submit" value="로그인">
</form>