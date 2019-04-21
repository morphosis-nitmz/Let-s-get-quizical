package com.morphosis.login;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.morphosis.dao.logindao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Loginauth")
public class Loginauth extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String leader = request.getParameter("leader");
		String pass = request.getParameter("password");

		logindao dao = new logindao();
		
			if(dao.check(leader, pass)) {
				
				//create cookie
				Cookie mailCookie = new Cookie("leader",leader);
				//set the life span of cookie
				mailCookie.setMaxAge(60*60*24);
				//send cookie to browser
				response.addCookie(mailCookie);
				
				HttpSession session = request.getSession();
				session.setAttribute("leader", leader);
				response.sendRedirect("afterlogin.jsp");
			}
			else {
				request.setAttribute("errorMessage", "Invalid user or password");
				//response.sendRedirect("login.jsp");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
			}
	}

}