<%@page import="com.morphosis.login.userSID"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.morphosis.quiz.CalScore"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.morphosis.quiz.DatabaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="<c:url value="/resources/css/button-style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/countdown.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/disable-back.js" />"></script>
<%
String checkbox=request.getParameter("checkbox");
if("agree".equals(checkbox))
{
	System.out.println("agree");
}
else response.sendRedirect("ComingSoon");;
%>


<%
   String userId= (String)session.getAttribute("leader");
   if(session.getAttribute("leader")== null) {
	   System.out.println(userId);
      response.sendRedirect("login2");
   }
   else{
  
   int SID=(int)session.getAttribute("SID");
   userSID usersid = new userSID();
   int USID= usersid.getSID(userId);
   if(USID!=SID)
   {
	   response.sendRedirect("logout");
   }
   
   if((int)session.getAttribute("q1")==1)
	    response.sendRedirect("logout");
	    
	else session.setAttribute("q1", 1);
   } 
%>


<meta charset="ISO-8859-1">
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
<% response.setHeader("Pragma","no-cache");%> 
<% response.setHeader("Cache-Control","no-store");%> 
<% response.setDateHeader("Expires",-1);%> 



<title>Question 1</title>

    <script src="<c:url value="/resources/js/timer.js" />"></script>





</head>
<body>
<h1>Question 1</h1>

<div id="countdown" class="countdown" role="alert"></div>

<%
String ques="loading..";

String option_A = "loading..";
String option_B = "loading..";
String option_C = "loading..";
String option_D = "loading..";

try {
	Statement s=DatabaseConnection.getConnection();
	Statement s2=DatabaseConnection.getConnection();
	
	ResultSet rs= s.executeQuery("select ques from options where flag=1");
	ResultSet rs2= s2.executeQuery("select A,B,C,D from options where flag=1");
	
	if(rs.next())
	{
	ques=rs.getString(1);
	
	}
	
	if(rs2.next()) {
		option_A=rs2.getString("A");
		option_B=rs2.getString("B");
		option_C=rs2.getString("C");
		option_D=rs2.getString("D");

	}
	DatabaseConnection.getCloseConnection();
	
	
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


%>

<div class="container">
	
	<h2><%=ques%></h2>
	 <form name="options" action="q2" method="post">
  <ul>
 
  <li>
  
    <input type="radio" id="f-option" name="answer" value="<%=option_A %>">
    <label for="f-option"><%=option_A %></label>
    
    <div class="check"></div>
  </li>
  
  <li>
    <input type="radio" id="s-option" name="answer" value="<%=option_B %>">
    <label for="s-option"><%=option_B %></label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  
  <li>
    <input type="radio" id="t-option" name="answer" value="<%=option_C %>">
    <label for="t-option"><%=option_C %></label>
    
    <div class="check"><div class="inside"></div></div>
    
  </li>
  
   <li>
    <input type="radio" id="u-option" name="answer" value="<%=option_D %>">
    <label for="u-option"><%=option_D %></label>
    
    <div class="check"><div class="inside"></div></div>
    
  </li>

</ul>
  </form>
</div>

<script src="<c:url value="/resources/js/auto-submit.js" />"></script>

</body>
</html>