<!-- 06.29 �̰漱 05�� 25��-->
<!-- �Ϲ�ȸ������ȭ�� -->

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
					style1.innerHTML ="��Ÿ���� 2������";
				}
			})
		});
	</script>
<form action="<%= request.getContextPath() %>/generalMember/generalMemberInsertAction.jsp" method="post" id="form">

<table border="1">
<tr>
	<td>���̵�</td>
	<td><input type="text" name="g_id" size="20"></td>
<tr>
<tr>
	<td>��ȣ</td>
	<td><input type="text" name="g_pw" size="20"></td>
<tr>
<tr>
	<td>�̸�</td>
	<td><input type="text" name="g_name" size="20"></td>
<tr>
<tr>
	<td>�̸���</td>
	<td><input type="text" name="g_email" size="20"></td>
<tr>
<tr>
	<td>��ȭ��ȣ</td>
	<td><input type="text" name="g_phone" size="20"></td>
<tr>
	<td>����</td>
	<td><input type="radio" name="g_age" value="10��">10��
	<input type="radio" name="g_age" value="20��"/>20��
	<input type="radio" name="g_age" value="30��"/>30��
	<input type="radio" name="g_age" value="40��"/>40��
	<input type="radio" name="g_age" value="50���̻�"/>50���̻�<br></td>
<tr>
<tr>
	<td>��Ÿ��</td>
	<td>
		<input type="checkbox" name="g_style" class="style" value="����ũ">����ũ
		<input type="checkbox" name="g_style" class="style" value="��Ƽ��">��Ƽ��
		<input type="checkbox" name="g_style" class="style" value="����">����
		<input type="checkbox" name="g_style" class="style" value="���ǽ�">���ǽ�
		<input type="checkbox" name="g_style" class="style" value="ĳ�־�">ĳ�־�<br>
		<a id="style1"></a></td>
	</tr>
</table>
		<input type="button" value="ȸ������" id="btn">
</form>
