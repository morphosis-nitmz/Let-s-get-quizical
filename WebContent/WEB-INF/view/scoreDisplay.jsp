<%@page import="com.morphosis.quiz.CalScore"%>
<%@page import="com.morphosis.login.userSID"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Score is</title>
</head>
<body>
<%
   String userId = (String) session.getAttribute("leader");
   if(userId == null) {
      response.sendRedirect("login2");
   }
   int SID=(int)session.getAttribute("SID");
   userSID usersid = new userSID();
   int USID= usersid.getSID(userId);
   if(USID!=SID)
   {
	   response.sendRedirect("logout");
   }
   
   String user=(String)session.getAttribute("leader");
%>

Your score is ::   <%=CalScore.getScore(user) %>
</body>
</html>