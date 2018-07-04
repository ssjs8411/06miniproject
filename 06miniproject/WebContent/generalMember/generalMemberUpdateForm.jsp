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
	<td colspan="4"><input type="submit" value="회원수정버튼"></td>
</tr>
</table>
</form>
</body>
</html>