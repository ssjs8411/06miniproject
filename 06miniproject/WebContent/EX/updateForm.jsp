<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC>
<%
	String styleCheck = request.getParameter("styleCheck");
%>
<form action="<%= request.getContextPath() %>/ex4.jsp" method="post">
<table border="1">
<tr>
	<td>번호</td>
	<td><input type="text" name="g_no" size="20" ></td>
<tr>
<tr>
	<td>아이디</td>
	<td><input type="text" name="g_id" size="20" ></td>
<tr>
<tr>
	<td>암호</td>
	<td><input type="text" name="g_pw" size="20"></td>
<tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="g_name" size="20"></td>
<tr>
<tr>
	<td>이메일</td>
	<td><input type="text" name="g_email" size="20"></td>
<tr>
<tr>
	<td>전화번호</td>
	<td><input type="text" name="g_phone" size="20"></td>
<tr>
<tr>
	<td>나이
	<td><input type="checkbox" name="g_age" value="10대">10대
	<input type="checkbox" name="g_age" value="20대"/>20대
	<input type="checkbox" name="g_age" value="30대"/>30대
	<input type="checkbox" name="g_age" value="40대"/>40대
	<input type="checkbox" name="g_age" value="50대"/>50대이상<br/></td>
<tr>
<tr>
	<td>스타일</td>
	<td>
<%
	ArrayList<GeneralMemberStyle> ale = exdao.selectStyleNo(멤버NO);
	
for(int i=0; i<ale.size(); i++){
		멤버style e = ale.get(i);
%>
		<%= e.get스타일() %>
<%
	}
%>
		<a href="<%= request.getContextPath() %>/ex3.jsp?styleCheck=bb">스타일수정</a>
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
	<td colspan="4"><input type="submit" value="회원수정버튼"></td>
</tr>
</table>
</form>