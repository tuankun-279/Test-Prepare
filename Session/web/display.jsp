<%-- 
    Document   : display
    Created on : Dec 2, 2021, 7:11:56 PM
    Author     : Loki Kun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
   Cookie[] cks=request.getCookies();
   for(Cookie ck:cks)
   {
      String cookieName=ck.getName();
      String cookieValue= ck.getValue();;
       if(cookieName.equals("firstName" ) || cookieName.equals("lastName" ) || cookieName.equals("password")){
           %>
           <b><%=cookieName %> </b><br>
    
            <b><%=cookieValue %> </b><br>
            <%
       }
      %>
      
      <%
   }
%>
    </body>
</html>
