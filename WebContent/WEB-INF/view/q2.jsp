<%@page import="com.morphosis.login.userSID"%>
<%@page import="com.morphosis.quiz.CalScore"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.morphosis.quiz.DatabaseConnection"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

(function (global) { 

    if(typeof (global) === "undefined") {
        throw new Error("window is undefined");
    }

    var _hash = "!";
    var noBackPlease = function () {
        global.location.href += "#";

        // making sure we have the fruit available for juice (^__^)
        global.setTimeout(function () {
            global.location.href += "!";
        }, 50);
    };

    global.onhashchange = function () {
        if (global.location.hash !== _hash) {
            global.location.hash = _hash;
        }
    };

    global.onload = function () {            
        noBackPlease();

        // disables backspace on page except on input fields and textarea..
        document.body.onkeydown = function (e) {
            var elm = e.target.nodeName.toLowerCase();
            if (e.which === 8 && (elm !== 'input' && elm  !== 'textarea')) {
                e.preventDefault();
            }
            // stopping event bubbling up the DOM tree..
            e.stopPropagation();
        };          
    }

})(window);



</script>


<% if((int)session.getAttribute("q2")==1)
    response.sendRedirect("Ended");
    
else session.setAttribute("q2", 1);
    %>


<meta charset="ISO-8859-1">
<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
<% response.setHeader("Pragma","no-cache");%> 
<% response.setHeader("Cache-Control","no-store");%> 
<% response.setDateHeader("Expires",-1);%> 
<%
   String userId = (String) session.getAttribute("leader");
   if(userId == null) {
      response.sendRedirect("login");
   }
   int SID=(int)session.getAttribute("SID");
   userSID usersid = new userSID();
   int USID= usersid.getSID(userId);
   if(USID!=SID)
   {
	   response.sendRedirect("logout");
   }
%>


<title>Question 2</title>


<script language="JavaScript" type="text/javascript">
var timeleft = 10;
var downloadTimer = setInterval(function(){
  document.getElementById("countdown").innerHTML = timeleft + " seconds remaining";
  timeleft -= 1;
  if(timeleft <= 0){
    clearInterval(downloadTimer);
    document.getElementById("countdown").innerHTML = "Finished"
  }

}
, 1000);

</script>
<div id="countdown"></div>


</head>
<body>
<h1>Question 2</h1>


<%
String answer1 = request.getParameter("answer1");
String user=(String)session.getAttribute("leader");
if(answer1!=null)
    {
	   CalScore.calScore(user,1,answer1);

	    

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
	
	ResultSet rs= s.executeQuery("select ques from options where flag=2");
	ResultSet rs2= s2.executeQuery("select A,B,C,D from options where flag=2");
	
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
<form name="options" action="q3" method="post">
  <input type="radio" name="answer2" value="<%=option_A %>" ><%=option_A %><br>
  <input type="radio" name="answer2" value="<%=option_B %>"> <%=option_B%><br>
  <input type="radio" name="answer2" value="<%=option_C %>"> <%=option_C %><br>
  <input type="radio" name="answer2" value="<%=option_D %>"> <%=option_D %><br>
  <br>

</form>

<script language="JavaScript" type="text/javascript"> 
var t = setTimeout("document.options.submit();",10000); //2 seconds measured in miliseconds
</script>

</body>
</html>