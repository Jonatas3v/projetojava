package com.clickchef.dao;

import java.sql.*;

public class Conexao {
	protected PreparedStatement stmt;
	protected ResultSet rs;
	protected Connection con;

	private final String url = "jdbc:mysql://localhost:3306/clickchefjava";
	private final String user = "root";
	private final String pass = "";

	protected void open() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

