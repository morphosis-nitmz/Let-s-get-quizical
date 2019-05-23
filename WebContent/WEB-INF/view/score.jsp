<%@page import="com.morphosis.login.userSID"%>
<%@page import="com.morphosis.quiz.CalScore"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
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
   }
%>

<%
   String answer3 = request.getParameter("answer");
   String user=(String)session.getAttribute("leader");
   boolean check;
   if(answer3!=null)
   {
	  check= CalScore.calScore(user,10,answer3);

   }
   
   response.sendRedirect("leaderboard");
	    %>
