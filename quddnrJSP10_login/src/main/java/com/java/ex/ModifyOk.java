package com.java.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ModifyOk")
public class ModifyOk extends HttpServlet {

	private Connection conn;
	private Statement stmt;
	private String id, pw, name, phone1, phone2, phone3;
	private ServletRequest session;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");

		/*
		 * if (pwConfirm()) { System.out.println("OK");
		 */
		String query = "update m_join set m_pw='" + pw + "'" + ",m_name='" + name + "',m_phone1='" + phone1 + "',m_phone2='"
				+ phone2 + "',m_phone3='" + phone3 + "'where m_id='" + id + "'";
		
		System.out.println(query);
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://Localhost:3306/test", "root", "281471");
			System.out.println("DB 접속 완료1111");
			stmt = conn.createStatement();
			int i;
			i = stmt.executeUpdate(query);

			if (1 == i) {
				System.out.println("update success");
				session.setAttribute("m_name", name);
				response.sendRedirect("modifyResult.jsp");
			} else {
				System.out.println("update fail, i= " + i);
				response.sendRedirect("modify.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연동 실패1111");
		} finally {
			try {
				if (null != stmt)
					stmt.close();
				if (null != conn)
					conn.close();
			} catch (Exception e2) {
			}
		}
	} /*
		 * else { System.out.println("NG"); response.sendRedirect("modify.jsp"); }
		 */
}

/*
 * private boolean pwConfirm() { boolean rs = false; String sessionPw = (String)
 * session.getAttribute("pw"); if (sessionPw.equals(pw)) rs = true; return rs; }
 */
