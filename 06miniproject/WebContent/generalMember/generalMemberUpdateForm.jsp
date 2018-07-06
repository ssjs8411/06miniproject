<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding ="EUC-KR"%>
<%@ page import = "dao.Gdao" %>
<%@ page import = "dto.General" %>
<%@ page import = "dto.GeneralMemberStyle" %>
<%@ page import = "java.util.ArrayList" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String styleCheck = request.getParameter("styleCheck");

	int no = Integer.parseInt(request.getParameter("General_member_no"));
	
	Gdao dao = new Gdao();
	General g = dao.gSelectforUpdate(no);
	
	String dbid = g.getG_id();
	String dbpw = g.getG_pw();
	String dbname = g.getG_name();
	String dbemail = g.getG_email();
	int dbphone = g.getG_phone();
	String dbage = g.getG_age();
	
%>

<form action="<%= request.getContextPath() %>/generalMember/generalMemberUpdateActoin.jsp" method="post">
<table border="1">
<tr>
	<td>���̵�</td>
	<td><input type="text" name="g_id" size="20" value="<%= dbid %>" readonly></td>
<tr>
<tr>
	<td>��ȣ</td>
	<td><input type="text" name="g_pw" size="20" value="<%= dbpw %>"></td>
<tr>
<tr>
	<td>�̸�</td>
	<td><input type="text" name="g_name" size="20" value="<%= dbname %>"></td>
<tr>
<tr>
	<td>�̸���</td>
	<td><input type="text" name="g_email" size="20" value="<%= dbemail %>"></td>
<tr>
<tr>
	<td>��ȭ��ȣ</td>
	<td><input type="text" name="g_phone" size="20" value="<%= dbphone %>"> </td>
<tr>
<tr>
	<td>����
	<td><input type="checkbox" name="g_age" value="<%=dbage%>">10��
	<input type="checkbox" name="g_age" value="<%=dbage%>"/>20��
	<input type="checkbox" name="g_age" value="<%=dbage%>"/>30��
	<input type="checkbox" name="g_age" value="<%=dbage%>"/>40��
	<input type="checkbox" name="g_age" value="<%=dbage%>"/>50���̻�<br/></td>
<tr>
<tr>
	<td>��Ÿ��</td>
	<td>
	<%
	
	
	ArrayList<GeneralMemberStyle> ale = dao.selectStyleNo(no);
	
	for(int i=0; i<ale.size(); i++){
		GeneralMemberStyle ms = ale.get(i);
%>
		<%= ms.getG_member_style() %>
<%
	}
%>
		<a href="<%= request.getContextPath() %>/generalMember/generalMemberUpdateForm.jsp?styleCheck=bb">��Ÿ�ϼ���</a>
<%
		if(styleCheck != null){
%>
			<input type="checkbox" name="style" value="">
			<input type="checkbox" name="style" value="">
			<input type="checkbox" name="style" value="">
			<input type="checkbox" name="style" value="">
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

</html>