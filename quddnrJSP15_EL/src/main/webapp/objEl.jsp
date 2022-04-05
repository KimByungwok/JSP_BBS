<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="objElOk.jsp" method ="get">
		ID : <input type ="text" name = "id"><br>
		PW : <input type ="text" name = "pw"><br>
		<input type = "submit" value = "login">
	</form>
	
	<%
		application.setAttribute("app_name","앱_값1");
		session.setAttribute("session_name", "세션_값2");
		pageContext.setAttribute("pageContext_name", "페이지 구문_값3");
		request.setAttribute("request_name", "요청_값4");
	%>
</body>
</html>