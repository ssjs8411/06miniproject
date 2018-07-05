<!-- 2018-06-29-김소희 -->
<!-- 쇼핑몰 회원가입 폼 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script>
window.addEventListenner("load", function(){
	var btn = document.getElementById("btn");
	btn.addEventListnner("click", function(){
		var check =document.getElementByClassName("check");
		var cut = 0;
		
		for (var i=0; i<check.length; i++){
			if(check[i].checked){
				cut++;
			}
		}
		console.log(cut + "<-cut");
		if(cut===2){
			var form = document.getElementById("form");
			form.submit();
		}else {
			var check1 = docment.getElementById("check1");
			check1.innerHTML = "2개를 선책해주세요"
		}
	})
	
});
</script>
</head>
<body>
<form action="<%= request.getContextPath() %>/shoppingMember/shoppingMemberInsertAction.jsp" method="post" id="form">
<table border="1">
<tr>
	<td>아이디</td>
	<td><input type="text" name="shopping_member_id" size="20"></td>
<tr>
<tr>
	<td>비밀번호</td>
	<td><input type="text" name="shopping_member_pw" size="20"></td>
<tr>
<tr>
	<td>관리자 이름</td>
	<td><input type="text" name="shopping_member_name" size="20"></td>
<tr>
<tr>
	<td>쇼핑몰 이름</td>
	<td><input type="text" name="shopping_name" size="20"></td>
<tr>
<tr>
	<td>쇼핑몰 스타일</td>
	<td>
		<input type="checkbox" name="style" class="check" value="clothes">빈티지<br>
		<input type="checkbox" name="style" class="check" value="clothes">캐쥬얼<br>
		<input type="checkbox" name="style" class="check" value="clothes">유니크<br>
		<input type="checkbox" name="style" class="check" value="clothes">심플<br>
		<input type="checkbox" name="style" class="check" value="clothes">오피스룩<br>
		<a id = "check1"></a>
		<input type="button" value="확인" id="btn">
	</td>
<tr>
<tr>
	<td>고객센터 전화번호</td>
	<td><input type="text" name="shopping_member_phone" size="20"></td>
<tr>
<tr>
	<td>쇼핑몰 URL</td>
	<td><input type="text" name="shopping_addr" size="20"></td>
<tr>
<tr>
	<td colspan="4"><input type="submit" value="회원가입버튼"></td>
</tr>
</table>
</form>
</body>
</html>