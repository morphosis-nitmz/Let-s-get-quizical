<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.SimpleTimeZone"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%
 response.setIntHeader("Refresh", 1);
 Calendar cal = Calendar.getInstance();

//Set time of calendar to 18:00
cal.set(2019, 4, 01, 22, 55, 00);
 
//Check if current time is after 18:00 today
boolean check = Calendar.getInstance().equals(cal);

if (check) {
response.sendRedirect("q1");
System.out.println(cal.getTime());
}
else {
  System.out.println("Hello!");
  System.out.println(cal.getTime());
}
		 %>
		 
</body>
</html>