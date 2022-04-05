package reply;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bbs.BbsDAO;
import bbs.BbsDTO;

public class ReplyDAO {

	private Connection con;
	private ResultSet rs;
	
	public ReplyDAO() {
		try {
			String URL="jdbc:mysql://localhost:3306/test";	
			String UID="root";
			String UPW="281471";
			Class.forName("org.mariadb.jdbc.Driver");
			con=DriverManager.getConnection(URL,UID,UPW);
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<ReplyDTO> getList(int bbsID,int pageNumber){
		String SQL="SELECT * FROM REPLY WHERE replyID<? AND replyAvailable=1 AND bbsID=? ORDER BY replyID DESC LIMIT 10";
		ArrayList<ReplyDTO> list=new ArrayList<ReplyDTO>();
		try {
			PreparedStatement pstmt=con.prepareStatement(SQL);
			pstmt.setInt(1,getNext()-(pageNumber-1)*10);
			pstmt.setInt(2, bbsID);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				ReplyDTO reply=new ReplyDTO();
				reply.setUserID(rs.getString(1));
				reply.setReplyID(rs.getInt(2));
				reply.setReplyContent(rs.getString(3));
				reply.setBbsID(bbsID);
				reply.setReplyAvailable(1); // rs.getInt(5) => out of index 오류
				list.add(reply);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int getNext() {
		String SQL="select replyID FROM REPLY ORDER BY replyID DESC";
		try {
		
			PreparedStatement pstmt=con.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getInt(1)); // select문에서 첫번째 값
				return rs.getInt(1)+1;  // 현재 인덱스(현재 게시글 개수) +1 반환
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	public int write(int bbsID,String replyContent,String userID) {
		String SQL="INSERT INTO REPLY VALUES(?,?,?,?,?)";
		
		try {
			PreparedStatement pstmt=con.prepareStatement(SQL);
			pstmt.setString(1,userID);
			pstmt.setInt(2, getNext());
			pstmt.setString(3, replyContent);
			pstmt.setInt(4,bbsID);
			pstmt.setInt(5,1);
			//pstmt.setInt(6, bbsHit);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public int replyupdate(String userID, String replyContent) {
		String SQL = "update reply set replyContent =? where userID = ?";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setString(2, userID);
			pstmt.setString(1, replyContent);
			//pstmt.setInt(3, bbsID);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// db오류
	}
	
	public int replydelete(String userID,int bbsID) {
		BbsDAO bbsDAO = new BbsDAO();
		
		String SQL = "update reply set replyAvailable = 0 where userID=?and bbsID=?";
		try {
			PreparedStatement pstmt = con.prepareStatement(SQL);
			pstmt.setString(1, userID);
			pstmt.setInt(2, bbsID);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1;// db오류
	}
	
}