<%@page import="java.sql.ResultSet"%>
<%@page import="com.morphosis.quiz.DatabaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.morphosis.quiz.getTeam"%>

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
      <link rel="stylesheet" href="<c:url value="/resources/css/leaderboard-style.css" />">
    <!-- Theme Style -->
    <link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
  </head>
  <body>
   <%if(null!=request.getAttribute("Success"))
    {
        out.println(request.getAttribute("Success"));
    }
%>
   
   <jsp:include page="header.jsp" />
 
    <section class="site-section bg-dark">
     <h1> <span class="yellow">LEADERBOARD</span></h1>
      <table class="container">
	<thead>
		<tr>
			<th><h1>Rank</h1></th>
			<th><h1>Leader</h1></th>
			<th><h1>Member</h1></th>
			<th><h1>Member</h1></th>
			<th><h1>Score</h1></th>

		</tr>
	</thead>
	<tbody>
	
	<%  Statement s5,s6,s7,s8;
	 String[] name= new String[5];
	 int count=0,score=0;
	try {
	
	   int[] id= new int[1000];
	   
		s5 = DatabaseConnection.getConnection();
		
		s7=DatabaseConnection.getConnection();
		s8=DatabaseConnection.getConnection();
		//ResultSet rs5= s5.executeQuery("select id from login where ="+i);
		ResultSet rs6= s5.executeQuery("select id from login order by score desc");
		
		//java.sql.ResultSetMetaData rsmd = rs6.getMetaData();
		//int numberOfColumns = rsmd.getColumnCount();
		
		while (rs6.next()) {
       ++count;
    // Get data from the current row and use it
}
		ResultSet rs7= s7.executeQuery("select id from login order by score desc");

		int p=0;
		while(rs7.next())
		{     id[p]=rs7.getInt("id");
		     p++;
		}
		System.out.println(id[0]);
		
		System.out.println(id[1]);
		System.out.println(id[2]);
		System.out.println(p);

		for(int i=0;i<count;i++)
		{  
			int j=0;
			System.out.println(i);
		     System.out.println(id[i]);
			   s6=DatabaseConnection.getConnection();
			   ResultSet rs5= s6.executeQuery("select name from registration where id="+id[i]);
			   ResultSet rs8= s8.executeQuery("select score from login where id="+id[i]);
			   while((rs5.next()) && j<3)
			   {
				   name[j]=rs5.getString("name");
				   j++;
				   

			   }
			   while((rs8.next()))
			   {
				   score=rs8.getInt("score");
				   
			   }
			   System.out.println(name[0]);
			   System.out.println(name[1]);
			   System.out.println(name[2]);
			   
		
	    %>
	    	<tr>
		    <td> <%=i+1 %></td>
			<td>
			 <%=name[0] %>
			 </td>
			<td><%=name[1] %></td>
			<td><%=name[2] %></td>
			<td><%=score %></td>
		</tr>
		
		    <%
		}
	//	System.out.println(numberOfColumns);
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	%>
	
	</tbody>
</table>
    </section>
	    
	
	

  
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