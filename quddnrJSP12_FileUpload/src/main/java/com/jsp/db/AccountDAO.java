package com.jsp.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AccountDAO {
	private DataSource dataSource;
	
	public AccountDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/MariaDB");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public ArrayList<AccountDTO> accountSelect() {
		ArrayList<AccountDTO> dtos = new ArrayList<AccountDTO>();
		try {
			conn = dataSource.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from m_join");
			System.out.println("DB 접속 완료");

			while (rs.next()) {
				String id = rs.getString("m_id");
				String pw = rs.getString("m_pw");
				String name = rs.getString("m_name");
				String phone1 = rs.getString("m_phone1");
				String phone2 = rs.getString("m_phone2");
				String phone3 = rs.getString("m_phone3");

				AccountDTO dto = new AccountDTO(id, pw, name, phone1, phone2, phone3);
				dtos.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;
	}
}
