<!-- 2018-07-05 김소희 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingMemberDao" %>
<%@ page import = "dto.ShoppingMember" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "dto.ShoppingMemberStyle" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<% request.setCharacterEncoding("euc-kr"); %>
<jsp:useBean id="sms" class="dto.ShoppingMemberStyle"/>
<jsp:setProperty name="sms" property="*"/>
<script>
		window.addEventListener("load", function(){
			var btn = document.getElementById("btn");
			btn.addEventListener("click", function() {
				var ss = document.getElementsByClassName("ss");
				var cut = 0;
				
				for(var i=0; i<ss.length; i++){
					if(ss[i].checked){
						cut++;
					}
				}
				console.log(cut + "<--cut");
				if(cut===2){
					var form = document.getElementById("form");
					form.submit();
				}else{
					var ss1 = document.getElementById("ss1");
					ss1.innerHTML = "2개 선택";
				}
			})
		});
</script>
</head>
<body>
<%	
	int shopping_member_no = Integer.parseInt(request.getParameter("shopping_member_no"));
	System.out.println(shopping_member_no + "<-shopping_member_no");
	
	shoppingMemberDao sMdao = new shoppingMemberDao();
	ShoppingMember sm = sMdao.sSelectforUpdate(shopping_member_no);
	
	String smid = sm.getShopping_member_id();
	String smpw = sm.getShopping_member_pw();
	String smname = sm.getShopping_member_name();
	String sname = sm.getShopping_name();
	int smphone = sm.getShopping_member_phone();
	String saddr = sm.getShopping_addr();

	String style[] = null;

	String styleCheck = request.getParameter("styleCheck");

	


%>
<h2>쇼핑몰 회원 수정화면</h2>
<form action="<%= request.getContextPath() %>/shoppingMember/shoppingMemberUpdateAction.jsp" method="post" id="form">
<input type="hidden" name="shopping_no" value="<%=shopping_member_no%>">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="shopping_member_id" size="20"  value="<%= smid %>" readonly></td>
		<tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" name="shopping_member_pw" size="20" value="<%= smpw %>"></td>
		<tr>
		<tr>
			<td>관리자 이름</td>
			<td><input type="text" name="shopping_member_name" size="20" value="<%= smname %>"></td>
		<tr>
		<tr>
			<td>쇼핑몰 이름</td>
			<td><input type="text" name="shopping_name" size="20" value="<%= sname %>"></td>
		<tr>
		<tr>
			<td>쇼핑몰 스타일</td>
			<td>

<% 
	ArrayList<ShoppingMemberStyle> als = sMdao.selctStyleNo(sm.getShopping_member_no());

	for (int i=0; i<als.size(); i++){
		ShoppingMemberStyle s = als.get(i);

	sMdao.updateStyle(s.getShopping_member_style_no(), style[1]);
%>
	<%=sms.getShopping_member_style() %>
<%
	}
%>
	<a href="<%= request.getContextPath() %>/shoppingMember/shoppingMemberUpdateForm.jsp?styleCheck=1&shopping_member_no=<%=shopping_member_no%>">스타일 수정</a>
<%
	if(styleCheck != null){

%>
	<input type="checkbox" name="style" class="ss" value="빈티지">빈티지
	<input type="checkbox" name="styl" class="ss" value="캐쥬얼">캐쥬얼
	<input type="checkbox" name="style" class="ss" value="유니크">유니크
	<input type="checkbox" name="style" class="ss" value="심플">심플
	<input type="checkbox" name="style" class="ss" value="오피스룩">오피스룩
	<a id= "ss1"></a>
<%		
	}
%>
			</td>
		<tr>
		<tr>
			<td>고객센터 전화번호</td>
			<td><input type="text" name="shopping_member_phone" size="20" value="<%= smphone %>"></td>
		<tr>
		<tr>
			<td>쇼핑몰 URL</td>
			<td><input type="text" name="shopping_addr" size="20" value="<%= saddr %>"></td>
		<tr>
		<tr>
			<td colspan="4"><input type="button" value="수정버튼" id="btn"></td>
		</tr>
	</table>
</form>
</body>
</html>