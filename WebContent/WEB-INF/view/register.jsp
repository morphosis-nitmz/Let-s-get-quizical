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
    <%if(null!=request.getAttribute("PassError"))
    {
        out.println(request.getAttribute("PassError"));
    }
%>

   
         <%if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%>
   <jsp:include page="header.jsp" />
   
    <section class="site-hero site-hero-innerpage overlay" data-stellar-background-ratio="0.5" style="background-image: url(resources/img/big_image_1.jpg);">
      <div class="container">
        <div class="row align-items-center site-hero-inner justify-content-center">
          <div class="col-md-8 text-center">

            <div class="mb-5 element-animate">
              <h1>Register</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->


    <section class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-5 box">
            <h4 class="mb-5">Register new account </h2>
           
            <form action="after_reg" method="post">
	<div class="form-row">
		<div class="col form-group">
			<label>Leader name </label>   
		  	<input type="text" pattern="^[a-zA-Z ]+$" name="leader" class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Enrollment number</label>
		  	<input type="text" pattern="[a-zA-Z0-9]+" name="leader_enroll" class="form-control" placeholder=" " required>
		</div> <!-- form-group end.// -->
	</div> <!-- form-row end.// -->
	
	<div class="form-row">
		<div class="col form-group">
			<label>Member name </label>   
		  	<input type="text" pattern="^[a-zA-Z ]+$" name="member1"class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Enrollment number</label>
		  	<input type="text" pattern="[a-zA-Z0-9]+" name="mem_enroll1"class="form-control" placeholder=" " required>
		</div> <!-- form-group end.// -->
	</div> <!-- form-row end.// -->
	<div class="form-row">
		<div class="col form-group">
			<label>Member name </label>   
		  	<input type="text" pattern="^[a-zA-Z ]+$" name="member2"  class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Enrollment number</label>
		  	<input type="text" pattern="[a-zA-Z0-9]+" name="mem_enroll2" class="form-control" placeholder=" " required>
		</div> <!-- form-group end.// -->
	</div> <!-- form-row end.// -->
	<div class="form-group">
		<label>Create password</label>
	    <input class="form-control" type="password" name="password" required>
	</div> <!-- form-group end.// -->  
	<div class="form-group">
		<label>Confirm password</label>
	    <input class="form-control" type="password" name="ConfPass" required>
	</div> <!-- form-group end.// -->
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Register  </button>
    </div> <!-- form-group// -->      
    <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of use and Privacy Policy.</small>                                          
</form>      
<div class="border-top card-body text-center">Have an account? <a href="login2">Log In</a></div>
          </div>
        </div>
      </div>
    </section>
 
    <!-- END section -->

  
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
    

  </body>
</html>