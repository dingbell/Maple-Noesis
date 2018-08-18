package com.noesis_maplesoft.peopleware.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
	private static final String URL = "jdbc:mysql://localhost:3306/people-ware";
	private static final String USR = "root";
	private static final String PSW = "920804";

	/**
	 * Connect to MySQL
	 * 
	 * @throws SQLException
	 */

	public static Connection getConn() throws SQLException {

		Connection conn;
		conn = DriverManager.getConnection(URL, USR, PSW);

		return conn;
	}

	/**
	 * Close source
	 * @throws SQLException 
	 */
	public static void closeSQL(Connection conn, PreparedStatement ps, ResultSet rs) throws SQLException {
		// reverse order to close sources
		if (rs != null) {
			rs.close();
		}
		if (ps != null) {
			ps.close();
		}
		if (conn != null) {
			conn.close();
		}
	}

}
