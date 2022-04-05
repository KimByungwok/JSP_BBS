package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import sun.util.locale.ParseStatus;

public class UserDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 포트번호 데스크탑 3308 , 노트북 3306 
	public UserDAO() {
		try {
			String URL = "jdbc:mysql://localhost:3306/test";
			String UID = "root";
			String UPW = "281471";
			Class.forName("org.mariadb.jdbc.Driver");
			con = DriverManager.getConnection(URL,UID,UPW);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 로그인 검증 함수
	public int login(String userID, String userPassword) {
		String SQL = "Select userPassword from user where userID = ?";
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1,userID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword))
					return 1; //로그인 성공
				else 
					return 0; // 비밀번호 불일치
			}
			return -1; // 아이디가 없을 때
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // db오류
	}
	
	public int join(UserDTO user) {
		String SQL = "INSERT INTO user VALUES(?,?,?,?,?)";
		try {
			pstmt = con.prepareStatement(SQL);
			pstmt.setString(1,user.getUserID());
			pstmt.setString(2,user.getUserPassword());
			pstmt.setString(3,user.getUserName());
			pstmt.setString(4,user.getUserSex());
			pstmt.setString(5,user.getUserEmail());
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // db 오류
	}
	
	
}
