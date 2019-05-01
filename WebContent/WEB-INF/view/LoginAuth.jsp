<%@page import="java.util.Random"%>
<%@page import="com.morphosis.login.userSID"%>
<%@page import="java.util.UUID"%>
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
		session.setAttribute("q1",0);
		session.setAttribute("q2",0);
		session.setAttribute("q3",0);
		Random rand = new Random();
		 int SID = rand.nextInt(10000); 
		System.out.print(SID);
		session.setAttribute("SID", SID);
		userSID usersid=new userSID();
		usersid.setSID(leader, SID);
		response.sendRedirect("ComingSoon");
	}
	else {
		request.setAttribute("errorMessage", "Invalid user or password");
		//response.sendRedirect("login.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("login2.jsp");
        rd.forward(request, response);
	}

	


%>
