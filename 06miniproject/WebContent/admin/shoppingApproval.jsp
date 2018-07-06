<!-- 18.7.6 최지수 -->
<!-- 쇼핑몰 승인화면 -->
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
		if(check.equals("등록")){
			approval = "등록요청";
		}else if(check.equals("삭제")){
			approval = "삭제요청";
		}
	}
%>
	<h2>쇼핑몰 승인요청 현황</h2>
	<form action="<%=request.getContextPath()%>/admin/shoppingApproval.jsp" method="post">
		<input type="hidden" name="check" value="등록">
		<button type="submit">등록요청리스트</button>
	</form>
	
	<form action="<%=request.getContextPath()%>/admin/shoppingApproval.jsp" method="post">
		<input type="hidden" name="check" value="삭제">
		<button type="submit">삭제요청리스트</button>
	</form>
		<table>
			<tr>
				<th>요청번호</th>
				<th>쇼핑몰번호</th>
				<th>요청상태</th>
				<th>승인</th>
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
						<button type="submit">승인</button>
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