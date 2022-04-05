package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {
	private Connection con;
	private ResultSet rs;
	
	// 포트번호 데스크탑 3308 , 노트북 3306
	public BbsDAO() {
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
	public String getDate() {
		String SQL = "Select NOW()";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "";// db오류
	}
	
	public int getNext() {
		String SQL = "Select bbsID from bbs order by bbsID desc";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; // 첫 번째 게시물인 경우
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// db오류
	}
	
	public int write(String bbsTitle, String userID, String bbsContent,String bbsDate,int bbsHit) {
		String SQL = "insert into bbs values(?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, getNext());
			pstmt.setString(2, bbsTitle);
			pstmt.setString(3, userID);
			getDate();
			bbsDate = getDate();
			pstmt.setString(4, bbsDate);
			pstmt.setString(5, bbsContent);
			pstmt.setInt(6, 1);
			pstmt.setInt(7, bbsHit);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// db오류
	}
	
	public ArrayList<BbsDTO> getList(int pageNumber){
		String SQL = "Select * from bbs where bbsID <? and bbsavailable =1 order by bbsID desc limit 10";
		ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BbsDTO bbs = new BbsDTO();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				bbs.setBbsHit(rs.getInt(7));
				list.add(bbs);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public boolean nextPage(int pageNumber) {
		String SQL = "Select * from bbs where bbsID <? and bbsavailable =1";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, getNext() - (pageNumber -1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public BbsDTO getBbs(int bbsID) {
		String SQL = "Select * from bbs where bbsID = ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				BbsDTO bbs = new BbsDTO();
				bbs.setBbsID(rs.getInt(1));
				bbs.setBbsTitle(rs.getString(2));
				bbs.setUserID(rs.getString(3));
				bbs.setBbsDate(rs.getString(4));
				bbs.setBbsContent(rs.getString(5));
				bbs.setBbsAvailable(rs.getInt(6));
				int bbsHit = rs.getInt(7);
				bbs.setBbsHit(bbsHit);
				bbsHit++;
				countUpdate(bbsHit,bbsID);
				   
				return bbs;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public int countUpdate(int bbsHit, int bbsID) {
		String SQL = "update bbs set bbsHit = ? where bbsID = ?";
		try {
			PreparedStatement pstmt=con.prepareStatement(SQL);
			pstmt.setInt(1, bbsHit);//물음표의 순서
			pstmt.setInt(2, bbsID);
			return pstmt.executeUpdate();//insert,delete,update			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;//데이터베이스 오류
	}
	
	
	
	public int update(int bbsID, String bbsTitle,String bbsContent) {
		String SQL = "update bbs set bbsTitle=? , bbsContent =? where bbsID = ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, bbsTitle);
			pstmt.setString(2, bbsContent);
			pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// db오류
	}
	
	public int delete(int bbsID) {
		String SQL = "update bbs set bbsAvailable = 0 where bbsID=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// db오류
	}
	
}


