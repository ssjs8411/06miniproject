<!-- 18.7.4 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>���θ� �˻�</h1>
		<form action="<%=request.getContextPath()%>/shoppingList/shoppingSearchAction.jsp" method="post">
			<div>
				<input type="checkbox" name="style" value="��Ƽ��">��Ƽ��
				<input type="checkbox" name="style" value="ĳ�־�">ĳ�־�
				<input type="checkbox" name="style" value="����">����
				<input type="checkbox" name="style" value="���ǽ���">���ǽ���
				<input type="checkbox" name="style" value="����ũ">����ũ
			</div>
				<button type="submit">�˻�</button>
		</form>
	</body>
</html>