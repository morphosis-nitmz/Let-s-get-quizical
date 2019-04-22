package com.morphosis.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class userSID {
	String sql = "select SID from login where leader=?";
	String sql2="update login set SID=? where leader=?";
	String url = "jdbc:mysql://localhost:3306/quiz";
	String username="root";
	String password = "7352026597yk";
      
	public int getSID(String userID) {
		int SID = 0;
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection co = DriverManager.getConnection(url, username, password);
			PreparedStatement st = co.prepareStatement(sql);
			st.setString(1, userID);
			ResultSet rs = st.executeQuery();
		if(rs.next())
		{
			 SID=rs.getInt(1);
		}
			
	} catch(Exception e){
		e.printStackTrace();
	}
		return SID;
	}
	public void setSID(String userID,int SID) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection co = DriverManager.getConnection(url, username, password);
			Statement st = co.createStatement();
			int rs = st.executeUpdate("update login set SID='"+SID+"' where leader='"+userID+"'");	
	} catch(Exception e){
		e.printStackTrace();
	}
		
	}
}

