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
	<td><input type="radio" name="g_age" value="10��">10��
	<input type="radio" name="g_age" value="20��"/>20��
	<input type="radio" name="g_age" value="30��"/>30��
	<input type="radio" name="g_age" value="40��"/>40��
	<input type="radio" name="g_age" value="50���̻�"/>50���̻�<br/></td>
<tr>
<tr>
	<td>��Ÿ��</td>
	<td><input type="checkbox" name="g_style" value="��Ƽ��">��Ƽ��
	<input type="checkbox" name="g_style" value="����"/>����
	<input type="checkbox" name="g_style" value="����ũ"/>����ũ
	<input type="checkbox" name="g_style" value="���ǽ���"/>���ǽ���
	<input type="checkbox" name="g_style" value="ĳ�־�"/>ĳ�־�<br/></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="ȸ�����Թ�ư"></td>
</tr>
</table>
</form>
