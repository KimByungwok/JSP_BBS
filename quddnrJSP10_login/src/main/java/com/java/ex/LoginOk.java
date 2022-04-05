package com.java.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	private Connection conn;
	private Statement stmt;
	private ResultSet resultSet;
	
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
		
		String query = "select * from m_join where m_id = '" + id + "' and m_pw= '" + pw + "'";		
		try {
			Class.forName("org.mariadb.jdbc.Driver"); 
			conn = DriverManager.getConnection("jdbc:mysql://Localhost:3306/test", "root", "281471");
			System.out.println("DB 접속 완료");
			stmt = conn.createStatement();
			resultSet =stmt.executeQuery(query);
			
			while (resultSet.next()) {
				id = resultSet.getString("m_id");
				pw = resultSet.getString("m_pw");
				name = resultSet.getString("m_name");
				phone1 = resultSet.getString("m_phone1");
				phone2 = resultSet.getString("m_phone2");
				phone3 = resultSet.getString("m_phone3");
			}
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("id", id);
			httpSession.setAttribute("pw", pw);
			httpSession.setAttribute("name", name);
			httpSession.setAttribute("phone2", phone2);
			httpSession.setAttribute("phone3", phone3);
			
			response.sendRedirect("loginResult.jsp");
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(null!=resultSet) resultSet.close();
				if(null!=conn) conn.close();
				if(null!=stmt) stmt.close();
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}
