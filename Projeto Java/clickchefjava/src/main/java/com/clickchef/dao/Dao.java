package com.clickchef.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dao {

	protected Connection con;
	protected PreparedStatement stmt;
	protected ResultSet rs;

	private final String URL = "jdbc:mysql://localhost:3306/clickchefjava";
	private final String USER = "root";
	private final String PASS = "";

	protected void open() {
		try {
			Class.forName("com.mysql.jdb.Driver");
			con = DriverManager.getConnection(URL, USER, PASS);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void close() {
		try {
			if (con != null) {
				con.close();
			}
			if (stmt != null) {
				con.close();
			}
			if (rs != null) {
				con.close();
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
