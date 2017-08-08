<%-- 
    Document   : deleteaction
    Created on : Aug 2, 2017, 4:51:16 PM
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
         userdetails u=new userdetails();
         u.setId(Integer.parseInt(request.getParameter("id")));
            if(ud.delete(u)>0);
            response.sendRedirect("index.jsp");
        
        
        %>
    </body>
</html>
