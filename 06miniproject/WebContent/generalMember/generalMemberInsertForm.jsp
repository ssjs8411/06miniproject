<!-- 06.29 �̰漱 05�� 25��-->
<!-- �Ϲ�ȸ������ȭ�� -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<form action="<%= request.getContextPath() %>/generalMember/generalMemberInsertAction.jsp" method="post">
<table border="1">
<tr>
	<td>���̵�</td>
	<td><input type="text" name="g_id" size="20"></td>
<tr>
<tr>
	<td>��ȣ</td>
	<td><input type="text" name="g_pw" size="20"></td>
<tr>
<tr>
	<td>�̸�</td>
	<td><input type="text" name="g_name" size="20"></td>
<tr>
<tr>
	<td>�̸���</td>
	<td><input type="text" name="g_email" size="20"></td>
<tr>
<tr>
	<td>��ȭ��ȣ</td>
	<td><input type="text" name="g_phone" size="20"></td>
<tr>
	<td>����</td>
	<td><input type="checkbox" name="g_age">10��
	<input type="checkbox" name="g_age" />20��
	<input type="checkbox" name="g_age"/>30��
	<input type="checkbox" name="g_age"/>40��
	<input type="checkbox" name="g_age"/>50���̻�<br/></td>
<tr>
<tr>
	<td>��Ÿ��</td>
	<td><input type="checkbox" name="g_style">��Ƽ��
	<input type="checkbox" name="g_style" />����
	<input type="checkbox" name="g_style"/>����ũ
	<input type="checkbox" name="g_style"/>���ǽ���
	<input type="checkbox" name="g_style"/>ĳ�־�<br/></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="ȸ�����Թ�ư"></td>
</tr>
</table>
</form>
