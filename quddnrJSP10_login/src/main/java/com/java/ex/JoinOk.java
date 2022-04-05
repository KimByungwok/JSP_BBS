package com.java.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinOk")
public class JoinOk extends HttpServlet {
	private Connection conn;
	private Statement stmt;
	private String id, pw, name, phone1, phone2, phone3;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionDo(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionDo(request, response);
	}
	protected void actionDo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");
		
		String query = "replace into m_join values('" + id + "', '" + pw + "', '" + name + "', '" + phone1 + "', '"
				+ phone2 + "', '" + phone3 + "')";
		try {
			Class.forName("org.mariadb.jdbc.Driver"); 
			conn = DriverManager.getConnection("jdbc:mysql://Localhost:3306/test", "root", "281471");
			System.out.println("DB 접속 완료");
			stmt = conn.createStatement();
			int i = stmt.executeUpdate(query);
			if(1 == i ) {
				System.out.println("insert success");
				response.sendRedirect("joinResult.jsp");
			}else {
				System.out.println("insert fail");
				response.sendRedirect("join.html");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연동 실패");
		}finally {
			try {
				if (null != stmt) {
					stmt.close();
				}
				if(null!=conn) {
					conn.close();
				}
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}

/*
 * 
 */
