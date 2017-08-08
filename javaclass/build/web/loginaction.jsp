<%-- 
    Document   : loginaction
    Created on : Aug 3, 2017, 2:18:11 PM
    Author     : DELL
--%>

<%@page import="Login.userdetails" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="ud" class="Login.userclass"/>
        <%
     userdetails u= new userdetails();
     u.setFullname(request.getParameter("name"));
     u.setDist(request.getParameter("pass"));
    // ud.login(u);
     if(ud.login(u).getFullname()!=null)
     {
          response.sendRedirect("home.jsp");
     
     }
         else
     {
      response.sendRedirect("login.jsp");
      return;
     
     }
        
        %>
        
    </body>
</html>
