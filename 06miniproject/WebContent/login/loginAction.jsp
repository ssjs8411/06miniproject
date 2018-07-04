<!-- 18.7.4 최지수 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.LoginDao" %>
<%@ page import = "dto.TotalMember" %>
<!DOCTYPE html>
<%
	String loginId = request.getParameter("loginId");
	String loginPw = request.getParameter("loginPw");
	
	LoginDao ldao = new LoginDao();
	String loginCheck = ldao.loginCheck(loginId, loginPw);
	
	
	if(loginCheck.equals("로그인성공")){
		
		TotalMember t = ldao.loginsessionCheck(loginId);
		if(loginId.equals(t.getGeneral_member_id())){
			session.setAttribute("sessionId", t.getGeneral_member_id());
			session.setAttribute("sessionName", t.getGeneral_member_name());
%>
			<script type="text/javascript">
				alert('로그인성공');
				location.href='<%= request.getContextPath()%>/index.jsp';
			</script>	
<%			
		}else if(loginId.equals(t.getShopping_member_id())){
			session.setAttribute("sessionId", t.getShopping_member_id());
			session.setAttribute("sessionName", t.getShopping_member_name());
			session.setAttribute("sessionShoppingName", t.getShopping_name());
%>
			<script type="text/javascript">
				alert('로그인성공');
				location.href='<%= request.getContextPath()%>/index.jsp';
			</script>	
<%			
		}
		
	}else if(loginCheck.equals("아이디불일치")){
%>
		<script type="text/javascript">
			alert('아이디불일치');
			location.href='<%= request.getContextPath()%>/index.jsp';
		</script>	
<%			
	}else{
%>
		<script type="text/javascript">
			alert('비번불일치');
			location.href='<%= request.getContextPath()%>/index.jsp';
		</script>	
<%			
	}
	
%>