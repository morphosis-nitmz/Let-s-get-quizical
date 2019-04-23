<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">

 <%if(null!=request.getAttribute("Success"))
    {
        out.println(request.getAttribute("Success"));
    }
%>

<div class="container">

<hr>


<div class="row justify-content-center">
<div class="col-md-6">
<div class="card">
<header class="card-header">
	<a href="SignUp" class="float-right btn btn-outline-primary mt-1">SignUp</a>
	<h4 class="card-title mt-2">Login</h4>
</header>
<article class="card-body">
<form action="LoginAuth" method="post">
	<div class="form-row">
		<div class="col form-group">
			<label>Leader Enrollment Number </label>   
		  	<input type="text" name="leader" class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
	</div>
	<div class="form-row">
		<div class="col form-group">
			<label>Password </label>   
		  	<input type="text" name="password"class="form-control" placeholder="" required>
		</div> <!-- form-group end.// -->
   </div>
    <div class="form-group">
        <button type="submit" class="btn btn-primary btn-block"> Login  </button>
    </div> <!-- form-group// -->                                                
</form>
</article> <!-- card-body end .// -->
<div class="border-top card-body text-center">Don't have an account? <a href="SignUp">Sign Up</a></div>
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