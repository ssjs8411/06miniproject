<!-- 2018-06-29-����� -->
<!-- ���θ� ȸ������ �� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/shoppingMember/shoppingMemberInsertAction.jsp" method="post">
<table border="1">
<tr>
	<td>���̵�</td>
	<td><input type="text" name="sm_id" size="20"></td>
<tr>
<tr>
	<td>��й�ȣ</td>
	<td><input type="text" name="sm_pw" size="20"></td>
<tr>
<tr>
	<td>������ �̸�</td>
	<td><input type="text" name="sm_name" size="20"></td>
<tr>
<tr>
	<td>���θ� �̸�</td>
	<td><input type="text" name="s_name" size="20"></td>
<tr>
<tr>
	<td>���θ� ��Ÿ��</td>
	<td>
		<input type="checkbox" name="style" value="clothes">��Ƽ��<br>
		<input type="checkbox" name="style" value="clothes">ĳ���<br>
		<input type="checkbox" name="style" value="clothes">����ũ<br>
		<input type="checkbox" name="style" value="clothes">����<br>
		<input type="checkbox" name="style" value="clothes">���ǽ���<br>
	</td>
<tr>
<tr>
	<td>������ ��ȭ��ȣ</td>
	<td><input type="text" name="sm_phone" size="20"></td>
<tr>
<tr>
	<td>���θ� URL</td>
	<td><input type="text" name="sm_addr" size="20"></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="ȸ�����Թ�ư"></td>
</tr>
</table>
</form>
</body>
</html>