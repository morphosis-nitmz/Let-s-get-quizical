<%@page import="com.morphosis.quiz.Delete"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.morphosis.quiz.DatabaseConnection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registered</title>
</head>
<body>

<%
String confPass= request.getParameter("ConfPass");
String password= request.getParameter("password"); 
int id=0;
if(confPass.equals(password))
{
try{
	String leader_enroll=request.getParameter("leader_enroll");
	String leader =request.getParameter("leader");
	String member1=request.getParameter("member1");
	String mem_enroll1=request.getParameter("mem_enroll1");
	String member2=request.getParameter("member2");
	String mem_enroll2=request.getParameter("mem_enroll2");
	Statement s=DatabaseConnection.getConnection();
	Statement s2=DatabaseConnection.getConnection();
	Statement s3=DatabaseConnection.getConnection();
	Statement s4=DatabaseConnection.getConnection();
	Statement s5=DatabaseConnection.getConnection();
	Statement s6=DatabaseConnection.getConnection();
	String sql="insert into login(leader,password,score) values('"+leader_enroll+"','"+password+"',0)";
	
	String sql5= "select id from login where leader='"+leader_enroll+"'";
	int rs= s.executeUpdate(sql);
	ResultSet rs2=s2.executeQuery(sql5);
	if(rs2.next())
	{
		id=rs2.getInt(1);
	}
	System.out.println(id);
	String sql6="insert into registration(id,enrollment,name) values('"+id+"','"+leader_enroll+"','"+leader+"')";
	String sql2="insert into registration(id,enrollment,name) values('"+id+"','"+mem_enroll1+"','"+member1+"')";
	String sql3="insert into registration(id,enrollment,name) values('"+id+"','"+mem_enroll2+"','"+member2+"')";
	
	int rs6=s6.executeUpdate(sql6);
	int rs3=s3.executeUpdate(sql2);
	int rs4=s4.executeUpdate(sql3);
	
	DatabaseConnection.getCloseConnection();
	
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();	
	Delete.delete(id);
	request.setAttribute("errorMessage", "One or more Enrollment Number has already been registered in a team");
	RequestDispatcher rd1 = request.getRequestDispatcher("register.jsp");
    rd1.forward(request, response);
}

request.setAttribute("Success", "Successfully Registered ! login now");
RequestDispatcher rd2 = request.getRequestDispatcher("rules.jsp");
rd2.forward(request, response);
}
else
{
	request.setAttribute("PassError", "Please Re enter the password correctly");
	RequestDispatcher rd3 = request.getRequestDispatcher("register.jsp");
	rd3.forward(request, response);
}
%>



</body>
</html>