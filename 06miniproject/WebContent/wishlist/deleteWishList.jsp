<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<!DOCTYPE html>
<%
	int wishlist_no = Integer.parseInt(request.getParameter("wishlist_no"));
	shoppingListDao sldao = new shoppingListDao();
	sldao.deleteWishList(wishlist_no);
%>
			<script type="text/javascript">
				alert('�� ��Ͽ��� �����Ǿ����ϴ�.');
				location.href='<%= request.getContextPath()%>/wishlist/wishList.jsp';
			</script>