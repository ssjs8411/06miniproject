<!-- 2018-07-05 ����� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingMemberDao" %>
<%@ page import = "dto.ShoppingMember" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	String send_id = request.getParameter("send_id");
	System.out.println(send_id + "<-send_id");
	
	shoppingMemberDao sMdao = new shoppingMemberDao();
	ShoppingMember sm = sMdao.sSelectforUpdate(send_id);
	
	String smid = sm.getShopping_member_id();
	String smpw = sm.getShopping_member_pw();
	String smname = sm.getShopping_member_name();
	String sname = sm.getShopping_name();
	int smphone = sm.getShopping_member_phone();
	String saddr = sm.getShopping_addr();	

%>
<h2>���θ� ȸ�� ����ȭ��</h2>
<form action="<%= request.getContextPath() %>/shoppingMember/shoppingMemberUpdateAction.jsp" method="post">
<table border="1">

<tr>
	<td>���̵�</td>
	<td><input type="text" name="shopping_member_id" size="20"  value="<%= smid %>" readonly></td>
<tr>
<tr>
	<td>��й�ȣ</td>
	<td><input type="text" name="shopping_member_pw" size="20" value="<%= smpw %>"></td>
<tr>
<tr>
	<td>������ �̸�</td>
	<td><input type="text" name="shopping_member_name" size="20" value="<%= smname %>"></td>
<tr>
<tr>
	<td>���θ� �̸�</td>
	<td><input type="text" name="shopping_name" size="20" value="<%= sname %>"></td>
<tr>
<tr>
	<td>������ ��ȭ��ȣ</td>
	<td><input type="text" name="shopping_member_phone" size="20" value="<%= smphone %>"></td>
<tr>
<tr>
	<td>���θ� URL</td>
	<td><input type="text" name="shopping_addr" size="20" value="<%= saddr %>"></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="ȸ������"></td>
</tr>
</table>
</form>
</body>
</html>