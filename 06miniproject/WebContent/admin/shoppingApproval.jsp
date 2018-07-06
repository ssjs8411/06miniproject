<!-- 18.7.6 ������ -->
<!-- ���θ� ����ȭ�� -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.ShoppingMember" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	table, th, td{
		border : 1px solid #444444;
	}
	button{
		background-color: #ffffff;
	}
	form{
		display: inline-block;
	}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("euc-kr");
	String check = request.getParameter("check");
	String approval = null;
	
	if(check != null){
		if(check.equals("���")){
			approval = "��Ͽ�û";
		}else if(check.equals("����")){
			approval = "������û";
		}
	}
%>
	<h2>���θ� ���ο�û ��Ȳ</h2>
	<form action="<%=request.getContextPath()%>/admin/shoppingApproval.jsp" method="post">
		<input type="hidden" name="check" value="���">
		<button type="submit">��Ͽ�û����Ʈ</button>
	</form>
	
	<form action="<%=request.getContextPath()%>/admin/shoppingApproval.jsp" method="post">
		<input type="hidden" name="check" value="����">
		<button type="submit">������û����Ʈ</button>
	</form>
		<table>
			<tr>
				<th>��û��ȣ</th>
				<th>���θ���ȣ</th>
				<th>��û����</th>
				<th>����</th>
			</tr>
<%
	
	if(approval != null){
	
		shoppingListDao sldao = new shoppingListDao();
		ArrayList<ShoppingMember> alsm = sldao.requestShoppingList(approval);
		
		for(int i=0; i<alsm.size(); i++){
			ShoppingMember sm = alsm.get(i);
%>
			<tr>
				<td><%=sm.getShopping_approval_no() %></td>
				<td><%=sm.getShopping_member_no() %></td>
				<td><%=sm.getShopping_approval() %></td>
				<td>
					<form action="<%=request.getContextPath()%>/admin/shoppingApprovalAction.jsp" method="post">
						<input type="hidden" name="Shopping_approval_no" value="<%=sm.getShopping_approval_no()%>">
						<input type="hidden" name="Shopping_approval" value="<%=sm.getShopping_approval() %>">
						<button type="submit">����</button>
					</form>
				</td>
			</tr>
<%		
		}
	}
%>
		</table>
</body>
</html>