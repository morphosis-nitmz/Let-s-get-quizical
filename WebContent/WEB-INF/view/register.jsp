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
		  	<input type="text" name="leader" class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Enrollment number</label>
		  	<input type="text" name="leader_enroll" class="form-control" placeholder=" " required>
		</div> <!-- form-group end.// -->
	</div> <!-- form-row end.// -->
	
	<div class="form-row">
		<div class="col form-group">
			<label>Member name </label>   
		  	<input type="text" name="member1"class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Enrollment number</label>
		  	<input type="text" name="mem_enroll1"class="form-control" placeholder=" " required>
		</div> <!-- form-group end.// -->
	</div> <!-- form-row end.// -->
	<div class="form-row">
		<div class="col form-group">
			<label>Member name </label>   
		  	<input type="text" name="member2"  class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Enrollment number</label>
		  	<input type="text" name="mem_enroll2" class="form-control" placeholder=" " required>
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

     <section class="overflow">
      <div class="container">
        <div class="row justify-content-center align-items-center">
          
          
          <div class="col-lg-7 order-lg-3 order-1 mb-lg-0 mb-5">
            <img src="resources/img/person_testimonial_1.jpg" alt="Image placeholder" class="img-md-fluid">
          </div>
          <div class="col-lg-1 order-lg-2"></div>
          <div class="col-lg-4 order-lg-1 order-2 mb-lg-0 mb-5">
            <blockquote class="testimonial">
              &ldquo; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt incidunt nihil ab cumque molestiae commodi. &rdquo;
            </blockquote>
            <p>&mdash; John Doe, Certified ReactJS Student</p>
          </div>
        </div>
      </div>
    </section>
    <!-- END section -->
    
  
    <footer class="site-footer" style="background-image: url(resources/img/big_image_3.jpg);">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-4">
            <h3>About</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi, accusantium optio unde perferendis eum illum voluptatibus dolore tempora, consequatur minus asperiores temporibus reprehenderit.</p>
          </div>
          <div class="col-md-6 ml-auto">
            <div class="row">
              <div class="col-md-4">
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Company</a></li>
                  <li><a href="#">Teachers</a></li>
                  <li><a href="#">Courses</a></li>
                  <li><a href="#">Categories</a></li>
                </ul>
              </div>
              <div class="col-md-4">
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Company</a></li>
                  <li><a href="#">Teachers</a></li>
                  <li><a href="#">Courses</a></li>
                  <li><a href="#">Categories</a></li>
                </ul>
              </div>
              <div class="col-md-4">
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Company</a></li>
                  <li><a href="#">Teachers</a></li>
                  <li><a href="#">Courses</a></li>
                  <li><a href="#">Categories</a></li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
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