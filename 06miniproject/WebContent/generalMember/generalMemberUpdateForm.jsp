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
	<td>아이디</td>
	<td><input type="text" name="g_id" size="20" value="<%= dbid %>" readonly></td>
<tr>
<tr>
	<td>암호</td>
	<td><input type="text" name="g_pw" size="20" value="<%= dbpw %>"></td>
<tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="g_name" size="20" value="<%= dbname %>"></td>
<tr>
<tr>
	<td>이메일</td>
	<td><input type="text" name="g_email" size="20" value="<%= dbemail %>"></td>
<tr>
<tr>
	<td>전화번호</td>
	<td><input type="text" name="g_phone" size="20" value="<%= dbphone %>"> </td>
<tr>
<tr>
	<td>나이
	<td><input type="checkbox" name="g_age" value="<%=dbage%>">10대
	<input type="checkbox" name="g_age" value="<%=dbage%>"/>20대
	<input type="checkbox" name="g_age" value="<%=dbage%>"/>30대
	<input type="checkbox" name="g_age" value="<%=dbage%>"/>40대
	<input type="checkbox" name="g_age" value="<%=dbage%>"/>50대이상<br/></td>
<tr>
<tr>
	<td>스타일</td>
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
		<a href="<%= request.getContextPath() %>/generalMember/generalMemberUpdateForm.jsp?styleCheck=bb">스타일수정</a>
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
	<td colspan="4"><input type="submit" value="회원수정버튼"></td>
</tr>
</table>
</form>

</html>