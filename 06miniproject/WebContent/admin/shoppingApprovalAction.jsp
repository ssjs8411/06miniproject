<!-- 18.7.6 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");

	shoppingListDao sldao = new shoppingListDao();
	int Shopping_approval_no = Integer.parseInt(request.getParameter("Shopping_approval_no"));
	String Shopping_approval = request.getParameter("Shopping_approval");
	
	if(Shopping_approval.equals("��Ͽ�û")){
		
		sldao.updateApproval(Shopping_approval_no);
		
	}else{
		
		sldao.deleteApproval(Shopping_approval_no);
		
	}
%>
<script type="text/javascript">
	alert('���οϷ�Ǿ����ϴ�');
	location.href='<%= request.getContextPath()%>/admin/shoppingApproval.jsp';
</script>