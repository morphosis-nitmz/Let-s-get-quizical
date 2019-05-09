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
    
        <style type="text/css">
    .rules-body{
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 18px;
  
    line-height: 1.42857143;
    color: #f8f9fa;
    }
    p.x1{margin-left: 5%;
    margin-right: 5%;
    color : red;
    }
    h1.x2{
      font-size:3em; 
  font-weight: 300;
  line-height:1em;
  text-align: center;
  color: #4DC3FA;
    }
    </style>
  </head>
  <body>
  
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
  
   <%if(null!=request.getAttribute("Success"))
    {
        out.println(request.getAttribute("Success"));
    }
%>
  
   <jsp:include page="header.jsp" />
    <section class="site-hero site-hero-innerpage overlay" data-stellar-background-ratio="0.5" style="background-image: url(resources/img/rules2.jpg);">
      <div class="container">
      
      </div>
    </section>
    <!-- END section -->
    
     <section class="site-section bg-dark">
     <h1 class="x2">Rules</h1>
        <br>
        <span class="rules-body">
        <ol>
        <li><p> Correct enrollment number should be used during registration.</p></li>
        <br>
        <li><p> Once a team is Registered, its members cannot register with other team and the team members can't be changed once registered.</p></li>
       <br>
        <li>Each team consists of three participants. The enrollment number of the leader will be used for login.</li>
        <br>
        <li>There will be 15 Questions and 10 seconds will be given to answer each question. Each question carry 5 marks and no negative marking.</li>
        <br>
        <li>Once the quiz goes live ,the user is not allowed to refresh the page or go back to previous question. Refreshing the page will logout the user and user cannot answer further questions.</li>
        <br>
        <li> Since this is a live online game, Good internet speed is required. It is the responsibility of the participant for arranging the same. The morphosis team will not be responsible for any inconveniences due to internet failure.</li>
        <br>
        </ol>
        <p class="x1">Disclaimer: Though we have tried our best to avoid any unfortunate circumstances, but if in case any discrepancies occur and we are unable to resume the game then the player who was holding the top position on the leaderboard at the time of that event will be declared as the winner. The morphosis team will not be responsible for any inconveniences whatsoever.</p>
        </span>
        </section>
        
        <jsp:include page="footer.jsp" />
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
    
    
     <%if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%>
  </body>
</html>