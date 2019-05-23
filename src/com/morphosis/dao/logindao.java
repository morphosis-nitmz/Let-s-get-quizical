package com.morphosis.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class logindao {
	
	String sql = "select * from login where leader=? and password=?";
	String url = "jdbc:mysql://localhost:3306/quiz";
	String username="root";
	String password = "7352026597yk";
	
	public boolean check(String leader,String pass) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection co = DriverManager.getConnection(url, username, password);
			PreparedStatement st = co.prepareStatement(sql);
			st.setString(1, leader);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}

}