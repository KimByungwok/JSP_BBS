<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name = "f1" action="joinOk" method = "post">
	<h1>GNB</h1><a href = "login.jsp">로그인하기</a><hr>
	<h1>
		ID : <input type="text" name="id"size="10"><br>
		PW : <input type="text" name="pw"size="10"><br>
		이름 : <input type="text" name="name"size="10"><br>
		전화번호 : <select name = phone1>
			<option value="010">010</option>
			<option value="011">011</option>
			<option value="019">019</option>
			</select>
		-<input type = "text"name="phone2"size="5"> - <input type="text" name="phone3"size="5"><br>
		<input type = "submit" value="가입">
		<input type = "reset" value="초기화">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr></h1>
	</form>

</body>
</html>