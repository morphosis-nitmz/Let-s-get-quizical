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
  
  <%
   String userId= (String)session.getAttribute("leader");
   if(session.getAttribute("leader")== null) {
	   System.out.println(userId);
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
              <% //String userId = (String) session.getAttribute("leader");
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

   <section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(resources/img/smart-kids.jpg);">
      <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
          <div class="col-md-8 text-center">

            <div class="mb-5 element-animate">
              <h1>Let's get Quizzical</h1>
              <p class="lead">Let's get quizzical in the season to answer questions, swaggering and recalling.</p>
              <p><a href="ComingSoon" class="btn btn-primary">Start the Quiz!</a></p>
            </div>

            
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->


  
     <jsp:include page="footer.jsp" />
    <!-- END footer -->
    
    <!-- loader -->
    <div id="loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/></svg></div>

    <script src="<c:url value="/resources/js/website/jquery-3.2.1.min.js" />" ></script>
    <script src="<c:url value="/resources/js/website/jquery-migrate-3.0.0.js" /> "></script>
    <script src="<c:url value="/resources/js/website/popper.min.js" /> "></script>
    <script src="<c:url value="/resources/js/website/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/website/owl.carousel.min.js" />"></script>
    <script src="<c:url value="/resources/js/website/jquery.waypoints.min.js" />"></script>
    <script src="<c:url value="/resources/js/website/jquery.stellar.min.js" />"></script>

    
    <script src="<c:url value="/resources/js/website/main.js" />"></script>
  </body>
    </html>