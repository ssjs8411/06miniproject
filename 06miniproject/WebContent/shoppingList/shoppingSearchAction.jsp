<!-- 18.7.4 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "shoppingList.shoppingListDao" %>
<%@ page import = "shoppingMember.ShoppingMember" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
		<style>
			table, th,td{
				border: 1px solid #444444;
			}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<th>���θ���</th>
				<th>���θ���ȭ��ȣ</th>
				<th>��Ÿ��</th>
			</tr>
		
<%
	request.setCharacterEncoding("euc-kr");
	shoppingListDao sldao = new shoppingListDao();
	String[] style = request.getParameterValues("style");
	
	if(style == null) {
		out.print("������ ��Ÿ���� �����ϴ�");
	}else if(style.length==1){
		
		ArrayList<ShoppingMember> alsm = sldao.selectShoppingStyle(style[0]);
		
		for(int i=0; i<alsm.size(); i++){
			ShoppingMember sm = alsm.get(i);
			
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[0] %></td>
			</tr>
<%			
		}

	}else if(style.length==2){
		
		ArrayList<ShoppingMember> alsm = sldao.selectShoppingStyle(style[0]);
		ArrayList<ShoppingMember> alsm1 = sldao.selectShoppingStyle1(style[1]);
		
		for(int i=0; i<alsm.size(); i++){
			ShoppingMember sm = alsm.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[0] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm1.size(); i++){
			ShoppingMember sm = alsm1.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[1] %></td>
			</tr>
<%
		}

	}else if(style.length==3){

		ArrayList<ShoppingMember> alsm = sldao.selectShoppingStyle(style[0]);
		ArrayList<ShoppingMember> alsm1 = sldao.selectShoppingStyle1(style[1]);
		ArrayList<ShoppingMember> alsm2 = sldao.selectShoppingStyle1(style[2]);
		
		for(int i=0; i<alsm.size(); i++){
			ShoppingMember sm = alsm.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[0] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm1.size(); i++){
			ShoppingMember sm = alsm1.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[1] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm2.size(); i++){
			ShoppingMember sm = alsm2.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[2] %></td>
			</tr>
<%			
		}
		
	}else if(style.length==4){

		ArrayList<ShoppingMember> alsm = sldao.selectShoppingStyle(style[0]);
		ArrayList<ShoppingMember> alsm1 = sldao.selectShoppingStyle1(style[1]);
		ArrayList<ShoppingMember> alsm2 = sldao.selectShoppingStyle1(style[2]);
		ArrayList<ShoppingMember> alsm3 = sldao.selectShoppingStyle1(style[3]);
		
		for(int i=0; i<alsm.size(); i++){
			ShoppingMember sm = alsm.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[0] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm1.size(); i++){
			ShoppingMember sm = alsm1.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[1] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm2.size(); i++){
			ShoppingMember sm = alsm2.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[2] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm3.size(); i++){
			ShoppingMember sm = alsm3.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[3] %></td>
			</tr>
<%			
		}
		
	}else if(style.length==5){

		ArrayList<ShoppingMember> alsm = sldao.selectShoppingStyle(style[0]);
		ArrayList<ShoppingMember> alsm1 = sldao.selectShoppingStyle1(style[1]);
		ArrayList<ShoppingMember> alsm2 = sldao.selectShoppingStyle1(style[2]);
		ArrayList<ShoppingMember> alsm3 = sldao.selectShoppingStyle1(style[3]);
		ArrayList<ShoppingMember> alsm4 = sldao.selectShoppingStyle1(style[4]);
		
		for(int i=0; i<alsm.size(); i++){
			ShoppingMember sm = alsm.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[0] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm1.size(); i++){
			ShoppingMember sm = alsm1.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[1] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm2.size(); i++){
			ShoppingMember sm = alsm2.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[2] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm3.size(); i++){
			ShoppingMember sm = alsm3.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[3] %></td>
			</tr>
<%			
		}
		for(int i=0; i<alsm4.size(); i++){
			ShoppingMember sm = alsm4.get(i);
%>			
			<tr>
				<td><a href="<%=sm.getShopping_addr()%>"><%= sm.getShopping_name() %></a></td>
				<td><%= sm.getShopping_member_phone() %></td>
				<td><%= style[4] %></td>
			</tr>
<%			
		}
	}
	

	
%>	
		</table>
	</body>
</html>