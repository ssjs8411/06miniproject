<!-- 2018-06-29-����� -->
<!-- ���θ� ȸ������ �� -->
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
					ss1.innerHTML = "2�� ����";
				}
			})
		});
</script>
</head>
<body>
<h2>���θ� ȸ������</h2>
<form action="<%= request.getContextPath() %>/shoppingMember/shoppingMemberInsertAction.jsp" method="post" id="form">
<table border="1">
<tr>
	<td>���̵�</td>
	<td><input type="text" name="shopping_member_id" size="20"></td>
<tr>
<tr>
	<td>��й�ȣ</td>
	<td><input type="text" name="shopping_member_pw" size="20"></td>
<tr>
<tr>
	<td>������ �̸�</td>
	<td><input type="text" name="shopping_member_name" size="20"></td>
<tr>
<tr>
	<td>���θ� �̸�</td>
	<td><input type="text" name="shopping_name" size="20"></td>
<tr>
<tr>
	<td>���θ� ��Ÿ��</td>
	<td>
		<input type="checkbox" name="style" class="ss" value="��Ƽ��">��Ƽ��<br>
		<input type="checkbox" name="style" class="ss" value="ĳ���">ĳ���<br>
		<input type="checkbox" name="style" class="ss" value="����ũ">����ũ<br>
		<input type="checkbox" name="style" class="ss" value="����">����<br>
		<input type="checkbox" name="style" class="ss" value="���ǽ���">���ǽ���<br>
		<a id= "ss1"></a>
	</td>
	
<tr>
<tr>
	<td>������ ��ȭ��ȣ</td>
	<td><input type="text" name="shopping_member_phone" size="20"></td>
<tr>
<tr>
	<td>���θ� URL</td>
	<td><input type="text" name="shopping_addr" size="20"></td>
<tr>
<tr>
	<td colspan="4"><input type="button" value="ȸ������" id="btn"></td>
</tr>
</table>
</form>
</body>
</html>