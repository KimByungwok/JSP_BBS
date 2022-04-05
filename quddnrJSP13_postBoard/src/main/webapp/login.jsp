<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function loginpass(){
		var f1 = document.f1;
		var id = document.f1.id;
		var mid = id.value;
		var pw = document.f1.pw;
		var mpw = pw.value;
		if(!mid || !mpw){
			alert("ID,PW를 입력하세요");
		}else{
			f1.submit();
		}
	}
</script>
</head>
<body>
	<form name = "f1" action = "loginOk.jsp" method = "post">
	<h1>GNB</h1>
	<a href = "login.jsp">로그인하기</a><hr>
		<p>I D : <input type ="text" name = "id"><br>
		<p>PW : <input type ="text" name = "pw"> <br>
		<p><h1>
		
		<input type ="button" value="로그인"onclick="loginpass()">
		<button type="button" onclick="location.href='join.jsp'">회원가입</button>
		<input type = "button" value="로그인 취소" onclick ="location.href='main.jsp'"></h1>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr>
	</form>
</body>
</html>