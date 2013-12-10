package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBConnection;


import po.User;

public class UserDAO {
	public int checkLogin(User user){
		String sql = "select userEmail , userPassword from wf_user where userEmail='"+user.getUserEmail()+"'";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		Connection conn = DBConnection.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			result = -1;
		} finally{
			DBConnection.closeConnection(conn);
		}
		return result;
	}
	public static void main(String[] args) {
		User user = new User();
		user.setUserEmail("zq@zq.com");
		user.setUserPassword("123456");
		System.out.println(new UserDAO().checkLogin(user));
		
	}

}
