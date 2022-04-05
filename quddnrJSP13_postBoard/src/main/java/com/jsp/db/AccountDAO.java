package com.jsp.db;

// DAO는 DB를 사용하여 데이터의 조회 및 조작하는 모든 기능을 전담하는 Object
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.sql.DataSource;

public class AccountDAO {
	// DB 연동을 위한 준비
	static String driver = "org.mariadb.jdbc.Driver";
	static String url = "jdbc:mysql://Localhost:3306/test";
	static String uid = "root";
	static String pwd = "281471";
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;

	// 데이터 베이스에 접근 가능하도록 커넥션을 설정
	public AccountDAO() {
		try {
			// 어느 데이터베이스를 사용할 것인지를 설정
			Class.forName(driver); // 대소문자 구문
			// 실제 데이터 베이스에 접근하기 위한 소스를 작성 == 접속완료되면 커넥션을 리턴
			con = DriverManager.getConnection(url, uid, pwd);
			System.out.println("DAO DB 접속 완료");
		}catch (Exception e) {
			System.out.println("JDBC연결 오류"+e.getMessage());
			e.printStackTrace();
		}
	}
	
	private static AccountDAO instance = new AccountDAO();
	
	public static AccountDAO getInstance() {
		return instance;
	}
	
	public int userCheck(String id,String pw) {
		int result = 0;
		String dpw;
		String query = "select * from m_join where m_id = ?";
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, uid, pwd);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dpw = rs.getString("m_pw");
				if(dpw.equals(pw)) {
					System.out.println("로그인 성공");
					result = 1;
				}else {
					System.out.println("비밀번호가 다릅니다");
					result = 0;
				}
			}else {
				System.out.println("회원이 존재하지 않습니다");
				result = -1;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)rs.close();
				if(pstmt !=null)pstmt.close();
				if(con != null) con.close();
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}
	
	public AccountDTO getMember(String id) {
		AccountDTO dto = null;
		
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		String query = "select * from m_join where m_id = ?";
		
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, uid, pwd);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = new AccountDTO();
				dto.setM_id(rs.getString("m_id"));
				dto.setM_pw(rs.getString("m_pw"));
				dto.setM_name(rs.getString("m_name"));
				dto.setM_phone1(rs.getString("m_phone1"));
				dto.setM_phone2(rs.getString("m_phone2"));
				dto.setM_phone3(rs.getString("m_phone3"));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs!=null)rs.close();
				if(pstmt !=null)pstmt.close();
				if(con != null) con.close();
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return dto;
	}
	
	public int joinMember(AccountDTO dto) {
		/*
		 * String query = "insert into m_join values('" + dto.getM_id() + "', '" +
		 * dto.getM_pw() + "', '" + dto.getM_name() + "', '" + dto.getM_phone1() +
		 * "', '" + dto.getM_phone2() + "', '" + dto.getM_phone3() + "')";
		 */
		
		String query = "insert into m_join values(?,?,?,?,?,?)";
		
		try {
			Class.forName("org.mariadb.jdbc.Driver"); 
			con = DriverManager.getConnection("jdbc:mysql://Localhost:3306/test", "root", "281471");
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, dto.getM_id());
			pstmt.setString(2, dto.getM_pw());
			pstmt.setString(3, dto.getM_name());
			pstmt.setString(4, dto.getM_phone1());
			pstmt.setString(5, dto.getM_phone2());
			pstmt.setString(6, dto.getM_phone3());
			rs= pstmt.executeQuery(); // 쿼리 발동
			/*
			 * if(1 == i ) { System.out.println("insert success");
			 * response.sendRedirect("joinResult.jsp"); }else {
			 * System.out.println("insert fail"); response.sendRedirect("join.html"); }
			 */
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("연동 실패");
		}finally {
			try {
				if (null != stmt) {
					stmt.close();
				}
				if(null!=con) {
					con.close();
				}
			}catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 1; 
	}
}
