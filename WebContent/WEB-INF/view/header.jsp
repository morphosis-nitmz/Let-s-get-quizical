<%@page import="com.morphosis.login.userSID"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Let's get Quizzical</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,900" rel="stylesheet">

    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/animate.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.min.css" />">

    <link rel="stylesheet" href="<c:url value="/resources/fonts/ionicons/css/ionicons.min.css" /> ">
    <link rel="stylesheet" href="<c:url value="/resources/fonts/fontawesome/css/font-awesome.min.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/fonts/flaticon/font/flaticon.css" />" >

    <!-- Theme Style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">

    
  </head>
  <body>
    
    <header role="banner">
     
      <nav class="navbar navbar-expand-md navbar-dark bg-light">
        <div class="container">
          <a class="navbar-brand absolute" href="${pageContext.request.contextPath}/">Let's Get Quizzical</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse navbar-light" id="navbarsExample05">
            <ul class="navbar-nav mx-auto">
              <li class="nav-item">
                <a class="nav-link active" href="${pageContext.request.contextPath}/">Home</a>
              </li>

              <li class="nav-item">
                <a class="nav-link" href="rules">Rules</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="leaderboard">Leaderboard</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="https://www.morphosis.org.in/Our-Team.html">About us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="contact">Contact</a>
              </li>
            </ul>
            <ul class="navbar-nav absolute-right">
              <li class="nav-item">
              <% String userId = (String) session.getAttribute("leader");
              if(userId == null){%>
                <a href="login2" class="nav-link"> Login </a>
                <%}
              else { %> <a href="#" class="nav-link"> <%= userId %> </a> <%
               } %>
        
              </li>
              <li class="nav-item">
             <% if(userId == null){%>
                <a href="register" class="nav-link">Register</a>
                <% } 
             else { %> <a href="logout" class="nav-link">Logout</a> <% }
            	 %>
                
              </li>
            </ul>
            
          </div>
        </div>
      </nav>
    </header>
    <!-- END header -->