<!-- 18.7.4 최지수 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>쇼핑몰 검색</h1>
		<form action="<%=request.getContextPath()%>/shoppingList/shoppingSearchAction.jsp" method="post">
			<div>
				<input type="checkbox" name="style" value="빈티지">빈티지
				<input type="checkbox" name="style" value="캐주얼">캐주얼
				<input type="checkbox" name="style" value="심플">심플
				<input type="checkbox" name="style" value="오피스룩">오피스룩
				<input type="checkbox" name="style" value="유니크">유니크
			</div>
				<button type="submit">검색</button>
		</form>
	</body>
</html>