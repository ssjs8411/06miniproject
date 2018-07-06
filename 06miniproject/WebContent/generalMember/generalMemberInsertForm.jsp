<!-- 06.29 이경선 05시 25분-->
<!-- 일반회원가입화면 -->

<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<script>
		window.addEventListener("load", function(){
			var btn = document.getElementById("btn");
			btn.addEventListener("click", function() {
				var style = document.getElementsByClassName("style");
				var cut = 0;
				
				for(var i=0; i<style.length; i++){
					if(style[i].checked){
						cut++;
					}
				}
				console.log(cut + "<--cut");
				if(cut===2){
					var form = document.getElementById("form");
					form.submit();
				}else{
					var style1 = document.getElementById("style1");
					style1.innerHTML ="스타일은 2개선택";
				}
			})
		});
	</script>
<form action="<%= request.getContextPath() %>/generalMember/generalMemberInsertAction.jsp" method="post" id="form">

<table border="1">
<tr>
	<td>아이디</td>
	<td><input type="text" name="g_id" size="20"></td>
<tr>
<tr>
	<td>암호</td>
	<td><input type="text" name="g_pw" size="20"></td>
<tr>
<tr>
	<td>이름</td>
	<td><input type="text" name="g_name" size="20"></td>
<tr>
<tr>
	<td>이메일</td>
	<td><input type="text" name="g_email" size="20"></td>
<tr>
<tr>
	<td>전화번호</td>
	<td><input type="text" name="g_phone" size="20"></td>
<tr>
	<td>나이</td>
	<td><input type="radio" name="g_age" value="10대">10대
	<input type="radio" name="g_age" value="20대"/>20대
	<input type="radio" name="g_age" value="30대"/>30대
	<input type="radio" name="g_age" value="40대"/>40대
	<input type="radio" name="g_age" value="50대이상"/>50대이상<br></td>
<tr>
<tr>
	<td>스타일</td>
	<td>
		<input type="checkbox" name="g_style" class="style" value="유니크">유니크
		<input type="checkbox" name="g_style" class="style" value="빈티지">빈티지
		<input type="checkbox" name="g_style" class="style" value="심플">심플
		<input type="checkbox" name="g_style" class="style" value="오피스">오피스
		<input type="checkbox" name="g_style" class="style" value="캐주얼">캐주얼<br>
		<a id="style1"></a></td>
	</tr>
</table>
		<input type="button" value="회원가입" id="btn">
</form>
