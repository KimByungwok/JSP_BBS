<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!Connection con;
	PreparedStatement pst;
	ResultSet rs;

	String driver = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mysql://Localhost:3306/test";
	String uid = "root";
	String upw = "281471";%>
	<%
	try{
		Class.forName(driver);
		con = DriverManager.getConnection(url,uid,upw);
		int n;
		String query = "insert into m_join(m_id,m_pw,m_name,m_phone1,m_phone2,m_phone3)values(?,?,?,?,?,?)";
		pst = con.prepareStatement(query);
		
		pst.setString(1, "aaa");
		pst.setString(2, "111");
		pst.setString(3, "박남일");
		pst.setString(4, "010");
		pst.setString(5, "3480");
		pst.setString(6, "3164");
		n = pst.executeUpdate();
		
		if(n==1){
			out.println("insert success");
			response.sendRedirect("memberResult.jsp");
		}else{
			out.println("insert failed");
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(null != rs) rs.close();
			if(null != pst) pst.close();
			if(null != con) con.close();
		}catch(Exception e) {}
	}
	%>
	<br>
	<a href = "memberResult.jsp">회원정보보기</a>
</body>
</html>