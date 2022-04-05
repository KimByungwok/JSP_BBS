<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>17871013</title>
</head>
	<body>	<!-- 태그가 들어가는 몸둥아리 -->
		<% 
			int i = 0;
		while(true){
			i++;
			out.println("2 * " + i + " = " +(2*i)+"<br>" );
		%>
		========<br>
		<%
			if (i>=9) break;
		}
		%>
	</body>
</html>