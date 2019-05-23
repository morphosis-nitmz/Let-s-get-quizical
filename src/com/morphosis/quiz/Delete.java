package com.morphosis.quiz;

import java.sql.Statement;

public class Delete {
	
	public static void delete(int id)
    {
		Statement s5,s6;
 	    System.out.println("Inside delete");
		try {
			s5 = DatabaseConnection.getConnection();
			s6=DatabaseConnection.getConnection();
			int rs5= s5.executeUpdate("Delete from registration where id="+id);
			int rs6= s6.executeUpdate("Delete from login where id="+id);
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
    }

}
