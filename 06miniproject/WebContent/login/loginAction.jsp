<!-- 18.7.4 ������ -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.LoginDao" %>
<%@ page import = "dto.TotalMember" %>
<!DOCTYPE html>
<%
	String loginId = request.getParameter("loginId");
	String loginPw = request.getParameter("loginPw");
	
	LoginDao ldao = new LoginDao();
	String loginCheck = ldao.loginCheck(loginId, loginPw);
	
	
	if(loginCheck.equals("�α��μ���")){
		
		TotalMember t = ldao.loginsessionCheck(loginId);
		if(loginId.equals(t.getGeneral_member_id())){
			session.setAttribute("sessionId", t.getGeneral_member_id());
			session.setAttribute("sessionName", t.getGeneral_member_name());
%>
			<script type="text/javascript">
				alert('�α��μ���');
				location.href='<%= request.getContextPath()%>/index.jsp';
			</script>	
<%			
		}else if(loginId.equals(t.getShopping_member_id())){
			session.setAttribute("sessionId", t.getShopping_member_id());
			session.setAttribute("sessionName", t.getShopping_member_name());
			session.setAttribute("sessionShoppingName", t.getShopping_name());
%>
			<script type="text/javascript">
				alert('�α��μ���');
				location.href='<%= request.getContextPath()%>/index.jsp';
			</script>	
<%			
		}
		
	}else if(loginCheck.equals("���̵����ġ")){
%>
		<script type="text/javascript">
			alert('���̵����ġ');
			location.href='<%= request.getContextPath()%>/index.jsp';
		</script>	
<%			
	}else{
%>
		<script type="text/javascript">
			alert('�������ġ');
			location.href='<%= request.getContextPath()%>/index.jsp';
		</script>	
<%			
	}
	
%>