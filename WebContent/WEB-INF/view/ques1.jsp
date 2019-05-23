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
<meta name="viewport" content="width=device-width, initial-scale=0.8, user-scalable=yes">

<link href="<c:url value="/resources/css/button-style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/countdown.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/disable-back.js" />"></script>
<%
try{
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
}
catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
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



<div class="container">
	
	<h2>Which of the bowlers has been adjudged as 2019 CEAT International Bowler of the Year?</h2>
	 <form name="options" action="ques2" method="post">
  <ul>
 
  <li>
  
    <input type="radio" id="f-option" name="answer" value="Jasprit Bumrah">
    <label for="f-option">Jasprit Bumrah</label>
    
    <div class="check"></div>
  </li>
  
  <li>
    <input type="radio" id="s-option" name="answer" value="Kuldeep Yadav">
    <label for="s-option">Kuldeep Yadav</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  
  <li>
    <input type="radio" id="t-option" name="answer" value="Rashid Khan">
    <label for="t-option">Rashid Khan</label>
    
    <div class="check"><div class="inside"></div></div>
    
  </li>
  
   <li>
    <input type="radio" id="u-option" name="answer" value="Ashutosh Aman">
    <label for="u-option">Ashutosh Aman</label>
    
    <div class="check"><div class="inside"></div></div>
    
  </li>

</ul>
  </form>
</div>

<script src="<c:url value="/resources/js/auto-submit.js" />"></script>

</body>
</html>