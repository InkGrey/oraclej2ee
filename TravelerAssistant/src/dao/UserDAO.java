package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBConnection;


import po.User;

public class UserDAO {
	public int checkLogin(User user){
		String sql = "select userName , userPassword from wf_user where userEmail=? and userPassword=?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;
		Connection conn = DBConnection.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserEmail());
			pstmt.setString(2, user.getUserPassword());
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

}
