<!-- 06.29 이경선 05시 25분-->
<!-- 일반회원가입화면 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<form action="<%= request.getContextPath() %>/generalMember/generalMemberInsertAction.jsp" method="post">
<table border="1">
<tr>
	<td>아이디</td>
	<td><input type="text" name="g_id" size="20"></td>
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
	<td>나이</td>
	<td><input type="radio" name="g_age" value="10대">10대
	<input type="radio" name="g_age" value="20대"/>20대
	<input type="radio" name="g_age" value="30대"/>30대
	<input type="radio" name="g_age" value="40대"/>40대
	<input type="radio" name="g_age" value="50대이상"/>50대이상<br/></td>
<tr>
<tr>
	<td>스타일</td>
	<td><input type="checkbox" name="g_style" value="빈티지">빈티지
	<input type="checkbox" name="g_style" value="심플"/>심플
	<input type="checkbox" name="g_style" value="유니크"/>유니크
	<input type="checkbox" name="g_style" value="오피스룩"/>오피스룩
	<input type="checkbox" name="g_style" value="캐주얼"/>캐주얼<br/></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="회원가입버튼"></td>
</tr>
</table>
</form>
