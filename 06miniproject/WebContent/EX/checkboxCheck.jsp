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
				var ex = document.getElementsByClassName("ex");
				var cut = 0;
				
				for(var i=0; i<ex.length; i++){
					if(ex[i].checked){
						cut++;
					}
				}
				console.log(cut + "<--cut");
				if(cut===2){
					var form = document.getElementById("form");
					form.submit();
				}else{
					var ex1 = document.getElementById("ex1");
					ex1.innerHTML ="취미는 2개선택";
				}
			})
		});
	</script>

</head>
<body>

	<form action="./exex.jsp" method="post" id="form">
		<input type="checkbox" name="ex" class="ex" value="1">
		<input type="checkbox" name="ex" class="ex" value="2">
		<input type="checkbox" name="ex" class="ex" value="3">
		<input type="checkbox" name="ex" class="ex" value="4">
		<input type="checkbox" name="ex" class="ex" value="5">
		<a id="ex1"></a>
		<input type="button" value="전송" id="btn">
	</form>

</body>
</html>