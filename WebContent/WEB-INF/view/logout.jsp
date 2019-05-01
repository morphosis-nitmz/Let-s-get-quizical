<%response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");%>
<% response.setHeader("Pragma","no-cache");%> 
<% response.setHeader("Cache-Control","no-store");%> 
<% response.setDateHeader("Expires",-1);%> 



  <%

            session.invalidate();
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/"));
        %>

        