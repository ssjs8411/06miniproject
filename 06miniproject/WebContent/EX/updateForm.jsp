<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC>
<%
	String styleCheck = request.getParameter("styleCheck");
%>
<form action="<%= request.getContextPath() %>/ex4.jsp" method="post">
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
	<td>��Ÿ��</td>
	<td>
<%
	ArrayList<GeneralMemberStyle> ale = exdao.selectStyleNo(���NO);
	
for(int i=0; i<ale.size(); i++){
		���style e = ale.get(i);
%>
		<%= e.get��Ÿ��() %>
<%
	}
%>
		<a href="<%= request.getContextPath() %>/ex3.jsp?styleCheck=bb">��Ÿ�ϼ���</a>
<%
		if(styleCheck != null){
%>
			<input type="checkbox" name="style" value="ex1">ex1
			<input type="checkbox" name="style" value="ex2">ex2
			<input type="checkbox" name="style" value="ex3">ex3
			<input type="checkbox" name="style" value="ex4">ex4
<%
		}
%>
	</td>
</tr>
<tr>
	<td colspan="4"><input type="submit" value="ȸ��������ư"></td>
</tr>
</table>
</form>