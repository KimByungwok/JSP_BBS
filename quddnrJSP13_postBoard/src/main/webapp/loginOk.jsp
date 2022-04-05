<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.db.AccountDAO"%> 
<%@page import="com.jsp.db.AccountDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보 확인</title>
</head>
<body>
	<form name = "f1" action = "login.jsp" method = "post">
	<h1>GNB</h1><a href = "login.jsp">로그인하기</a><hr>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><hr>	
	</form>
	
<%
	request.setCharacterEncoding("UTF-8");

			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			AccountDAO dao = AccountDAO.getInstance();
			int checkIDNum = dao.userCheck(id, pw);
			
			if(-1 == checkIDNum){
	%>
		<script language = "javascript">
			alert("ID가 존재하지 않음");
			history.go(-1);
		</script>
	<%
	}else if(0==checkIDNum){
	%>
	<script language = "javascript">
		alert("비번 틀림");
		history.go(-1);
	</script>
	<%
	}else if (1 == checkIDNum){
			AccountDTO dto = dao.getMember(id);
			if(dto == null){
	%>
	<script language = "javascript">
		alert("회원이 존재하지 않음");
		history.go(-1);
	</script>
	<%
	}else {
		String name = dto.getM_name();
		session.setAttribute("id", id);
		session.setAttribute("name", name);
		session.setAttribute("validMember","OK" );
		response.sendRedirect("loginResult.jsp");
		}
	}
	%>
</body>
</html>