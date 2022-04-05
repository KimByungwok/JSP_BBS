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
	int i = 10;
	String str = "김병욱";
	
	public int sum (int x, int y){
		return x+y;
	}
	%>
	
	<%="I = "+i %><br>
	str = <%=str %><br>
	<%=sum(4,8) %><br>
</body>
</html>