<!-- 18.7.6 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=request.getContextPath()%>/shoppingMember/deleteRequestAction.jsp" method="post">
		<input type="hidden" name="shopping_member_no" value="<%=session.getAttribute("shoppingMemberNo")%>">
		<button type="submit">������û</button>
	</form>

</body>
</html>