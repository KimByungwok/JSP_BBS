<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	ID : <%= id %><br>
	PW : <%= pw %><br>
	<hr>
	ID : ${param.id}<br>
	PW : ${param.pw}<br>
	ID : ${param["id"]}<br>
	PW : ${param["pw"]}<br>
	<hr>
	applicationScope : ${applicationScope.app_name}<br>
	sessionScope : ${sessionScope.session_name}<br>
	pageScope : ${pageScope.page_name}<br>
	requestScope : ${requestScope.request_name}<br>
	<hr>	<%//페이지가 이동한 결과이기 때문에 page_name,request_name 결과는 안 보여요 %>
	context 초기화 파라미터 <br>
	${initParm.ctx_name}<br>
	${initParm.ctx_id}<br>
	${initParm.ctx_pw}<br>
	
	
</body>
</html>