package com.morphosis.quiz;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.mysql.cj.jdbc.result.ResultSetMetaData;

public class getTeam {
           public static ArrayList<String[]> Getteam(int i)
           {
        	   Statement s5,s6;
        	   //String correct=null;
        	    //int score=0;
        	   // int id;
        	  
        	    //String[] team;                   // <--declared statement
        	  
        	    ArrayList<String[]> team = new ArrayList<String[]>();
        	    
			try {
				s5 = DatabaseConnection.getConnection();
				s6=DatabaseConnection.getConnection();
				//ResultSet rs5= s5.executeQuery("select id from login where ="+i);
				ResultSet rs6= s5.executeQuery("select name from registration where id="+i);
				java.sql.ResultSetMetaData rsmd = rs6.getMetaData();
				int numberOfColumns = rsmd.getColumnCount();
				System.out.println(numberOfColumns);
				//ResultSet rs7= s6.executeQuery("select score from login where id="+i);
				int j=0;
				//int k=1;
				if(rs6.next())
				{
					 String[] row = new String[3];
					 row[0]=rs6.getString("name");
					 row[1]=rs6.getString("name");
					 row[2]=rs6.getString("name");
					 team.add(row);
		
				}
				// System.out.println(row[0]);
				// System.out.println(row[1]);
				// System.out.println(team[2]);


				    
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return team;
        	   
           }
           public static int getScore(int i)
           {
        	   int score=0;
        	 try {  Statement s6=DatabaseConnection.getConnection();
        	   ResultSet rs6= s6.executeQuery("select score from login where id="+i);
        	   if(rs6.next())
        	   {
        		   score=rs6.getInt(1);
        	   }
        	 }
        	 catch (Exception e) {
 				// TODO Auto-generated catch block
 				e.printStackTrace();
 			}
        	 return score;
         	   
        	   
           }
          
         	   
        	   
           }

