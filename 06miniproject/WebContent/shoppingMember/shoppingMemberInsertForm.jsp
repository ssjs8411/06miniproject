<!-- 2018-06-29-����� -->
<!-- ���θ� ȸ������ �� -->
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
			check1.innerHTML = "2���� ��å���ּ���"
		}
	})
	
});
</script>
</head>
<body>
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
		<input type="checkbox" name="style" class="check" value="clothes">��Ƽ��<br>
		<input type="checkbox" name="style" class="check" value="clothes">ĳ���<br>
		<input type="checkbox" name="style" class="check" value="clothes">����ũ<br>
		<input type="checkbox" name="style" class="check" value="clothes">����<br>
		<input type="checkbox" name="style" class="check" value="clothes">���ǽ���<br>
		<a id = "check1"></a>
		<input type="button" value="Ȯ��" id="btn">
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
	<td colspan="4"><input type="submit" value="ȸ�����Թ�ư"></td>
</tr>
</table>
</form>
</body>
</html>