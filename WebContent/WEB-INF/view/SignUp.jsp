<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<link href="<c:url value="/resources/css/background.css" />" rel="stylesheet">

<div class="container">

<hr>
<html>
<title> SignUp</title>
<div class="row justify-content-center">
<div class="col-md-6">
<div class="card">
<header class="card-header">
	<a href="login" class="float-right btn btn-outline-primary mt-1">Log in</a>
	<h4 class="card-title mt-2">Sign up</h4>
</header>
<article class="card-body">
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
	<div class="form-row">
		<div class="col form-group">
			<label>Member name </label>   
		  	<input type="text" name="member3" class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
		<div class="col form-group">
			<label>Enrollment number</label>
		  	<input type="text" name="mem_enroll3"class="form-control" placeholder=" " required>
		</div> <!-- form-group end.// -->
	</div> <!-- form-row end.// -->
	<div class="form-group">
		<label>Create password</label>
	    <input class="form-control" type="password" name="password" required>
	</div> <!-- form-group end.// -->  
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Register  </button>
    </div> <!-- form-group// -->      
    <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of use and Privacy Policy.</small>                                          
</form>
</article> <!-- card-body end .// -->
<div class="border-top card-body text-center">Have an account? <a href="login">Log In</a></div>
</div> <!-- card.// -->
</div> <!-- col.//-->

</div> <!-- row.//-->


</div> 
<!--container end.//-->
 <%if(null!=request.getAttribute("errorMessage"))
    {
        out.println(request.getAttribute("errorMessage"));
    }
%>
</html>