<%@page import="com.morphosis.quiz.CalScore"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.morphosis.quiz.DatabaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%
   String userId = (String) session.getAttribute("leader");
   if(userId == null) {
      response.sendRedirect("login");
   }
%>


<title>Question 3</title>
<script language="JavaScript" type="text/javascript"> 
var t = setTimeout("document.options.submit();",10000); //2 seconds measured in miliseconds
</script>

<script language="JavaScript" type="text/javascript">
var timeleft = 10;
var downloadTimer = setInterval(function(){
  document.getElementById("countdown").innerHTML = timeleft + " seconds remaining";
  timeleft -= 1;
  if(timeleft <= 0){
    clearInterval(downloadTimer);
    document.getElementById("countdown").innerHTML = "Finished"
  }
}, 1000);
</script>
<div id="countdown"></div>

</head>
<body>
<h1>Question 3</h1>


<%
String answer2 = request.getParameter("answer2");
String user=(String)session.getAttribute("leader");

if(answer2!=null)
{
	   CalScore.calScore(user,2,answer2);

}

%>

<%
String ques="loading..";

String option_A = "loading..";
String option_B = "loading..";
String option_C = "loading..";
String option_D = "loading..";

try {
	Statement s=DatabaseConnection.getConnection();
	Statement s2=DatabaseConnection.getConnection();
	
	ResultSet rs= s.executeQuery("select ques from options where flag=3");
	ResultSet rs2= s2.executeQuery("select A,B,C,D from options where flag=3");
	
	if(rs.next())
	{
	ques=rs.getString(1);
	
	}
	
	if(rs2.next()) {
		option_A=rs2.getString("A");
		option_B=rs2.getString("B");
		option_C=rs2.getString("C");
		option_D=rs2.getString("D");

	}
	DatabaseConnection.getCloseConnection();
	
	
}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}


%>


<p><%=ques%></p>
<br></br>
<form name="options" action="score" method="post">
  <input type="radio" name="answer3" value="<%=option_A %>" ><%=option_A %><br>
  <input type="radio" name="answer3" value="<%=option_B %>"> <%=option_B%><br>
  <input type="radio" name="answer3" value="<%=option_C %>"> <%=option_C %><br>
  <input type="radio" name="answer3" value="<%=option_D %>"> <%=option_D %><br>
  <br>
  
</form>



</body>
</html>