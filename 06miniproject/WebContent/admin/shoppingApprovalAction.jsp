<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("euc-kr");
	int Shopping_approval_no = Integer.parseInt(request.getParameter("Shopping_approval_no"));
	String Shopping_approval = request.getParameter("Shopping_approval");
	
	if(Shopping_approval.equals("등록요청")){
		
	}else{
		
	}
%>
<script type="text/javascript">
	alert('승인완료되었습니다');
	location.href='<%= request.getContextPath()%>/admin/shoppingApproval.jsp';
</script>