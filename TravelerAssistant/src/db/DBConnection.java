package db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBConnection {
	public static void main(String[] args) {
		System.out.println(getConnection());
	}


	/**
	 * 
	 * @return
	 */
	public static Connection getConnection() {
		String forName ="oracle.jdbc.driver.OracleDriver";
		String dbUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
		
		String dbUser = "Maggie";
		String dbPwd = "xoxo";
		Connection conn = null;
		try {
			Class.forName(forName);
			java.sql.DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			conn = DriverManager.getConnection(dbUrl, dbUser, dbPwd);
		} catch (Exception e) {
			System.out.println("连接出错");
		}
		return conn;
	}

	/**
	 * 
	 * @param conn
	 */
	public static void closeConnection(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}


