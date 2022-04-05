<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
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
	<form name = "f1" action = "login.jsp" method = "post">
	<h1>GNB</h1><a href = "login.jsp">로그인하기</a><hr>
	
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><hr>	
	</form>
</body>
</html>