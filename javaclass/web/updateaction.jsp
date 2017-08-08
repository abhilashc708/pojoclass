<%-- 
    Document   : updateaction
    Created on : Aug 2, 2017, 4:45:12 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Login.userdetails" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="ud" class="Login.userclass"/>
        <%
         userdetails u=new userdetails();
         u.setId(Integer.parseInt(request.getParameter("id")));
         u.setFullname(request.getParameter("name"));
          u.setAddress(request.getParameter("address"));
         u.setDist(request.getParameter("dist"));
           if(ud.update(u)>0)
               response.sendRedirect("update.jsp");
        
        
        %>
    </body>
</html>
