<!-- 2018-06-29-김소희 -->
<!-- 쇼핑몰 회원가입 폼 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
<h2>쇼핑몰 회원가입</h2>
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
		<input type="checkbox" name="style" class="ss" value="빈티지">빈티지<br>
		<input type="checkbox" name="style" class="ss" value="캐쥬얼">캐쥬얼<br>
		<input type="checkbox" name="style" class="ss" value="유니크">유니크<br>
		<input type="checkbox" name="style" class="ss" value="심플">심플<br>
		<input type="checkbox" name="style" class="ss" value="오피스룩">오피스룩<br>
		<a id= "ss1"></a>
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
	<td colspan="4"><input type="button" value="회원가입" id="btn"></td>
</tr>
</table>
</form>
</body>
</html>