<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%!
		String name, id,pw,firstNum,secondNum,ThirdNum,sex;
		
		%>
		<%
		request.setCharacterEncoding("UTF-8");
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		firstNum = request.getParameter("firstNum");
		secondNum = request.getParameter("secondNum");
		ThirdNum = request.getParameter("ThirdNum");
		String [] hobbys = request.getParameterValues("hobby");
		sex = request.getParameter("sex");
		%>
		이름 : <%=name %> <br>
		아이디 : <%=id %> <br>
		비번 : <%=pw %> <br>
		전화번호 : <%=firstNum%> &nbsp; - &nbsp;<%=secondNum%> &nbsp; - &nbsp;
		<%=ThirdNum %><br>
		취미 : <%=Arrays.toString(hobbys) %> <br>
		성별 : <%=sex %><br>
		<hr>
		서버 : <%=request.getServerName() %><br>
		포트번호 : <%=request.getServerPort()%><br>
		요청방식 : <%=request.getMethod() %><br>
		프로토콜 : <%=request.getProtocol() %><br>
		URL : <%=request.getRequestURL() %><br>
		URI : <%=request.getRequestURI() %><br>
		ContextPath : <%=request.getContextPath() %><br>
		
	</body>
</html>