<%@page import="com.morphosis.login.userSID"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<%@page import="com.morphosis.quiz.DatabaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leaderboard</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
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
 <section class="site-section bg-dark">
 <h1 class="x2">Leaderboard</h1>
<div class="table-responsive">
<table class="table table-striped table-dark table-hover table-fit">
  <thead>
    <tr>
      <th scope="col" style="color:yellow ;font-size : 16px">Rank</th>
      <th scope="col" style="color:yellow ;font-size : 16px">Leader</th>
      <th scope="col" style="color:yellow ;font-size : 16px">Member</th>
      <th scope="col" style="color:yellow ;font-size : 16px">Member</th>
      <th scope="col" style="color:yellow ;font-size : 16px">Score</th>
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
		int temp=0;
		int rank=0;
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
			   if(temp==score)
			   {
				   
			   }
			   else{
				   temp=score;
				   rank++;
			   }
			   
			   System.out.println(name[0]);
			   System.out.println(name[1]);
			   System.out.println(name[2]);
			 //  temp=score;
		
	    %>
	    	<tr>
		    <td style="color:white ;font-size : 14px"> <%=rank %></td>
			<td style="color:white ;font-size : 14px">
			 <%=name[0] %>
			 </td>
			<td style="color:white ;font-size : 14px"><%=name[1] %></td>
			<td style="color:white ;font-size : 14px"><%=name[2] %></td>
			<td style="color:white ;font-size : 14px"><%=score %></td>
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
</div>
</section>
<jsp:include page="footer.jsp" />
</body>
</html>