<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>


<form action="<%= request.getContextPath() %>/generalMember/generalMemberUpdateActoin.jsp" method="post">
<table border="1">
<tr>
	<td>��ȣ</td>
	<td><input type="text" name="g_no" size="20" ></td>
<tr>
<tr>
	<td>���̵�</td>
	<td><input type="text" name="g_id" size="20" ></td>
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
<tr>
	<td>����
	<td><input type="checkbox" name="g_age" value="10��">10��
	<input type="checkbox" name="g_age" value="20��"/>20��
	<input type="checkbox" name="g_age" value="30��"/>30��
	<input type="checkbox" name="g_age" value="40��"/>40��
	<input type="checkbox" name="g_age" value="50��"/>50���̻�<br/></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="ȸ��������ư"></td>
</tr>
</table>
</form>
</body>
</html>