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
    <meta name="viewport" content="width=device-width, initial-scale=0.8,user-scalable=yes">

<link href="<c:url value="/resources/css/button-style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/countdown.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/disable-back.js" />"></script>

<%
try{
   String userId = (String) session.getAttribute("leader");
   if(userId == null) {
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
   if((int)session.getAttribute("q2")==1)
	    response.sendRedirect("logout");
	    
	else session.setAttribute("q2", 1);
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



<title>Question 2</title>


    <script src="<c:url value="/resources/js/timer.js" />"></script>

</head>
<body>

<%
String answer1 = request.getParameter("answer");
String user=(String)session.getAttribute("leader");
boolean check;
if(answer1!=null)
    {
	  check= CalScore.calScore(user,1,answer1);
	  if(check==true)
	  {
		  %>
		  <div class="alert alert-success">
      <strong>Well Done!</strong> Correct Answer. Carry on the streak!
       </div>
		  <%
	  }
	  else {
		  %>
		  	  <div class="alert" style="background-color:red !important;" role="alert">
      <strong>Oops!!</strong> Wrong Answer..Pay attention to this question.! 
       </div>
		  <%
	  }
    }
%>

<h1>Question 2</h1>

<div id="countdown"></div>


<div class="container">
	
	<h2>The United Nations (UN) has decided to hold its 2020 ocean conference in which of the following cities?</h2>
	 <form name="options" action="ques3" method="post">
  <ul>
 
  <li>
  
    <input type="radio" id="f-option" name="answer" value="New York">
    <label for="f-option">New York</label>
    
    <div class="check"></div>
  </li>
  
  <li>
    <input type="radio" id="s-option" name="answer" value="Paris">
    <label for="s-option">Paris</label>
    
    <div class="check"><div class="inside"></div></div>
  </li>
  
  <li>
    <input type="radio" id="t-option" name="answer" value="New Delhi">
    <label for="t-option">New Delhi</label>
    
    <div class="check"><div class="inside"></div></div>
    
  </li>
  
   <li>
    <input type="radio" id="u-option" name="answer" value="Lisbon">
    <label for="u-option">Lisbon</label>
    
    <div class="check"><div class="inside"></div></div>
    
  </li>

</ul>
  </form>
</div>

<script src="<c:url value="/resources/js/auto-submit.js" />"></script>
</body>
</html>