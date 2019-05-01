<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Coming Soon 2</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value="/resources/comingSoon/ images/icons/favicon.ico" /> "/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/comingSoon/vendor/bootstrap/css/bootstrap.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/comingSoon/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/comingSoon/vendor/animate/animate.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/comingSoon/vendor/select2/select2.min.css" />">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/comingSoon/css/util.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/resources/comingSoon/css/main.css" />">
<!--===============================================================================================-->
</head>
<jsp:include page="header.jsp" />

<body>
	
	<!--  -->
	<div class="simpleslide100">
		<div class="simpleslide100-item bg-img1" style="background-image: url('resources/comingSoon/images/bg01.jpg');"></div>
		<div class="simpleslide100-item bg-img1" style="background-image: url('resources/comingSoon/images/bg02.jpg');"></div>
		<div class="simpleslide100-item bg-img1" style="background-image: url('resources/comingSoon/images/bg03.jpg');"></div>
	</div>

	<div class="size1 overlay1">
		<!--  -->
		<div class="size1 flex-col-c-m p-l-15 p-r-15 p-t-50 p-b-50">
			<h3 class="l1-txt1 txt-center p-b-25">
				Coming Soon
			</h3>

			<div class="flex-w flex-c-m cd100 p-b-33">
				<div class="flex-col-c-m size2 bor1 m-l-15 m-r-15 m-b-20">
					<span class="l2-txt1 p-b-9 days">35</span>
					<span class="s2-txt1">Days</span>
				</div>

				<div class="flex-col-c-m size2 bor1 m-l-15 m-r-15 m-b-20">
					<span class="l2-txt1 p-b-9 hours">17</span>
					<span class="s2-txt1">Hours</span>
				</div>

				<div class="flex-col-c-m size2 bor1 m-l-15 m-r-15 m-b-20">
					<span class="l2-txt1 p-b-9 minutes">50</span>
					<span class="s2-txt1">Minutes</span>
				</div>

				<div class="flex-col-c-m size2 bor1 m-l-15 m-r-15 m-b-20">
					<span class="l2-txt1 p-b-9 seconds">39</span>
					<span class="s2-txt1">Seconds</span>
				</div>
			</div>

			<form class="w-full flex-w flex-c-m validate-form">

				<div class="wrap-input100 validate-input where1" data-validate = "Valid email is required: ex@abc.xyz">
					<input class="input100 placeholder0 s2-txt2" type="text" name="email" placeholder="Enter Email Address">
					<span class="focus-input100"></span>
				</div>
				
				
				<button class="flex-c-m size3 s2-txt3 how-btn1 trans-04 where1">
					Subscribe
				</button>
			</form>
		</div>
	</div>



	

<!--===============================================================================================-->	
	<script src="<c:url value="/resources/comingSoon/vendor/jquery/jquery-3.2.1.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/comingSoon/vendor/bootstrap/js/popper.js" />"></script>
	<script src="<c:url value="/resources/comingSoon/vendor/bootstrap/js/bootstrap.min.js" />"></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/comingSoon/vendor/select2/select2.min.js" /> "></script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/comingSoon/vendor/countdowntime/moment.min.js" /> "></script>
	<script src="<c:url value="/resources/comingSoon/vendor/countdowntime/moment-timezone.min.js" /> "></script>
	<script src="<c:url value="/resources/comingSoon/vendor/countdowntime/moment-timezone-with-data.min.js" />"></script>
	<script src="<c:url value="/resources/comingSoon/vendor/countdowntime/countdowntime.js" />"></script>
	<script>
		$('.cd100').countdown100({
			/*Set Endtime here*/
			/*Endtime must be > current time*/
			endtimeYear: 2019,
			endtimeMonth: 05,
			endtimeDate: 02,
			endtimeHours: 0,
			endtimeMinutes: 51,
			endtimeSeconds: 0,
			timeZone: "Asia/Kolkata" 
			// ex:  timeZone: "America/New_York"
			//go to " http://momentjs.com/timezone/ " to get timezone
		});
	</script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/comingSoon/vendor/tilt/tilt.jquery.min.js" /> "></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="<c:url value="/resources/comingSoon/js/main.js" />"></script>

</body>
</html>