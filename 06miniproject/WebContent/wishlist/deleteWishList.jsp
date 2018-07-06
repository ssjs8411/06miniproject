<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import = "dao.shoppingListDao" %>
<!DOCTYPE html>
<%
	int wishlist_no = Integer.parseInt(request.getParameter("wishlist_no"));
	shoppingListDao sldao = new shoppingListDao();
	sldao.deleteWishList(wishlist_no);
%>
			<script type="text/javascript">
				alert('찜 목록에서 삭제되었습니다.');
				location.href='<%= request.getContextPath()%>/wishlist/wishList.jsp';
			</script>