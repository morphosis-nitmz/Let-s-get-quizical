<%@page import="com.morphosis.dao.logindao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%


String leader = request.getParameter("leader");
String pass = request.getParameter("password");
System.out.println(leader);
System.out.println(pass);
logindao dao = new logindao();

	if(dao.check(leader, pass)) {
		
		System.out.println("correct");
		//create cookie
		Cookie mailCookie = new Cookie("leader",leader);
		//set the life span of cookie
		mailCookie.setMaxAge(60*60*24);
		//send cookie to browser
		response.addCookie(mailCookie);
		
		HttpSession sessHttpSession = request.getSession();
		session.setAttribute("leader", leader);
		response.sendRedirect("q1");
	}
	else {
		request.setAttribute("errorMessage", "Invalid user or password");
		//response.sendRedirect("login.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
        rd.forward(request, response);
	}



%>
